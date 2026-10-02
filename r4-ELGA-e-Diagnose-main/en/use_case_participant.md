# Ausüben von Teilnehmerrechten - ELGA e-Diagnose R4 (Draft) v0.1.0

## Ausüben von Teilnehmerrechten

### Interaktionen auf Einzelressourcen

#### Eintrag löschen

Dieser Anwendungsfall erlaubt es einem ELGA-Teilnehmer, einzelne oder alle Einträge via ELGA-Portal unwiderruflich zu löschen. Dabei ist es irrelevant, ob ein zu löschender Eintrag Teil der jeweiligen Summary-Liste ist oder nicht. Sollte der Eintrag in der aktuellen Summary-Liste referenziert sein, erstellt die e-Diagnose-Fachanwendung eine neue Version der Summary-Liste ohne den gelöschten Eintrag.

##### Ablauf

* Um einen Eintrag zu löschen, führt der ELGA-Teilnehmer über das Portal die [`$delete`-Operation](OperationDefinition-at-ediag-operation-diagnose-delete.md) auf den zu löschenden Eintrag aus.
* Die e-Diagnose-Fachanwendung löscht den entsprechenden Eintrag.
* Sollte der zu löschende Eintrag Teil der aktuellen Summary-Liste gewesen sein, erstellt die e-Diagnose-Fachanwendung eine neue Version der Summary-Liste ohne den gelöschten Eintrag.

##### Custom Operation

[`$delete`](OperationDefinition-at-ediag-operation-diagnose-delete.md)

### Interaktionen auf Listenressourcen

#### Eine Summary-Listenversion löschen

Dieser Anwendungsfall beschreibt, wie ein ELGA-Teilnehmer einzelne Versionen einer Summary-Liste unwiderruflich löschen kann. Gelöschte Summary-Listenversionen werden nicht mehr in der Historie angezeigt. Sind keine Summary-Listenversionen mehr vorhanden, liefert ein nachfolgender Abruf eine leere Summary-Liste mit `List.emptyReason = nilknown` zurück.

##### Ablauf

1. Der ELGA-Teilnehmer ruft[alle Versionen einer Summary-Liste](use_case_read.md#versionen-einer-summary-liste-abrufen)ab.
1. Um eine Version der Summary-Liste zu löschen, führt der ELGA-Teilnehmer über das Portal die[`$delete-history-version`-Operation](OperationDefinition-at-ediag-operation-list-delete-history-version.md)auf die zu löschende Summary-Listenversion aus.
1. Die e-Diagnose-Fachanwendung löscht die entsprechende Summary-Listenversion.
1. Wird die letzte Summary-Listenversion gelöscht, legt die e-Diagnose Fachanwendung eine neue Summary-Liste mit`List.emptyReason = nilknown`an.

##### Custom Operation

[`$delete-history-version`](OperationDefinition-at-ediag-operation-list-delete-history-version.md)

