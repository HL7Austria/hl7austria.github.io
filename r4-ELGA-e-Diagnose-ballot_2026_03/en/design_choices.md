# Designentscheidungen - ELGA e-Diagnose R4 v0.1.0

## Designentscheidungen

### Kein Update auf einzelne Einträge

Einträge (`Condition`, `Procedure`, `AllergyIntolerance`) werden ausschließlich per `POST` angelegt und können von Client-Anwendungen nicht per `PUT` verändert werden. Jeder Eintrag ist damit eine eigenständige Ressource ohne inhaltliche Versionen.

Hintergrund ist die Versionierung der Summary-Liste: Jede Listenversion soll genau die Einträge zeigen, die zum jeweiligen Zeitpunkt eingetragen waren. Wären Einträge veränderbar, ließe sich das nur über versionierte Referenzen in `List.entry.item` sicherstellen. Diese wollte man für die e-Diagnose vermeiden, weil die Komplexität der Anwendung höher gewesen wäre. Stattdessen wird bei einer inhaltlichen Korrektur ein neuer Eintrag angelegt und die Summary-Liste aktualisiert.

Um trotzdem eine Verknüpfung zwischen Einträgen herstellen zu können, kann der Business Identifier (siehe z. B. bei der [Condition.identifier:businessIdentifier](StructureDefinition-at-elga-ediag-condition-definitions.md#Condition.identifier:businessIdentifier)) von Einträgen verwendet werden. Ein Client kann diesen Identifier nutzen, um einzelne Einträge im Zuge einer Bearbeitung miteinander zu verknüpfen. Sollte dieser Identifier durch den Client nicht gesetzt werden, wird er von der Fachanwendung e-Diagnose vergeben.

Davon unberührt sind die Operationen [`$entered-in-error`](OperationDefinition-at-ediag-operation-entry-entered-in-error.md) und [`$delete`](OperationDefinition-at-ediag-operation-entry-delete.md). Bei einer Stornierung ergänzt die e-Diagnose-Fachanwendung lediglich die Angaben zur Stornierung (GDA, Zeitpunkt, Grund); alle weiteren Informationen des Eintrags bleiben unverändert. Bei einer Löschung durch den ELGA-Teilnehmer wird der Eintrag als Ganzes entfernt.

### Informationen über GDA und Patienten

Stammdaten zu Gesundheitsdiensteanbietern (GDA) und Patienten werden ausschließlich von der e-Diagnose-Fachanwendung, bzw. von den darüberliegenden zentralen Registern, verwaltet. Client-Anwendungen dürfen daher keine eigenen `Patient`-, `Practitioner`-, `PractitionerRole`- oder `Organization`-Ressourcen übermitteln. Es genügt, diese über ihren Identifier als logische Referenz (`Reference.identifier`) anzugeben:

* **GDA:** OID des GDA laut GDA-Index (GDA-I)
* **Patient:** bereichsspezifisches Personenkennzeichen Gesundheit (bPK-GH)

Die e-Diagnose-Fachanwendung löst diese Identifier gegen den GDA-I bzw. den Zentralen Patientenindex (ZPI) auf. Bei Bedarf legt sie die zugehörigen Ressourcen an und ergänzt die logischen Referenzen um Referenzen auf diese Ressourcen (`Reference.reference`). Die übermittelten logischen Referenzen (`Reference.identifier`) dürfen dabei nicht ersetzt werden, sondern bleiben unverändert erhalten. Beim Abruf von Daten enthalten die Ressourcen daher sowohl die logischen als auch die aufgelösten Referenzen; die referenzierten Ressourcen können über die Fachanwendung nur mittels `_include` abgerufen werden (siehe [Verwendung von _include](#verwendung-von-_include)).

Bei Referenzen, die auf mehrere Ressourcentypen verweisen können (z. B. `recorder`, `asserter` oder `List.source`), ergibt sich aus dem jewiligen `Reference.identifer.system`, ob es sich um eine OID oder ein bPK-GH handelt. Die e-Diagnose-Fachanwendung kann daraus den Identifier eindeutig zuordnen. Verweise auf Einträge (`List.entry.item`) sind hingegen immer Referenzen auf bereits in der e-Diagnose-Fachanwendung gespeicherte Ressourcen (`Reference.reference`).

Aktuell wird in einer AG des TC FHIR daran gearbeitet, wie die e-Diagnose-Fachanwendung die Informationen aus dem GDA-I auf Basis einer OID auf die `Practitioner`-, `PractitionerRole`- und/oder `Organization`-Ressourcen umlegen kann. Die Ergebnisse dieser AG werden in die Implementierung der e-Diagnose-Fachanwendung einfließen.

Das folgende Beispiel zeigt denselben Eintrag einmal als übermittelte und einmal als gespeicherte Ressource:

* : **Beispieldateien**
  * Request: [AllergyEntry01Request](AllergyIntolerance-AllergyEntry01Request.md)
  * Gespeichert: [AllergyEntry01](AllergyIntolerance-AllergyEntry01.md)
* : **Beispielfragmente**
  * Request: 
  * Gespeichert: 

**Konvention für die Beispiele:** Beispiele mit dem Suffix `Request` (z. B. [ConditionEntry01Request](Condition-ConditionEntry01Request.md), [AllergyEntry01Request](AllergyIntolerance-AllergyEntry01Request.md), [ProcedureEntry01Request](Procedure-ProcedureEntry01Request.md) sowie die in den `$write`-Parametern übermittelten Summary-Listen) zeigen die Ressource so, wie sie die Client-Anwendung übermittelt, also mit logischen Referenzen. Alle anderen Beispiele zeigen die Ressource so, wie sie die e-Diagnose-Fachanwendung speichert und zurückliefert, also mit aufgelösten Referenzen. Für die übrigen Einträge der [Patient Journey](patient_journey.md) gilt dasselbe Muster; auf eigene Request-Beispiele wird verzichtet.

### Abgrenzung der e-Diagnose-Fachanwendungen zu Client-Applikationen

Die e-Diagnose-Fachanwendung bietet ein Mindestmaß an Funktionalität, um den Anforderungen gerecht zu werden. Darüber hinaus liegt es aber in der Verantwortung der Softwarehersteller für Client-Applikationen weitere Funktionen zu implementieren.

Mögliche Funktionen umfassen beispielsweise

* die Suche nach bestimmten Einträgen auf Basis des dokumentierten Codes;
* die Einschränkung der Suche auf einen bestimmten Zeitraum;
* die Filterung von Einträgen nach dem `recorder`;
* die Sortierung nach anderen Kriterien;
* etc.

### Patientenkontext

Für alle Transaktionen wird vorausgesetzt, dass entsprechend der [FHIR RESTful API](https://hl7.org/fhir/R4/http.html) ein `[base]` bekannt ist und für alle Interaktionen verwendet werden kann.

Die Umsetzung des Patientenkontakts in den Transaktionen ist nicht Teil des Ballots. Der konkrete Zugriff wird in der Lösungsarchitektur beschrieben.

In diesem IG werden daher alle Requests ab dem `/[type]` dargestellt.

### MustSupport-Kennzeichnung von relevanten Elementen

Relevanten Elemente innerhalb der Profile werden mit [MustSupport](https://hl7.org/fhir/R4/conformance-rules.html#mustSupport) gekennzeichnet.

Alle so gekennzeichneten Elemente werden von der e-Diagnose-Fachanwendung verarbeitet.

#### Elemente ohne MustSupport-Kennzeichnung

Grundsätzlich werden alle [Modifier](https://hl7.org/fhir/R4/conformance-rules.html#isModifier)-Elemente, die von der e-Diagnose-Fachanwendung nicht benötigt werden, verboten (`0..0`).

Für alle anderen Elemente gilt folgendes:

* Ist ein Element optional (`0..1`, `0..*`) und ist es nicht durch MustSupport gekennzeichnet, wird es von der e-Diagnose-Fachanwendung ignoriert und nicht weiter verarbeitet.
* Ist ein Element verboten (`0..0`), darf es nicht befüllt werden.

### Verwendung von _include

Die e-Diagnose-Fachanwendung hat nur für die folgenden Ressourcen Endpunkte freigeschaltet:

* `/List`
* `/Condition`
* `/Procedure`
* `/AllergyIntolerance`

Alle Informationen, die sich auf `Patient`, `Practitioner`, `PractitionerRole`, `Organization`, `Device` beziehen, müssen über den Suchergebnisparameter [`_include`](https://hl7.org/fhir/R4/search.html#include) aufgelöst werden.

#### Summary-Liste

Für die [listenbezogenen Anwendungsfälle](use_cases.md) werden an dieser Stelle Beispiele genannt, wie `_include` verwendet werden kann, um mit einem Request mehr als nur die Summary-Liste abrufen zu können. Dabei können die einzelnen Beispiele in einem Abruf auch aneinander gereiht werden (z. B. `&_include=List:patient&_include=List:item`).

Basis bildet dabei `[base]/List?code=[code]`

* `&_include=List:item`: Das resultierende SearchSet-Bundle enthält neben der List-Ressource auch noch die referenzierten Einträge (z. B. Condition-Ressourcen).
* `&_include=List:patient`: Das resultierende SearchSet-Bundle enthält neben der List-Ressource auch noch den referenzierten Patienten.
* `&_include=List:source`: Das resultierende SearchSet-Bundle enthält neben der List-Ressource auch noch die Person oder das Device, das die Summary-Liste erstellt hat.
* `&_include:iterate=[Suchparameter einer referenzierten Ressource]`: Man kann iterativ weitere referenzierte Ressourcen auflösen. Dabei muss man sich deren Suchparameter bedienen. Will man also zusätzlich zu den Condition-Ressourcen auch den `Condition.asserter` auflösen, muss man `&_include:iterate=Condition:asserter` angeben.

#### Einzelne Einträge

Für die [eintragsbezogenen Anwendungsfälle](use_cases.md) werden an dieser Stelle Beispiele genannt, wie `_include` im Zusammenhang mit den jeweiligen Ressourcen verwendet werden kann. Dabei können die einzelnen Beispiel in einem Abruf auch aneinander gereiht werden (z.B. `&_include=Condition:patient&_include=Condition:evidence-detail`).

Basis bildet dabei jeweils `[base]/[Condition|Procedure|AllergyIntolerance]?_id=[id]`

| | | | |
| :--- | :--- | :--- | :--- |
| `.patient` | `&_include=Condition:patient` | `&_include=Procedure:patient` | `&_include=AllergyIntolerance:patient` |
| `.recorder` | `&_include=Condition:recorder` | `&_include=Procedure:recorder` | `&_include=AllergyIntolerance:recorder` |
| `.asserter` | `&_include=Condition:asserter` | `&_include=Procedure:asserter` | `&_include=AllergyIntolerance:asserter` |
| `.evidence.detail` | `&_include=Condition:evidence-detail` | nicht zutreffend | nicht zutreffend |
| `.report` | nicht zutreffend | `&_include=Procedure:report` | nicht zutreffend |
| `.extension:evidence` | nicht zutreffend | nicht zutreffend | `&_include=AllergyIntolerance:evidence` |

### Angabe von Bezugspersonen (asserter)

Als Quelle der Information zu Einträgen (asserter), z. B. Patient, behandelnde Person oder Dritter kann neben GDA oder dem Patienten auch eine Bezugsperson ([RelatedPerson-Profil](StructureDefinition-at-elga-ediag-relatedperson.md)) angegeben werden.

Diese Informationen sind als `contained` Ressourcen in den Ressourcen für die Einträge anzugeben (siehe [Beispiel](Condition-ConditionEntryContainedRelatedPerson.md)).

### Nebenläufigkeit (Optimistic Locking)

Damit zwei unterschiedliche Clients nicht zur gleichen Zeit schreibend auf die e-Diagnose-Fachanwendung zugreifen können, wird auf das Konzept des [Optimistic Lockings](https://hl7.org/fhir/R4/http.html#concurrency) zurückgegriffen.

Für die e-Diagnose-Fachanwendung bedeutet das, dass beim [Abruf einer aktuellen Summary-Liste](use_case_read.md#aktuelle-summary-liste-abrufen) die List-Ressource im SearchSet-Bundle auch die aktuelle `List.meta.versionId` enthält. Diese wird von der e-Diagnose-Fachanwendung verwaltet. Beim Ausführen der [`$write`-Operation](use_case_write.md#summary-liste-aktualisieren-write) muss der Wert von `List.meta.versionId` als `If-Match`-Header mitgeschickt werden. Die e-Diagnose-Fachanwendung prüft in der Folge, ob der Wert des `If-Match`-Headers mit der gespeicherten `List.meta.versionId` der zu aktualisierenden Summary-Liste übereinstimmt. Nur im Falle einer Übereinstimmung wird die Summary-Liste am Server aktualisiert und die `List.meta.versionId` erhält einen neuen Wert.

