# Schreibender Zugriff - ELGA e-Diagnose R4 (Draft) v0.1.0

## Schreibender Zugriff

Dieses Kapitel beschreibt die schreibenden Zugriffe (mit Ausnahme der [Teilnehmerrechte](use_case_participant.md)) auf einzelne Einträge sowie auf die jeweiligen Summary-Listen der e-Diagnose-Fachanwendung.

Die hier dargestellten technischen Anwendungsfälle ergänzen die fachlichen Anwendungsfälle ["Diagnosen schreiben" TODO Link]().

### Interaktionen auf Einzelressourcen

#### Eintrag erfassen

Dieser Anwendungsfall ermöglicht dem GDA das Erfassen eines neuen Eintrags in der e-Diagnose-Fachanwendung. Ein neuer Eintrag ist standardmäßig nicht Teil der Summary-Liste, kann aber zur [Summary-Liste hinzugefügt](#eintrag-zur-summary-liste-hinzufügen) werden.

##### Ablauf

1. Der GDA wählt den gewünschten Art des Eintrags (Condition, Procedure oder AllergyIntolerance) aus.
1. Der GDA erstellt einen neuen Eintrag und erfasst die erforderlichen fachlichen Informationen.
1. Der GDA führt ein`POST /[Condition|Procedure|AllergyIntolerance`aus und übermittelt die neue Ressource an die e-Diagnose-Fachanwendung.
1. Die e-Diagnose-Fachanwendung validiert die übermittelte Ressource.
1. Ist die Validierung erfolgreich, wird die neue Ressource gespeichert. Ist die Validierung nicht erfolgreich, wird die Ressource nicht gespeichert. Die Fachanwendung liefert ein**OperationOutcome**mit den aufgetretenen Validierungsfehlern zurück.

##### Sequenzdiagramm

#### Eintrag stornieren

Dieser Anwedungsfall erlaubt dem GDA die Stornierung eines Eintrags. Dabei ist es irrelevant, ob ein zu stornierender Eintrag in der Summary-Liste referenziert wird oder nicht. Im Zuge der Stornierung kann der GDA einen Vermerk festhalten.

##### Ablauf

1. Um einen Eintrag zu stornieren, führt der GDA die[`$entered-in-error`-Operation](OperationDefinition-at-ediag-operation-diagnose-entered-in-error.md)auf den zu stornierenden Eintrag aus.
1. Optional kann der GDA einen Grund für die Stornierung angeben, der durch die Fachanwendung in den zu stornierenden Eintrag übernommen wird.
1. Für den zu stornierenden Eintrag speichert die Fachanwendung, welcher GDA den Eintrag storniert hat sowie den Zeitpunkt der Stornierung.
1. Sollte der zu stornierende Eintrag Teil der aktuellen Summary-Liste gewesen sein, erstellt die Fachanwendung eine neue Version der Summary-Liste ohne den stornierten Eintrag.

##### Custom Operation

[`$entered-in-error`](OperationDefinition-at-ediag-operation-diagnose-entered-in-error.md)

#### Eintrag in der Gesamtansicht bearbeiten

Dieser Anwendungsfall beschreibt die Bearbeitung eines Eintrags in der Gesamtansicht.

Daten bestehender Einträge können nicht im Sinne eines Updates (`PUT`) verändert werden. Die Daten können von der Client-Anwendung in einen neuen Eintrag übernommen, angepasst und als [neuer Eintrag](#eintrag-erfassen) in der e-Diagnose-Fachanwendung gespeichert werden.

Die Bearbeitung innerhalb einer Summary-Liste wird [hier](#eintrag-in-der-summary-liste-bearbeiten) beschrieben.

##### Ablauf

1. Der GDA ruft[alle Einträge](use_case_read.md#alle-einträge-abrufen)oder[einen einzelnen Eintrag](use_case_read.md#einzelnen-eintrag-abrufen)ab.
1. Der GDA wählt den fachlich zu bearbeitenden Eintrag aus.
1. Der GDA übernimmt die Daten in einen neuen Eintrag.
1. Der GDA ändert die Daten entsprechend.
1. Eine Verknüpfung des alten mit dem neuen Eintrag erfolgt dadurch, dass beide Einträge denselben Business Identifier erhalten.

1. Der GDA[erfasst den neuen Eintrag](#eintrag-erfassen)in der e-Diagnose-Fachanwendung.

### Interaktionen auf Listenressourcen

#### Leere Summary-Liste fachlich bestätigen

Dieser Anwendungsfall beschreibt die fachliche Bestätigung einer initialisierten, leeren Summary-Liste durch den GDA und die anschließende Speicherung in der e-Diagnose-Fachanwendung.

Eine leere Summary-Liste mit dem Wert `List.emptyReason = nilknown` bedeutet, dass für den Patienten derzeit keine Summary-Einträge vorliegen. Der Status dokumentiert somit explizit das Fehlen von Summary-Einträgen und ist von einer initial noch nicht befüllten Summary-Liste `List.emptyReason = notstarted` zu unterscheiden.

Dieser Anwendungsfall kann pro Patient maximal einmal auftreten.

##### Ablauf

1. Der GDA ruft die[aktuelle Summary-Liste](use_case_read.md#aktuelle-summary-liste-abrufen)ab.
1. Ist`List.emptyReason = notstarted`, handelt es sich um eine initialisierte, aber fachlich noch nicht bestätigten leeren Summary-Liste.
1. Bestätigt der GDA, dass für die Person aktuell keine Summary-Einträge dokumentiert werden müssen, setzt er`List.emptyReason = nilknown`.
1. Der GDA führt die[`$write`-Operation](use_case_write.md#summary-liste-aktualisieren-write)aus und übermittelt die aktualisierte Summary-Liste an die e-Diagnose-Fachanwendung.

##### Sequenzdiagramm

#### Summary-Liste aktualisieren ($write)

Dieser Anwendungsfall erlaubt es, eine aktualisierte Summary-Liste an die e-Diagnose-Fachanwendung zu übermitteln.

Die `$write`-Operation ist eine eigenständige Operation, die allerdings einen **zuvor ausgeführten** [Abruf der aktuellen Summary-Liste](use_case_read.md#aktuelle-summary-liste-abrufen) voraussetzt.

##### Ablauf

1. Der GDA ruft die[aktuelle Summary-Liste](use_case_read.md#aktuelle-summary-liste-abrufen)ab.
1. Der GDA nimmt Änderungen an der Summary-Liste vor.
1. Der GDA übermittelt via`POST /List/$write`die aktualisierte Summary-Liste.
1. Die e-Diagnose-Fachanwendung[validiert](OperationDefinition-at-ediag-operation-list-write.md#validierung--fehlerbehandlung)die empfangenen Daten entsprechend.
1. Nach erfolgreicher Validierung wird die Summary-Liste persistiert.

###### Alternativer Ablauf: Abgelehnte $write-Operation

1. Der GDA ruft die[aktuelle Summary-Liste](use_case_read.md#aktuelle-summary-liste-abrufen)ab.
1. Die Fachanwendung liefert das SearchSet-Bundle zurück. Die in`List.meta.versionId`entspricht dem`ETag`für[Optimistic Locking](https://hl7.org/fhir/http.html#concurrency)mit dem Wert`123`.
1. **GDA 1**macht**fachliche Änderungen**an der Summary-Liste.
1. Währenddessen ruft**GDA 2**ebenfalls die[aktuelle Summary-Liste](use_case_read.md#aktuelle-summary-liste-abrufen).
1. Die Fachanwendung liefert das SearchSet-Bundle zurück. Auch in diesem Fall hat`List.meta.versionId`den Wert`123`.
1. **GDA 2**macht**fachliche Änderungen**an der Summary-Liste.
1. **GDA 2**aktualisiert mittels[$write-Operation](use_case_write.md#summary-liste-aktualisieren-write)die Summary-Liste.
1. Im Rahmen der Validierung der übermittelten Summary-Liste prüft die Fachanwendung, ob der mitgeschickte`If-Match`-Header mit der aktuellen`versionId`der Summary-Liste übereinstimmt.
1. Die Prüfung verläuft erfolgreich, weil beide den Wert`123`haben. Die Änderungen werden übernommen und die neue Version der Summary-Liste wird persistiert. Dabei erhält die Summary-Liste die neue`List.meta.version`mit dem Wert`124`.
1. **GDA 2**erhält die Meldung, dass die Aktualisierung erfolgreich durchgeführt wurde.
1. Anschließend will**GDA 1**mittels[$write-Operation](use_case_write.md#summary-liste-aktualisieren-write)ebenfalls seine Version der Summary-Liste speichern.
1. Die Fachanwendung validiert erneut die übermittelte Summary-Liste. Die Prüfung schlägt fehl, weil die aktuelle Summary-Liste in der Fachanwendung mittlerweile die`List.meta.versionId`mit dem Wert`124`besitzt. Die Fachanwendung lehnt das Speichern ab.
1. **GDA 1**erhält eine Fehlermeldung, dass zwischenzeitlich eine Version der Liste gespeichert wurde.
1. **GDA 1**muss erneut die[aktuelle Summary-Liste](use_case_read.md#aktuelle-summary-liste-abrufen)abrufen, die zwischenzeitlich vorgenommenen Änderungen prüfen und gegebenenfalls seine Änderungen erneut durchführen, bevor ein neuer Schreibvorgang erfolgen kann.

##### Custom Operation

[`$write`](OperationDefinition-at-ediag-operation-list-write.md)

##### Sequenzdiagramm

###### Alternativer Ablauf: Abgelehnte $write-Operation

#### Eintrag zur Summary-Liste hinzufügen

Dieser Anwendungsfall ermöglicht dem GDA die Aufnahme eines bestimmten Eintrags in die Summary-Liste.

Dieser Anwendungsfall setzt voraus, dass der Eintrag, den der GDA der Summary-Liste hinzufügen will, schon in der e-Diagnose-Fachanwendung vorhanden ist und dem GDA die ID des Eintrags bekannt ist.

##### Ablauf

1. Der GDA ruft die[aktuelle Summary-Liste](use_case_read.md#aktuelle-summary-liste-abrufen)ab und erhält das entsprechende SearchSet-Bundle.
1. Der GDA wählt den bestehenden Eintrag aus.
1. Der GDA fügt den Eintrag als neuen`List.entry`in die Liste ein.
* `List.entry.item` enthält die Referenz auf den bestehenden Eintrag.

1. Der GDA führt die[`$write`-Operation](use_case_write.md#summary-liste-aktualisieren-write)aus und übermittelt die aktualisierte Liste an die Fachanwendung.

##### Sequenzdiagramm

#### Eintrag aus Summary-Liste entfernen

Dieser Anwendungsfall erlaubt das entfernen eines Eintrags aus einer Summary-Liste. Dabei wird lediglich die Referenz innerhalb der Summary-Liste entfernt, der Eintrag selbst bleibt unverändert und kann über die [Gesamtansicht](use_case_read.md#alle-einträge-abrufen) abgerufen werden.

##### Ablauf

1. Der GDA ruft die[aktuelle Summary-Liste](use_case_read.md#aktuelle-summary-liste-abrufen)ab und erhält das entsprechende SearchSet-Bundle.
1. Der GDA entfernt den Eintrag oder die Einträge aus der Summary-Liste. Das bedeutet, dass der entsprechende`List.entry`entfernt wird.
1. Der GDA führt die[`$write`-Operation](use_case_write.md#summary-liste-aktualisieren-write)aus und übermittelt die aktualisierte Liste an die Fachanwendung.

##### Sequenzdiagramm

#### Reihenfolge der Einträge in der Summary-Liste ändern

Dieser Anwendungsfall erlaubt es dem GDA, die Reihenfolge der Einträge innerhalb einer Summary-Liste zu ändern. Dabei werden ausschließlich die Listeneinträge neu angeordnet; die referenzierten Ressourcen und deren fachliche Inhalte bleiben unverändert.

##### Ablauf

1. Der GDA ruft die[aktuelle Summary-Liste](use_case_read.md#aktuelle-summary-liste-abrufen)ab und erhält das entsprechende SearchSet-Bundle.
1. Der GDA ordnet die Einträge der Summary-Liste in die gewünschte Reihenfolge.
1. Der GDA führt die[`$write`-Operation](use_case_write.md#summary-liste-aktualisieren-write)aus und übermittelt die aktualisierte Liste an die Fachanwendung.

#### Eintrag in der Summary-Liste bearbeiten

Dieser Anwendungsfall beschreibt die fachliche Bearbeitung von Einträgen, die Teil einer Summary-Liste sind.

Daten bestehender Einträge können nicht im Sinne eines Updates (`PUT`) verändert werden. Die Daten können von der Client-Anwendung in einen neuen Eintrag übernommen, angepasst und als [neuer Eintrag](#eintrag-erfassen) in der e-Diagnose-Fachanwendung gespeichert werden.

> Die tatsächliche Reihenfolge der Bearbeitungsschritte kann variieren.

##### Ablauf

1. Der GDA ruft die[aktuelle Summary-Liste](use_case_read.md#aktuelle-summary-liste-abrufen)ab.
1. Der GDA wählt den fachlich zu bearbeitenden Summary-Einträge aus.
1. Der GDA übernimmt die Daten in einen neuen Eintrag.
1. Der GDA ändert die Daten entsprechend.
1. Eine Verknüpfung des alten mit dem neuen Eintrag erfolgt dadurch, dass beide Einträge denselben Business Identifier erhalten.

1. Der GDA[erfasst den neuen Eintrag](#eintrag-erfassen)in der e-Diagnose-Fachanwendung.
1. Der GDA entfernt den alten Eintrag aus der Summary-Liste, indem der entsprechende`List.entry`entfernt wird.
1. Der GDA fügt den neuen Eintrag zur Summary-Liste hinzu, indem der Eintrag als neuer`List.entry`in die Liste eingefügt wird.
* `List.entry.item` enthält die Referenz auf den bestehenden Eintrag.

1. Der GDA führt die[`$write`-Operation](use_case_write.md#summary-liste-aktualisieren-write)aus und übermittelt die aktualisierte Liste an die Fachanwendung.

##### Sequenzdiagramm

