# HL7.AT.FHIR.ELGA.EDIAG.R4\Schreiben - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* **Schreiben**

## Schreiben

# Schreiben

> UC-02 

Dieses Kapitel beschreibt die Schreiboperationen der e-Diagnose-Fachanwendung. Im Mittelpunkt stehen die Aktualisierung von Summary-Listen sowie die Erfassung, Zuordnung, Entfernung, Stornierung und Löschung von medizinischen Einzeleinträgen (Ressourcen).

## Interaktionen auf Einzelressourcen

### Eintrag erfassen

> Sub:UC_02_01 

Der GDA erfasst einen neuen Eintrag über die e-Diagnose-Fachanwendung. Ein neuer Eintrag ist standardmäßig nicht Teil der Summary-Liste, kann aber in Folge durch Sub:UC_02_03 zur Summary-Liste hinzugefügt werden.

#### Ablauf

1. Der GDA wählt den gewünschten Ressourcentyp (Condition, Procedure oder AllergyIntolerance) aus.
1. Der GDA erstellt einen neuen Eintrag und erfasst die erforderlichen fachlichen Informationen.
1. Der GDA führt ein**POST**auf`/Condition`,`/Procedure`oder`/AllergyIntolerance`aus und übermittelt die neue Ressource an die e-Diagnose Fachanwendung.
1. Die**Fachanwendung**validiert die übermittelte Ressource.
1. Ist die Validierung erfolgreich, wird die neue Ressource gespeichert und dem GDA eine erfolgreiche Erstellung mittels**HTTP 201 Created**bestätigt. Ist die Validierung nicht erfolgreich, wird die Ressource nicht gespeichert. Die Fachanwendung liefert ein**OperationOutcome**mit den aufgetretenen Validierungsfehlern zurück.

#### Sequenzdiagramm

### Eintrag stornieren

> Sub:UC_02_02 
 

Der GDA kann eine oder mehrere Einträge aufgrund einer falschen Eingabe stornieren. Dabei ist es irrelevant, ob ein zu stornierender Eintrag in der Summary-List referenziert wird oder nicht. Im Zuge der Stornierung kann der GDA einen Vermerk festhalten. Die OID des GDA´s und der Stornierungszeitpunkt wird durch die Fachanwendung gesetzt.

#### Ablauf

