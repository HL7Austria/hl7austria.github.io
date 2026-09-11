# HL7.AT.FHIR.ELGA.EDIAG.R4\Schreiben - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* **Schreiben**

## Schreiben

> UC-02

Dieses Kapitel beschreibt die Schreiboperationen der e-Diagnose-Fachanwendung. Im Mittelpunkt stehen die Aktualisierung von Summary-Listen sowie die Erfassung, Zuordnung, Entfernung, Stornierung und Löschung von medizinischen Einzeleinträgen (Ressourcen).

### Interaktionen auf Einzelressourcen

#### Eintrag erfassen

> Sub:UC_02_01

Der GDA erfasst einen neuen Eintrag über die e-Diagnose-Fachanwendung. Ein neuer Eintrag ist standardmäßig nicht Teil der Summary-Liste, kann aber in Folge durch Sub:UC_02_03 zur Summary-Liste hinzugefügt werden.

##### Ablauf

1. Der GDA wählt den gewünschten Ressourcentyp (Condition, Procedure oder AllergyIntolerance) aus.
1. Der GDA erstellt einen neuen Eintrag und erfasst die erforderlichen fachlichen Informationen.
1. Der GDA führt ein**POST**auf`/Condition`,`/Procedure`oder`/AllergyIntolerance`aus und übermittelt die neue Ressource an die e-Diagnose Fachanwendung.
1. Die**Fachanwendung**validiert die übermittelte Ressource.
1. Ist die Validierung erfolgreich, wird die neue Ressource gespeichert und dem GDA eine erfolgreiche Erstellung mittels**HTTP 201 Created**bestätigt. Ist die Validierung nicht erfolgreich, wird die Ressource nicht gespeichert. Die Fachanwendung liefert ein**OperationOutcome**mit den aufgetretenen Validierungsfehlern zurück.

##### Sequenzdiagramm

#### Eintrag stornieren

> Sub:UC_02_02

Der GDA kann eine oder mehrere Einträge aufgrund einer falschen Eingabe stornieren. Dabei ist es irrelevant, ob ein zu stornierender Eintrag in der Summary-List referenziert wird oder nicht. Im Zuge der Stornierung kann der GDA einen Vermerk festhalten.

##### Ablauf

1. Um einen Eintrag zu stornieren, führt der GDA die[`$entered-in-error`-Operation](OperationDefinition-at-ediag-operation-diagnose-entered-in-error.md)auf den zu stornierenden Eintrag aus.
1. Optional kann der GDA einen Grund für die Stornierung angeben, der durch die Fachanwendung in den zu stornierenden Eintrag übernommen wird.
1. Für den zu stornierenden Eintrag speichert die Fachanwendung, welcher GDA den Eintrag storniert hat sowie den Zeitpunkt der Stornierung.
1. Sollte der zu stornierende Eintrag Teil der aktuellen Summary-Liste gewesen sein, erstellt die Fachanwendung eine neue Version der Summary-Liste ohne den stornierten Eintrag.

##### Custom Operation

[`$entered-in-error`](OperationDefinition-at-ediag-operation-diagnose-entered-in-error.md)

#### Eintrag bearbeiten in der Gesamtansicht

Der GDA kann über die Gesamtansicht bestehende Einträge fachlich "bearbeiten".

Dabei ist es wichtig hervorzuheben, dass Daten bestehender Einträge nicht im Sinne eines Updates verändert werden können. Die Daten können nur in einen neuen Eintrag übernommen und vor dem Speichern in der e-Diagnose Fachanwendung angepasst werden.

Im Unterschied zur Bearbeitung innerhalb einer Summary-Liste erfolgt die Änderung hier unabhängig von der aktuellen Zuordnung in eine Summary-Liste. Die Bearbeitung betrifft die referenzierte medizinische Ressource.

##### Ablauf

