# HL7.AT.FHIR.ELGA.EMED.R4\Zugriffsarten auf den Medikationsplan - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* **Zugriffsarten auf den Medikationsplan**

## Zugriffsarten auf den Medikationsplan

Im Folgenden werden standardisierte Interaktionen für den lesenden und schreibenden Zugriff auf den Medikationsplan eines Patienten bzw. einer Patientin erläutert, die für alle technischen Use Cases relevant sind.

### Read-only-Zugriff

Beim Read-only-Zugriff stellt die Fachanwendung **die aktuelle oder historische Versionen** des Medikationsplans (persistierte Collection Bundles inkl. aller referenzierten Ressourcen) **unverändert** bereit.

#### Ablauf

1. Der GDA führt ein**GET**auf das Collection Bundle aus, das den Medikationsplan mit allen zugehörigen relevanten Ressourcen enthält.
1. Die Fachanwendung prüft, ob ein Medikationsplan für den/die Patient:in existiert.
1. Ist**kein Medikationsplan vorhanden**, wird ein**leeres Ergebnis**zurückgegeben.
1. Ist ein Medikationsplan vorhanden, wird das zuletzt gespeicherte Collection Bundle zurückgeliefert.
Das**Collection Bundle**enthält:

* die List-Ressource des Medikationsplans 

* alle referenzierten Ressourcen (z. B. MedicationRequest, Patient, Practitioner) vollständig (inline)

Beim Read-only-Zugriff erfolgt **keine Veränderung** von Flags, Status oder Inhalten durch die Fachanwendung.
 Der Zugriff dient ausschließlich der Anzeige bzw. Informationsabfrage von aktuellen bzw. historischen Planversionen.

#### Sequenzdiagramm Read-only-Zugriff

**Beispiele für Zugriffe mittels Suchparameter:**

* **Aktuelle Planversion** mit dem Suchparameter Patient abrufen: GET [base]/Bundle?type=collection&_count=1&_sort=-timestamp&list.subject={bPK-GH}
* **Alle Planversionen** mit dem Suchparameter Patient abrufen: GET [base]/Bundle?type=collection&_sort=-timestamp&list.subject={bPK-GH}
* Abfrage aller **historischen Medikationsplan-Versionen** eines Patienten, die nach dem angegebenen Datum gespeichert wurden und Plan-Einträge enthalten, die als **storniert, beendet oder abgesetzt** gekennzeichnet sind: GET [base]/Bundle?type=collection&_sort=-timestamp&timestamp=ge2025-01-01&list.subject={bPK-GH}&list.entry.flag=removed (TODO query prüfen)

### Read-to-Write-Zugriff

Der Read-to-Write-Zugriff dient dem **Abruf des Medikationsplans und der Vorbereitung einer nachfolgenden Änderung**.

#### Ablauf