1. Um einen Eintrag zu stornieren, führt der GDA ein`$list-read`oder ein`GET`auf die Gesamtmenge der Diagnosen aus (siehe[Read/Search von Diagnosen, Prozeduren sowie Allergien und Intoleranzen](uc_ediag_01_lesen.md#einträge-als-einzelressource-abrufen)) und markiert die zu stornierenden Einträge.
1. Optional kann der GDA einen Grund für die Stornierung angeben.
1. Durch Bestätigung wird die`$storno`-Operation ausgeführt.
1. Die Fachanwendung bearbeitet den zu stornierenden Eintrag folgendermaßen:
* `AllergyIntolerance.verificationStatus = entered-in-error`
* `Condition.verificationStatus = entered-in-error`
* `Procedure.status = entered-in-error`

1. Die Fachanwendung speichert den Zeitpunkt der Stornierung ab und übernimmt ursprünglichen Wert des verification.Status bzw. status

### Eintrag bearbeiten in der Gesamtansicht

Der GDA kann über die Gesamtansicht bestehende Einträge suchen, auswählen und fachlich bearbeiten.

Im Unterschied zur Bearbeitung innerhalb einer Summary-Liste erfolgt die Änderung hier unabhängig von der aktuellen Zuordnung in eine Summary-Liste. Die Bearbeitung betrifft die referenzierte medizinische Ressource.

#### Ablauf

1. Der GDA wählt den gewünschten Ressourcentyp (Condition, Procedure oder AllergyIntolerance) aus.
1. Der GDA ruft die gewünschte Ressource über die Gesamtansicht gemäß Sub:UC_01_03 – Einträge als Einzelressource abrufen ab.
1. Der GDA wählt den fachlich zu bearbeitenden Eintrag aus.
1. Der GDA nimmt die erforderlichen fachlichen Änderungen an der Ressource vor.
1. Der GDA erstellt die geänderte Ressource gemäß Sub:UC_02_07 – Eintrag erfassen. Dabei wird der Business-Identifier der bisherigen Ressource übernommen.
1. Ist der bisherige Eintrag fachlich nicht mehr gültig, storniert der GDA die bisherige Ressource gemäß Sub:UC_02_08 – Eintrag stornieren.
1. Die Fachanwendung validiert die neue Ressource und speichert sie als neue Version. Der Business-Identifier bleibt unverändert erhalten.
1. Die Fachanwendung bestätigt die erfolgreiche Bearbeitung der Ressource.

## Interaktionen auf Listenressourcen

### Leere Summary-Liste fachlich bestätigen

> Sub:UC_02_03 

Dieser Ablauf beschreibt die fachliche Bestätigung einer initialisierten, leeren Summary-Liste durch den GDA und die anschließende Speicherung des bestätigten Zustands in der Fachanwendung. Eine leere Summary-Liste mit dem Wert **emptyReason = nilknown** bedeutet, dass für den Patienten derzeit keine Summary-Einträge vorliegen. Der Status dokumentiert somit explizit das Fehlen von Summary-Einträgen und ist von einer noch nicht befüllten Liste **emptyReason = notstarted** zu unterscheiden.

#### Ablauf

1. Der GDA führt einen**POST $list-read**aus.
1. Die Fachanwendung prüft die angeforderte Summary-Liste und stellt fest, dass kein List.entry vorhanden ist.
1. Ist**List.emptyReason = notstarted**, handelt es sich um eine initialisierte, aber noch nicht fachlich bestätigte leere Summary-Liste.
1. Bestätigt der GDA, dass für die Person aktuell keine Summary-Einträge dokumentiert werden müssen, setzt er**List.emptyReason = nilknown**.
1. Der GDA führt anschließend einen**POST $list-write**mit der aktualisierten Summary-Liste durch, um den bestätigten Zustand zu speichern.
1. Die Fachanwendung speichert die aktualisierte Summary-Liste inkl. ETag für[Optimistic Locking](https://hl7.org/fhir/http.html#concurrency)zurück.

#### Sequenzdiagramm

### Summary-Liste aktualisieren ($write)

> Sub:UC_02_04

Die `$write`-Operation ist eine eigentständige Operation, die allerdings einen **zuvor ausgeführten** [Abruf der aktuellen Summary-Liste](uc_ediag_01_lesen.md#aktuelle-summary-liste-abrufen-list-read) voraussetzt.

#### Ablauf

1. Der GDA übermittelt via`POST /List/$write`die aktualisierte Summary-Liste.
1. Die Fachanwendung[validiert](OperationDefinition-at-ediag-operation-listwrite.md#validierung--fehlerbehandlung)die empfangenen Daten entsprechend.
1. Nach erfolgreicher Validierung wird die Summary-Liste persistiert.

##### Alternativer Ablauf: Abgelehnte $write-Operation

1. Der GDA ruft die[aktuelle Summary-Liste](uc_ediag_01_lesen.md#aktuelle-summary-liste-abrufen-list-read)ab.
1. Die Fachanwendung liefert das SearchSet-Bundle zurück. Die in`List.meta.versionId`entspricht dem`ETag`für[Optimistic Locking](https://hl7.org/fhir/http.html#concurrency)mit dem Wert`123`.
1. **GDA 1**macht**fachliche Änderungen**an der Summary-Liste.
1. Währenddessen ruft**GDA 2**ebenfalls die[aktuelle Summary-Liste](uc_ediag_01_lesen.md#aktuelle-summary-liste-abrufen-list-read).
1. Die Fachanwendung liefert das SearchSet-Bundle zurück. Auch in diesem Fall hat`List.meta.versionId`den Wert`123`.
1. **GDA 2**macht**fachliche Änderungen**an der Summary-Liste.
1. **GDA 2**aktualisiert zuerst mittels[$write-Operation](uc_ediag_02_schreiben.md#summary-liste-aktualisieren-write)die Summary-Liste.
1. Im Rahmen der Validierung der übermittelten Summary-Liste, prüft die Fachanwendung, ob der mitgeschickte`If-Match`-Header mit der aktuellen`versionId`der Summary-Liste übereinstimmt.
1. Die Prüfung verläuft erfolgreich, weil beide den Wert`123`haben. Die Änderungen werden übernommen und die neue Version der Summary-Liste wird persistiert. Dabei erhält die Summary-Liste die neue`List.meta.version`mit dem Wert`124`.
1. **GDA 2**erhält die Meldung, dass die Aktualisierung erfolgreich durchgeführt wurde.
1. Anschließend will**GDA 1**mittels[$write-Operation](uc_ediag_02_schreiben.md#summary-liste-aktualisieren-write)ebenfalls seine Version der Summary-Liste speichern.
1. Die Fachanwendung validiert erneut die übermittelte Summary-Liste. Die Prüfung schlägt fehl, weil die aktuelle Summary-Liste in der Fachanwendung mittlerweile die`List.meta.versionId`mit dem Wert`124`besitzt. Die Fachanwendung lehnt das Speichern ab.
1. **GDA 1**erhält eine Fehlermeldung, dass zwischenzeitlich eine Version der Liste gespeichert wurde.
1. **GDA 1**muss erneut die[aktuelle Summary-Liste](uc_ediag_01_lesen.md#aktuelle-summary-liste-abrufen-list-read)abrufen, die zwischenzeitlich vorgenommenen Änderungen prüfen und gegebenenfalls seine Änderungen erneut durchführen, bevor ein neuer Schreibvorgang erfolgen kann.

#### Custom Operations

[$write](OperationDefinition-at-ediag-operation-list-write.md)

#### Sequenzdiagramm

##### Alternativer Ablauf: Abgelehnte $write-Operation

### Eintrag zur Summary-Liste hinzufügen

> Sub:UC_02_05

Der GDA möchte einen bestehenden Eintrag in die Summary-Liste aufnehmen.

#### Ablauf

1. Der GDA ruft die[aktuelle Summary-Liste](uc_ediag_01_lesen.md#aktuelle-summary-liste-abrufen-list-read)ab und erhält das entsprechende SearchSet-Bundle.
1. Der GDA wählt den bestehenden Eintrag aus.
1. Der GDA fügt den Eintrag als`List.entry`in die Liste ein.
* **`List.entry.item`** referenziert den bestehenden Eintrag.

1. Der GDA führt die[`$write`-Operation](uc_ediag_02_schreiben.md#summary-liste-aktualisieren-write)aus und übermittelt die aktualisierte Liste an die Fachanwendung.

#### Sequenzdiagramm

### Eintrag aus Summary-Liste entfernen

> Sub:UC_02_06

Ein bestehender Eintrag kann aus der Summary-Liste entfernt werden, ohne dass die Ressource selbst gelöscht oder geändert wird. Hierzu wird die Referenz auf die Ressource aus der Summary-Liste entfernt. Die Ressource bleibt weiterhin verfügbar und kann zu einem späteren Zeitpunkt erneut in die Summary-Liste aufgenommen werden.

#### Ablauf

1. Der GDA ruft die[aktuelle Summary-Liste](uc_ediag_01_lesen.md#aktuelle-summary-liste-abrufen-list-read)ab und erhält das entsprechende SearchSet-Bundle.
1. Der GDA entfernt den Eintrag oder die Einträge aus der Summary-Liste. Das bedeutet, dass der entsprechende`List.entry`entfernt wird.
1. Der GDA führt die[`$write`-Operation](uc_ediag_02_schreiben.md#summary-liste-aktualisieren-write)aus und übermittelt die aktualisierte Liste an die Fachanwendung.

#### Sequenzdiagramm

### Reihenfolge der Einträge in der Summary-Liste ändern

> Sub:UC_02_07 
  Der GDA kann die Reihenfolge der Einträge innerhalb einer Summary-Liste ändern. Dabei werden ausschließlich die Listeneinträge neu angeordnet; die referenzierten Ressourcen und deren fachliche Inhalte bleiben unverändert. Durch das Speichern entsteht eine neue Version der Summary-Liste.

#### Ablauf

1. Der GDA führt ein**POST $list-read**aus und erhält das aktuelle Search-Bundle.
1. Der GDA ordnet die Einträge der Summary-Liste in die gewünschte Reihenfolge.
1. Der GDA führt einen POST $list-write aus und übermittelt die aktualisierte Summary-Liste.
1. Die Fachanwendung speichert die neue Reihenfolge als aktuelle Version der Summary-Liste. Die referenzierten Ressourcen bleiben unverändert.

### Einträge in der Summary-Liste bearbeiten

> Sub:UC_02_08 
 Dieser Sub-UC beschreibt die fachliche Bearbeitung von Einträgen einer Summary-Liste. Die tatsächliche Reihenfolge der Bearbeitungsschritte kann je nach Anwendungsfall variieren. Ein berechtigter GDA kann alle bestehenden (eigene und fremde) Einträge bearbeiten. Es ist nicht notwendigerweise vorgesehen, dass $list-read am Anfang und $list-write am Ende des Ablaufs stehen. Durch die Verwendung eines bereits bestehenden Business-Identifier wird bei der Bearbeitung die Zuordnung einer alten Version zu einer neuen Version einer Ressource ermöglicht. Dadurch bleibt die Verbindung zwischen den Versionen erhalten.

#### Ablauf

1. Der GDA führt einen POST $list-read aus und erhält das aktuelle Search-Bundle..
1. Der GDA wählt die fachlich zu bearbeitenden Summary-Einträge aus.
1. Der GDA führt die erforderlichen Bearbeitungsschritte für den jeweiligen Anwendungsfall aus. Dazu gehört beispielsweise:
* Übernahme des bestehenden Business-Identifier für die neue Version einer Ressource.
* Erfassung einer neuen bzw. fachlich geänderten Ressource gemäß Sub – Eintrag erfassen.

1. Der GDA führt einen POST $list-write aus und übermittelt die aktualisierte Summary-Liste an die Fachanwendung. Die fachlich geänderte Ressource wird dabei neu angelegt und erhält durch die Übernahme des Business-Identifier die Verbindung zur bisherigen Ressource.

#### Sequenzdiagramm