1. Der GDA ruft[alle Einträge](uc_ediag_01_lesen.md#alle-einträge-abrufen)oder[einen einzelnen Eintrag](uc_ediag_01_lesen.md#einzelnen-eintrag-abrufen)ab.
1. Der GDA wählt den fachlich zu bearbeitenden Eintrag aus.
1. Der GDA übernimmt die Daten in einen neuen Eintrag.
1. Der GDA ändert die Daten entsprechend.
1. Möchte der GDA den alten und den neuen Eintrag miteinander verknüpfen, übernimmt er den Business Identifier aus dem alten Eintrag.

1. Der GDA[erfasst den neuen Eintrag](#eintrag-erfassen)in der e-Diagnose Fachanwendung.

### Interaktionen auf Listenressourcen

#### Leere Summary-Liste fachlich bestätigen

> Sub:UC_02_03

Dieser Use-Case beschreibt die fachliche Bestätigung einer initialisierten, leeren Summary-Liste durch den GDA und die anschließende Speicherung in der e-Diagnose Fachanwendung.

Eine leere Summary-Liste mit dem Wert **emptyReason = nilknown** bedeutet, dass für den Patienten derzeit keine Summary-Einträge vorliegen. Der Status dokumentiert somit explizit das Fehlen von Summary-Einträgen und ist von einer noch nicht befüllten Liste **emptyReason = notstarted** zu unterscheiden.

##### Ablauf

1. Der GDA ruft die[aktuelle Summary-Liste](uc_ediag_01_lesen.md#aktuelle-summary-liste-abrufen)ab.
1. Ist`List.emptyReason = notstarted`, handelt es sich um eine initialisierte, aber noch nicht fachlich bestätigte leere Summary-Liste.
1. Bestätigt der GDA, dass für die Person aktuell keine Summary-Einträge dokumentiert werden müssen, setzt er`List.emptyReason = nilknown`.
1. Der GDA führt die[`$write`-Operation](uc_ediag_02_schreiben.md#summary-liste-aktualisieren-write)aus und übermittelt die aktualisierte Liste an die Fachanwendung.

##### Sequenzdiagramm

#### Summary-Liste aktualisieren ($write)

> Sub:UC_02_04

Die `$write`-Operation ist eine eigenständige Operation, die allerdings einen **zuvor ausgeführten** [Abruf der aktuellen Summary-Liste](uc_ediag_01_lesen.md#aktuelle-summary-liste-abrufen) voraussetzt.

##### Ablauf

1. Der GDA übermittelt via`POST /List/$write`die aktualisierte Summary-Liste.
1. Die Fachanwendung[validiert](OperationDefinition-at-ediag-operation-list-write.md#validierung--fehlerbehandlung)die empfangenen Daten entsprechend.
1. Nach erfolgreicher Validierung wird die Summary-Liste persistiert.

###### Alternativer Ablauf: Abgelehnte $write-Operation

1. Der GDA ruft die[aktuelle Summary-Liste](uc_ediag_01_lesen.md#aktuelle-summary-liste-abrufen)ab.
1. Die Fachanwendung liefert das SearchSet-Bundle zurück. Die in`List.meta.versionId`entspricht dem`ETag`für[Optimistic Locking](https://hl7.org/fhir/http.html#concurrency)mit dem Wert`123`.
1. **GDA 1**macht**fachliche Änderungen**an der Summary-Liste.
1. Währenddessen ruft**GDA 2**ebenfalls die[aktuelle Summary-Liste](uc_ediag_01_lesen.md#aktuelle-summary-liste-abrufen).
1. Die Fachanwendung liefert das SearchSet-Bundle zurück. Auch in diesem Fall hat`List.meta.versionId`den Wert`123`.
1. **GDA 2**macht**fachliche Änderungen**an der Summary-Liste.
1. **GDA 2**aktualisiert zuerst mittels[$write-Operation](uc_ediag_02_schreiben.md#summary-liste-aktualisieren-write)die Summary-Liste.
1. Im Rahmen der Validierung der übermittelten Summary-Liste prüft die Fachanwendung, ob der mitgeschickte`If-Match`-Header mit der aktuellen`versionId`der Summary-Liste übereinstimmt.
1. Die Prüfung verläuft erfolgreich, weil beide den Wert`123`haben. Die Änderungen werden übernommen und die neue Version der Summary-Liste wird persistiert. Dabei erhält die Summary-Liste die neue`List.meta.version`mit dem Wert`124`.
1. **GDA 2**erhält die Meldung, dass die Aktualisierung erfolgreich durchgeführt wurde.
1. Anschließend will**GDA 1**mittels[$write-Operation](uc_ediag_02_schreiben.md#summary-liste-aktualisieren-write)ebenfalls seine Version der Summary-Liste speichern.
1. Die Fachanwendung validiert erneut die übermittelte Summary-Liste. Die Prüfung schlägt fehl, weil die aktuelle Summary-Liste in der Fachanwendung mittlerweile die`List.meta.versionId`mit dem Wert`124`besitzt. Die Fachanwendung lehnt das Speichern ab.
1. **GDA 1**erhält eine Fehlermeldung, dass zwischenzeitlich eine Version der Liste gespeichert wurde.
1. **GDA 1**muss erneut die[aktuelle Summary-Liste](uc_ediag_01_lesen.md#aktuelle-summary-liste-abrufen)abrufen, die zwischenzeitlich vorgenommenen Änderungen prüfen und gegebenenfalls seine Änderungen erneut durchführen, bevor ein neuer Schreibvorgang erfolgen kann.

##### Custom Operation

[`$write`](OperationDefinition-at-ediag-operation-list-write.md)

##### Sequenzdiagramm

###### Alternativer Ablauf: Abgelehnte $write-Operation

#### Eintrag zur Summary-Liste hinzufügen

> Sub:UC_02_05

Der GDA möchte einen bestehenden Eintrag in die Summary-Liste aufnehmen.

##### Ablauf

1. Der GDA ruft die[aktuelle Summary-Liste](uc_ediag_01_lesen.md#aktuelle-summary-liste-abrufen)ab und erhält das entsprechende SearchSet-Bundle.
1. Der GDA wählt den bestehenden Eintrag aus.
1. Der GDA fügt den Eintrag als`List.entry`in die Liste ein.
* **`List.entry.item`** referenziert den bestehenden Eintrag.

1. Der GDA führt die[`$write`-Operation](uc_ediag_02_schreiben.md#summary-liste-aktualisieren-write)aus und übermittelt die aktualisierte Liste an die Fachanwendung.

##### Sequenzdiagramm

#### Eintrag aus Summary-Liste entfernen

> Sub:UC_02_06

Ein bestehender Eintrag kann aus der Summary-Liste entfernt werden, ohne dass die Ressource selbst gelöscht oder geändert wird. Hierzu wird die Referenz auf die Ressource aus der Summary-Liste entfernt. Die Ressource bleibt weiterhin verfügbar und kann zu einem späteren Zeitpunkt erneut in die Summary-Liste aufgenommen werden.

##### Ablauf

1. Der GDA ruft die[aktuelle Summary-Liste](uc_ediag_01_lesen.md#aktuelle-summary-liste-abrufen)ab und erhält das entsprechende SearchSet-Bundle.
1. Der GDA entfernt den Eintrag oder die Einträge aus der Summary-Liste. Das bedeutet, dass der entsprechende`List.entry`entfernt wird.
1. Der GDA führt die[`$write`-Operation](uc_ediag_02_schreiben.md#summary-liste-aktualisieren-write)aus und übermittelt die aktualisierte Liste an die Fachanwendung.

##### Sequenzdiagramm

#### Reihenfolge der Einträge in der Summary-Liste ändern

> Sub:UC_02_07

Der GDA kann die Reihenfolge der Einträge innerhalb einer Summary-Liste ändern. Dabei werden ausschließlich die Listeneinträge neu angeordnet; die referenzierten Ressourcen und deren fachliche Inhalte bleiben unverändert. Durch das Speichern entsteht eine neue Version der Summary-Liste.

##### Ablauf

1. Der GDA führt ein**POST $list-read**aus und erhält das aktuelle Search-Bundle.
1. Der GDA ordnet die Einträge der Summary-Liste in die gewünschte Reihenfolge.
1. Der GDA führt einen POST $list-write aus und übermittelt die aktualisierte Summary-Liste.
1. Die Fachanwendung speichert die neue Reihenfolge als aktuelle Version der Summary-Liste. Die referenzierten Ressourcen bleiben unverändert.

#### Eintrag in der Summary-Liste bearbeiten

> Sub:UC_02_08

Dieser Use-Case beschreibt die fachliche Bearbeitung von Einträgen einer Summary-Liste. Ein berechtigter GDA kann alle bestehenden (eigene und fremde) Einträge "bearbeiten".

Dabei ist es wichtig hervorzuheben, dass Daten bestehender Einträge nicht im Sinne eines Updates verändert werden können. Die Daten können nur in einen neuen Eintrag übernommen und vor dem Speichern in der e-Diagnose Fachanwendung angepasst werden.

Durch die Verwendung eines bereits bestehenden Business-Identifier wird bei der Bearbeitung die Zuordnung einer alten Version zu einer neuen Version einer Ressource ermöglicht. Dadurch bleibt die Verbindung zwischen den Einträgen erhalten.

> Die tatsächliche Reihenfolge der Bearbeitungsschritte kann variieren.

##### Ablauf

1. Der GDA ruft die[aktuelle Summary-Liste](uc_ediag_01_lesen.md#aktuelle-summary-liste-abrufen)ab.
1. Der GDA wählt den fachlich zu bearbeitenden Summary-Einträge aus.
1. Der GDA übernimmt die Daten in einen neuen Eintrag.
1. Der GDA ändert die Daten entsprechend.
1. Möchte der GDA den alten und den neuen Eintrag miteinander verknüpfen, übernimmt er den Business Identifier aus dem alten Eintrag.

1. Der GDA[erfasst den neuen Eintrag](#eintrag-erfassen)in der e-Diagnose Fachanwendung.
1. Der GDA entfernt den alten Eintrag aus der Summary-Liste.
1. Der GDA fügt den neuen Eintrag zur Summary-Liste hinzu.
1. Der GDA führt die[`$write`-Operation](uc_ediag_02_schreiben.md#summary-liste-aktualisieren-write)aus und übermittelt die aktualisierte Liste an die Fachanwendung.

##### Sequenzdiagramm