1. Der GDA führt ein[POST $readtowrite](interactions.md#custom-operations)auf das Collection Bundle aus, das den Medikationsplan mit allen zugehörigen relevanten Ressourcen enthält.
1. Die Fachanwendung prüft, ob ein Medikationsplan für den/die Patient:in existiert.
1. Ist**kein Medikationsplan vorhanden**, wird dieser erstellt (siehe[Sub_UC_06_01 - Initial erstellter Medikationsplan](Sub_UC_eMed_06.md#sub_uc_06_01---initial-erstellter-medikationsplan)) und
1. ein leerer Medikationsplan mit dem emptyReason**notstarted**wird zurückgeliefert.
1. Existiert bereits ein Medikationsplan (d.h. es wurde bereits ein Collection Bundle persistiert), wird von der Fachanwendung aus diesem ein**Collection Bundle zur Auslieferung**bereitgestellt:

* mit einem neuen oder bereits temporär gespeicherten **List.identifier** (wird von der Fachanwendung zur späteren Integritätsprüfung beim Schreibvorgang verwaltet)

* Die Inhalte werden von der Fachanwendung wie folgt aufbereitet:

* Falls der vorherige GDA neue Medikationsplaneinträge hinzugefügt oder bestehende geändert hat (List.entry.flag haben den Wert **new** oder **changed**), werden diese auf **unchanged** gesetzt.

* Falls der vorherige GDA Medikationsplaneinträge beendet hat (deren List.entry.flag haben den Wert **removed**), werden diese Einträge aus der Liste **entfernt**.

* Falls der vorherige GDA **alle vorhandenen Einträge** mit removed gekennzeichnet hat, wird List.emptyReason mit **nilknown** zurückgeliefert, um nachfolgenden GDA zu signalisieren, dass der Patient zum Zeitpunkt des letzten Schreibens keine Medikamente eingenommen hat bzw. einnehmen sollte.

* Einträge mit abgelaufenem Behandlungszeitraum bleiben erhalten.
 

1. Die Fachanwendung liefert das**Collection Bundle**an den GDA:

* inkl. List und aller referenzierten Ressourcen (inline)

* ergänzt um den List.identifier

* Ziel ist ein neutraler, weiterbearbeitbarer Zustand für den abrufenden GDA


1. Der GDA bearbeitet den Medikationsplan (er fügt Einträge hinzu, ändert bestehende oder entfernt diese).

Der temporär gespeicherte List.identifier für die Integritätsprüfung beim Schreibvorgang wird von der Fachanwendung separat von den FHIR Ressourcen verwaltet.

#### Custom Operations

[$readtowrite](OperationDefinition-AtEmed.List.Readtowrite.md)

#### Sequenzdiagramm Read-to-Write-Zugriff

### Write-Zugriff

Der Write-Zugriff ist eine eigenständige Operation, die ausschließlich im Kontext eines **zuvor ausgeführten** [Read-to-Write-Zugriffs](interactions.md#read-to-write-zugriff) erfolgen darf.

#### Ablauf

1. Der GDA übermittelt via[POST $write](interactions.md#custom-operations-1)den aktualisierten Medikationsplan als**Transaction Bundle**:
* alle **neuen und geänderten und zu entfernenden Ressourcen** sind **inline** im Bundle enthalten,
* alle unveränderten Ressourcen werden nur referenziert.

1. Die Fachanwendung prüft, ob der übermittelte**List.identifier**mit dem List.identifier der temporär gespeicherten Medikationsplanversion**übereinstimmt**(d.h. es wurde zwischenzeitlich kein anderer Schreibvorgang durchgeführt).
1. Stimmt der List.identifier nicht überein, lehnt die Fachanwendung das Speichern des Medikationsplans ab. Es muss erneut ein Read-to-Write ausgeführt werden und die Aktualisierungen übernommen werden bzw. Fehler behoben werden, bevor ein neuerlicher Speicherversuch vorgenommen werden kann.
1. Wenn kein Fehler auftritt, validiert die Fachanwendung den neuen Plan und stellt sicher, dass keine unzulässigen Zustandsübergänge vorgenommen wurden.
1. Bei erfolgreicher Prüfung:
* werden die übermittelten Änderungen in die Ressourcen übernommen.
* Auf Basis der aktualisierten Ressourcen erstellt die Fachanwendung ein neues Collection Bundle, das als **neuer Medikationsplan persistiert** wird.

1. Der GDA erhält eine Meldung, dass der Medikationsplan erfolgreich aktualisiert wurde.

#### Custom Operations

[$write](OperationDefinition-AtEmed.List.Write.md)

#### Sequenzdiagramm Write-Zugriff

#### Diagramm Read-to-Write- und Write-Logik

 ![](class_diagram_readtowrite.drawio.svg)

#### Abgelehnter Write-Zugriff

#### Ablauf

1. **GDA 1**möchte den Medikationsplan seiner Patientin bearbeiten und führt ein[POST $readtowrite](interactions.md#custom-operations)auf das Collection Bundle des Medikationsplans aus.
1. Die Fachanwendung prüft, ob ein Medikationsplan für den/die Patient:in existiert (siehe[Read-to-Write-Zugriff](interactions.md#read-to-write-zugriff)). Annahme: Es ist bereits ein Medikationsplan vorhanden.
1. Die Fachanwendung erstellt ein**Collection Bundle zur Auslieferung**(siehe[Read-to-Write-Zugriff](interactions.md#read-to-write-zugriff)) mit dem temporären**List.identifier**"123"
1. Die Fachanwendung liefert das Collection Bundle an den GDA 1.
1. GDA 1 bearbeitet den Medikationsplan.
1. **GDA 2**führt ein POST $readtowrite auf den Medikationsplan aus, während GDA 1 das von der Fachanwendung übermittelte Collection Bundle bearbeitet.
1. Die Fachanwendung prüft erfolgreich, ob ein Medikationsplan für den/die Patient:in existiert.
1. Die Fachanwendung erstellt, genau wie für GDA 1, ein**Collection Bundle zur Auslieferung**(siehe[Read-to-Write-Zugriff](interactions.md#read-to-write-zugriff)) mit dem temporären**List.identifier**"123"
1. Die Fachanwendung liefert das Collection Bundle an den GDA 2.
1. GDA 2**bearbeitet zeitgleich**mit GDA 1 den Medikationsplan.
1. **GDA 2 sendet zuerst**mittels POST $write ein Transaction Bundle mit dem aktualisierten Medikationsplan.
1. Die Fachanwendung prüft, ob der temporär in der Fachanwendung vorgehaltene**List.identifier**mit dem im Transaction Bundle verwendeten List.identifier**übereinstimmt**. Beide haben den Wert "123".
1. Die Fachanwendung validert den neuen Plan (keine unzulässigen Zustandsübergänge)
1. Die Prüfung verläuft erfolgreich, der**neue Medikationsplan**mit List.identifier "123" wird**persistiert**.
1. Die Fachanwendung**löscht**den**temporären List.identifier**"123".
1. GDA 2 erhält eine Meldung, dass der Medikationsplan erfolgreich aktualisiert wurde.
1. GDA 1 sendet mittels POST $write ein Transaction Bundle mit dem aktualisierten Medikationsplan mit List.identifier "123".
1. Die Prüfung auf Übereinstimmung des von GDA 1 verwendeten List.identifier und dem von der der Fachanwendung vorgehaltenen temporären identifer schlägt fehl.
1. Die Fachanwendung**lehnt das Speichern ab**.
1. GDA 1 erhält eine**Fehlermeldung**und muss ein erneutes Read-to-Write ausführen, welches das Generieren eines zur Auslieferung bereitgestellten temporären Collection Bundles inkl. neuem List.identifiers auslöst.

#### Sequenzdiagramm Abgelehnter Write-Zugriff

