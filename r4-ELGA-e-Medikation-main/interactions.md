# HL7.AT.FHIR.ELGA.EMED.R4\Transaktionen - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* **Transaktionen**

## Transaktionen

Im Folgenden werden standardisierte Interaktionen für den lesenden und schreibenden Zugriff auf die e-Medikation eines Patienten bzw. einer Patientin erläutert, die für alle technischen Use Cases relevant sind.

### Medikationsplan

#### Plan-Write

Plan-Write ist eine eigenständige Operation, die ausschließlich im Kontext eines **zuvor ausgeführten** [Plan-Read](interactions.md#plan-read) erfolgen darf.

##### Ablauf

1. Der GDA übermittelt via POST[$plan-write](OperationDefinition-AtEmed.List.Write.md)den aktualisierten Medikationsplan als[Medikationsplan-Transaction-Bundle](design_choices.md#medikationsplan-transaction-bundle-atemedbundlemedikationsplantx-transaction-bundle)inkl. ETag für[Optimistic Locking](https://hl7.org/fhir/http.html#concurrency):
* alle **neuen und geänderten und zu entfernenden Ressourcen** sind **inline** im Bundle enthalten,
* alle unveränderten Ressourcen werden nur referenziert.

1. Die Fachanwendung prüft, ob der im Header übermittelte**ETag**mit dem ETag der Fachanwendung**übereinstimmt**(d.h. es wurde zwischenzeitlich kein Medikationsplan gespeichert).
1. Stimmt der ETag nicht überein, lehnt die Fachanwendung das Speichern des Medikationsplans ab. Es muss erneut ein[Plan-Read](interactions.md#plan-read)ausgeführt werden und die Aktualisierungen übernommen werden bzw. Fehler behoben werden, bevor ein neuerlicher Speicherversuch vorgenommen werden kann.
1. Wenn kein Fehler auftritt, validiert die Fachanwendung den neuen Plan und stellt sicher, dass keine unzulässigen Zustandsübergänge vorgenommen wurden.
1. Bei erfolgreicher Prüfung:
* werden die übermittelten Änderungen in die Ressourcen übernommen.
* Auf Basis der aktualisierten Ressourcen erstellt die Fachanwendung ein neues [Medikationsplan-Collection-Bundle](design_choices.md#persistiertes-medikationsplan-collection-bundle), das als **neuer Medikationsplan persistiert** wird.

1. Der GDA erhält eine Meldung, dass der Medikationsplan erfolgreich aktualisiert wurde.

##### Custom Operations

[$plan-write](OperationDefinition-AtEmed.List.Write.md)

##### Sequenzdiagramm Plan-Write

##### Abgelehntes Plan-Write

##### Ablauf

1. **GDA 1**möchte den Medikationsplan seiner Patientin bearbeiten und führt ein POST[$plan-read](OperationDefinition-AtEmed.List.Planread.md)auf das Collection Bundle des Medikationsplans aus.
1. Die Fachanwendung erstellt ein**Auslieferungs-Medikationsplan-Collection-Bundle**(siehe[Plan-Read](interactions.md#plan-read)) inkl. ETag "123" und liefert es an den GDA 1. GDA 1 bearbeitet den Medikationsplan.
1. **GDA 2**führt ein POST[$plan-read](OperationDefinition-AtEmed.List.Planread.md)auf den Medikationsplan aus, während GDA 1 das von der Fachanwendung übermittelte Collection Bundle bearbeitet.
1. Die Fachanwendung erstellt ein**Auslieferungs-Medikationsplan-Collection-Bundle**(siehe[Plan-Read](interactions.md#plan-read)) inkl. ETag "123" und liefert es an den GDA 2. GDA 2**bearbeitet zeitgleich**mit GDA 1 den Medikationsplan.
1. **GDA 2 sendet zuerst**mittels POST[$plan-write](OperationDefinition-AtEmed.List.Write.md)ein[Medikationsplan-Transaction-Bundle](design_choices.md#medikationsplan-transaction-bundle-atemedbundlemedikationsplantx-transaction-bundle)mit dem aktualisierten Medikationsplan und übermittelt den ETag "123".
1. Die Fachanwendung prüft, ob der im Header übermittelte**ETag**mit dem ETag der Fachanwendung**übereinstimmt**. Beide haben den Wert "123", der**neue Medikationsplan**wird**persistiert**.
1. GDA 2 erhält eine Meldung, dass der Medikationsplan erfolgreich aktualisiert wurde.
1. GDA 1 sendet mittels POST[$plan-write](OperationDefinition-AtEmed.List.Write.md)ein[Medikationsplan-Transaction-Bundle](design_choices.md#medikationsplan-transaction-bundle-atemedbundlemedikationsplantx-transaction-bundle)mit dem aktualisierten Medikationsplan und übermittelt den ETag "123".
1. Die Prüfung auf Übereinstimmung der ETags von GDA 1 mit dem der Fachanwendung schlägt fehl, da dieser ETag bereits zum Schreiben verwendet wurde. Die Fachanwendung**lehnt das Speichern ab**.
1. GDA 1 erhält eine**Fehlermeldung**und muss ein erneutes Plan-Read ausführen, welches das Generieren eines neuen**Auslieferungs-Medikationsplan-Collection-Bundle**auslöst und mit dem aktuellen ETag übermittelt wird.

##### Sequenzdiagramm Abgelehntes Plan-Write

#### Groupidentifier-Create

siehe "Ablauf - Bezug e-Med GroupIdentifier".

#### Prescription-Search

In Arbeit.

