# Designentscheidungen - ELGA e-Diagnose R4 (Draft) v0.1.0

## Designentscheidungen

### Kein Update auf einzelne Einträge

Einträge (`Condition`, `Procedure`, `AllergyIntolerance`) werden ausschließlich per `POST` angelegt und können von Client-Anwendungen nicht per `PUT` verändert werden. Jeder Eintrag ist damit eine eigenständige Ressource ohne inhaltliche Versionen.

Hintergrund ist die Versionierung der Summary-Liste: Jede Listenversion soll genau die Einträge zeigen, die zum jeweiligen Zeitpunkt eingetragen waren. Wären Einträge veränderbar, ließe sich das nur über versionierte Referenzen in `List.entry.item` sicherstellen. Diese wollte man für die e-Diagnose vermeiden, weil die Komplexität der Anwendung höher gewesen wäre. Stattdessen wird bei einer inhaltlichen Korrektur ein neuer Eintrag angelegt und die Summary-Liste aktualisiert.

Davon unberührt sind die Operationen [`$entered-in-error`](OperationDefinition-at-ediag-operation-diagnose-entered-in-error.md) und [`$delete`](OperationDefinition-at-ediag-operation-diagnose-delete.md). Bei einer Stornierung ergänzt die e-Diagnose-Fachanwendung lediglich die Angaben zur Stornierung (GDA, Zeitpunkt, Grund); alle weiteren Informationen des Eintrags bleiben unverändert. Bei einer Löschung durch den ELGA-Teilnehmer wird der Eintrag als Ganzes entfernt.

### Informationen über GDA und Patienten

Stammdaten zu Gesundheitsdiensteanbietern (GDA) und Patienten werden ausschließlich von der e-Diagnose-Fachanwendung, bzw. von den darüberliegenden zentralen Registern, verwaltet. Client-Anwendungen dürfen daher keine eigenen `Patient`-, `Practitioner`-, `PractitionerRole`- oder `Organization`-Ressourcen übermitteln. Es genügt, diese über ihren Identifier als logische Referenz (`Reference.identifier`) anzugeben:

* **GDA:** OID des GDA laut GDA-Index (GDA-I)
* **Patient:** bereichsspezifisches Personenkennzeichen Gesundheit (bPK-GH)

Die e-Diagnose-Fachanwendung löst diese Identifier gegen den GDA-I bzw. den Zentralen Patientenindex (ZPI) auf. Bei Bedarf legt sie die zugehörigen Ressourcen an und ersetzt die logischen Referenzen durch Referenzen auf diese Ressourcen. Beim Abruf von Daten enthalten die Ressourcen daher die aufgelösten Referenzen; die referenzierten Ressourcen können über die Fachanwendung abgerufen werden.

Bei Referenzen, die auf mehrere Ressourcentypen verweisen können (z. B. `recorder`, `asserter` oder `List.source`), ergibt sich aus dem jewiligen `Reference.identifer.system`, ob es sich um eine OID oder ein bPK-GH handelt. Die e-Diagnose-Fachanwendung kann daraus den Identifier eindeutig zuordnen. Verweise auf Einträge (`List.entry.item`) sind hingegen immer Referenzen auf bereits in der e-Diagnose-Fachanwendung gespeicherte Ressourcen (`Reference.reference`).

Aktuell wird in einer AG des TC FHIR daran gearbeitet, wie die e-Diagnose-Fachanwendung die Informationen aus dem GDA-I auf Basis einer OID auf die `Practitioner`-, `PractitionerRole`- und/oder `Organization`-Ressourcen umlegen kann. Die Ergebnisse dieser AG werden in die Implementierung der e-Diagnose-Fachanwendung einfließen.

| | | |
| :--- | :--- | :--- |
| Referenz | logisch (`Reference.identifier`) | aufgelöst (`Reference.reference`) |
| Patient | `subject.identifier.system`=`urn:oid:1.2.40.0.10.2.1.1.149``subject.identifier.value`= bPK-GH | `subject.reference`=`Patient/PatientExample` |
| GDA | `recorder.identifier.system`=`urn:ietf:rfc:3986``recorder.identifier.value`= OID laut GDA-I | `recorder.reference`=`Practitioner/PractitionerExample` |

Das folgende Beispiel zeigt denselben Eintrag einmal als übermittelte und einmal als gespeicherte Ressource:

* Request:[AllergyEntry01Request](AllergyIntolerance-AllergyEntry01Request.md): 
  * Gespeichert:[AllergyEntry01](AllergyIntolerance-AllergyEntry01.md): 

**Konvention für die Beispiele:** Beispiele mit dem Suffix `Request` (z. B. [ConditionEntry01Request](Condition-ConditionEntry01Request.md), [AllergyEntry01Request](AllergyIntolerance-AllergyEntry01Request.md), [ProcedureEntry01Request](Procedure-ProcedureEntry01Request.md) sowie die in den `$write`-Parametern übermittelten Summary-Listen) zeigen die Ressource so, wie sie die Client-Anwendung übermittelt, also mit logischen Referenzen. Alle anderen Beispiele zeigen die Ressource so, wie sie die e-Diagnose-Fachanwendung speichert und zurückliefert, also mit aufgelösten Referenzen. Für die übrigen Einträge der [Patient Journey](patient_journey.md) gilt dasselbe Muster; auf eigene Request-Beispiele wird verzichtet.

### Abgrenzung der e-Diagnose-Fachanwendungen zu Client-Applikationen

Die e-Diagnose-Fachanwendung bietet ein Mindestmaß an Funktionalität, um den Anforderungen gerecht zu werden. Darüber hinaus liegt es aber in der Verantwortung der Softwarehersteller für Client-Applikationen weiter Funktionen (z.B. Suche nach bestimmten Diagnosen auf Basis vom Code, Einschränkung auf einen bestimmten Zeitraum) zu implementieren.

