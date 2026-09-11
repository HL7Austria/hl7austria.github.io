# HL7.AT.FHIR.ELGA.EDIAG.R4\Teilnehmerrechte ausüben - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* **Teilnehmerrechte ausüben**

## Teilnehmerrechte ausüben

### Interaktionen auf Einzelressourcen

#### Eintrag löschen

> Sub:UC_03_01

Ein ELGA-Teilnehmer kann via ELGA-Portal einzelne oder alle Einträge unwiderruflich löschen. Dabei ist es irrelevant, ob ein zu löschender Eintrag Teil der jeweiligen Summary-Liste ist oder nicht. Sollte der Eintrag in der aktuellen Summary-Liste referenziert sein, erstellt die Fachanwendung eine neue Version der Summary-Liste ohne den gelöschten Eintrag.

##### Ablauf

* Um einen Eintrag zu löschen, führt der ELGA-Teilnehmer über das Portal die [`$delete`-Operation](OperationDefinition-at-ediag-operation-diagnose-delete.md) auf den zu löschenden Eintrag aus.
* Die Fachanwendung löscht den entsprechenden Eintrag.
* Die Fachanwendung erstellt eine neue Version der Summary-Liste ohne den gelöschten Eintrag, sollte der zu löschende Eintrag Teil der aktuellen Summary-Liste gewesen sein.

##### Custom Operation

[`$delete`](OperationDefinition-at-ediag-operation-diagnose-delete.md)

### Interaktionen auf Listenressourcen

#### Eine Summary-Listenversion löschen

> Sub:UC_03_02

Ein ELGA-Teilnehmer kann einzelne Versionen einer Summary-Liste unwiderruflich löschen. Gelöschte Summary-Listenversionen werden nicht mehr in der Historie angezeigt. Sind keine Summary-Listenversionen mehr vorhanden, liefert ein nachfolgender Abruf eine leere Summary-Liste mit `List.emptyReason = nilknown` zurück.

##### Ablauf

1. Der ELGA-Teilnehmer ruft[alle Versionen einer Summary-Liste](uc_ediag_01_lesen.md#versionen-einer-summary-liste-abrufen)ab.
1. Um eine Version der Summary-Liste zu löschen, führt der ELGA-Teilnehmer über das Portal die[`$delete-history-version`-Operation](OperationDefinition-at-ediag-operation-list-delete-history-version.md)auf die zu löschende Summary-Listenversion aus.
1. Die Fachanwendung löscht die entsprechende Summary-Listenversion.
1. Wird die letzte Summary-Listenversion gelöscht, legt die e-Diagnose Fachanwendung eine neue Summary-Liste mit`List.emptyReason = nilknown`an.

##### Custom Operation

[`$delete-history-version`](OperationDefinition-at-ediag-operation-list-delete-history-version.md)

