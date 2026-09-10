# HL7.AT.FHIR.ELGA.EDIAG.R4\Lesen - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* **Lesen**

## Lesen

> UC-01

Dieses Kapitel beschreibt die lesenden Zugriffe der e-Diagnose-Fachanwendung auf einzelne Einträge sowie Summary-Listen. Je nach Anwendungsfall stehen unterschiedliche Interaktionen zur Verfügung.

### Interaktionen auf Einzelressourcen

#### Einzelnen Eintrag abrufen

> Sub:UC_01_XX

Dieser Use-Case ermöglicht den lesenden Zugriff auf einen einzelnen Eintrag.

##### Ablauf

1. Der GDA oder ELGA-Teilnehmer hat einen der folgenden Requests durchgeführt:
1. [Abruf der aktuelle Summary-Liste](#aktuelle-summary-liste-abrufen)
1. [Abruf der Summary-Listenversion](#versionen-einer-summary-liste-abrufen)
1. [Abruf aller Einträge](#alle-einträge-abrufen)

1. Auf Basis des zuvor ausgeführten Requests wählt der GDA oder ELGA-Teilnehmer einen Eintrag aus der durch seine`id`eindeutig identifiziert wird.
1. Der GDA führt ein`GET /[Condition|Procedure|AllergyIntolerance]/[id]`aus, um den ausgewählten Eintrag von der e-Diagnose Fachanwendung abzurufen.

#### Alle Einträge abrufen

> Sub:UC_01_01

Dieser Use-Case ermöglicht den lesenden Zugriff auf jeweils alle Einträge von Diagnosen, Prozeduren sowie Allergien und Intoleranzen eines Patienten als Gesamtansicht.

Die Interaktion liefert standardmäßig die 30 zuletzt erstellten Einträge, absteigend nach Erstellungsdatum sortiert, zurück. Da eine fachliche Bearbeitung eines Eintrags die Erstellung einer neuen Ressource impliziert, entspricht das Erstellungsdatum dem Zeitpunkt der letzten fachlichen Bearbeitung. Die Fachanwendung stellt die vorhandenen Einträge des gewählten Ressourcentyps als SearchSet-Bundle bereit.

##### Ablauf

1. Der GDA oder ELGA-Teilnehmer wählt den gewünschten Ressourcentyp (Condition, Procedure oder AllergyIntolerance) der abzurufenden Einträge aus.
1. Der GDA oder ELGA-Teilnehmer führt ein`GET`auf`/Condition`,`/Procedure`und/oder`/AllergyIntolerance`aus, siehe[Transaktionen](transaction.md#transaktionen).
1. **Optional**kann der Abfrageparameter`_count`angegeben werden, um die Anzahl der zurückgelieferten Ressourcen festzulegen. Standardmäßig werden die 30 zuletzt erstellten Ressourcen, absteigend nach Erstellungsdatum sortiert, zurückgeliefert.
1. Die Fachanwendung liefert ein SearchSet-Bundle mit den gefundenen Einträgen zurück.
1. Sind keine Ressourcen vorhanden bzw. entsprechen keine Ressourcen den Suchkriterien, wird ein leeres SearchSet-Bundle zurückgeliefert.

### Interaktionen auf Listenressourcen

#### Versionen einer Summary-Liste abrufen

> Sub:UC_01_02

Dieser Use-Case dient ausschließlich der Anzeige historischer Versionen der Summary-Liste. Der Zugriff erfolgt lesend und ermöglicht keine Bearbeitung der jeweiligen Summary-Listenversion.

##### Ablauf

1. Der GDA ruft die[aktuelle Summary-Liste](uc_ediag_01_lesen.md#aktuelle-summary-liste-abrufen)ab, wodurch er das entsprechende SearchSet-Bundle und damit die`id`der Summary-Liste erhält.
1. In einem zweiten Request kann der GDA jetzt auf die gesamte History von der Summary-Liste zugreifen.
1. Die e-Diagnose Fachanwendung liefert ein History-Bundle zurück, das alle Summary-Listenversionen enthält.`GET /List/[id]/_history`
1. Zu einer Summary-Listenversion können die[referenzierten Diagnosen von der e-Diagnose Fachanwendung](#einzelnen-eintrag-abrufen)abgefragt werden.

###### Alternativer Ablauf

1. Alternativ kann auch direkt auf eine bestimmte Version zugegriffen werden:`GET /List/[id]/_history/[vid]`
1. Die e-Diagnose Fachanwendung liefert die entsprechende Summary-Listenversion zurück.

##### Sequenzdiagramm

#### Aktuelle Summary-Liste abrufen

> Sub:UC_01_03

Diese Abfrage dient dem Abruf der aktuellen Summary-Liste für eine Art von Einträgen.

##### Ablauf

1. Der GDA führt ein`GET /List?code=[code]&_sort=-date&_count=1&include=*`aus.
1. Die Fachanwendung liefert als Ergebnis ein SearchSet-Bundle, das die Summary-Liste inklusive aller referenzierter Ressourcen enthält, an den GDA. Die Information für[Optimistic Locking](https://hl7.org/fhir/http.html#concurrency)ist in`List.meta.versionId`.
1. Die zurückgelieferte Summary-Liste bildet die Grundlage für nachfolgende Änderungsoperationen.

###### Alternativer Ablauf

1. Es kann auch`GET /List?code=[code]&_sort=-date&_count=1`ausgeführt werden, um die Summary-Liste OHNE referenzierte Ressourcen abzurufen.

##### Sequenzdiagramm

