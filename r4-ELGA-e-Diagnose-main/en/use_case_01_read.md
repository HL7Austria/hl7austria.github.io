# Lesender Zugriff - ELGA e-Diagnose R4 (Draft) v0.1.0

## Lesender Zugriff

Dieses Kapitel beschreibt die lesenden Zugriffe auf einzelne Einträge sowie die jeweiligen Summary-Listen der e-Diagnose-Fachanwendung. Je nach Anwendungsfall stehen unterschiedliche Interaktionen zur Verfügung.

Die hier dargestellten technischen Anwendungsfälle ergänzen die fachlichen Anwendungsfälle ["Diagnosen lesen" TODO Link]().

### Interaktionen auf Einzelressourcen

#### Einzelnen Eintrag abrufen

Dieser Anwendungsfall ermöglicht den lesenden Zugriff auf einen einzelnen Eintrag.

##### Ablauf

1. Der GDA oder ELGA-Teilnehmer hat einen der folgenden Requests durchgeführt:
1. [Abruf aller Einträge](#alle-einträge-abrufen)
1. [Abruf der aktuellen Summary-Liste](#aktuelle-summary-liste-abrufen)
1. [Abruf der Summary-Listenversionen](#versionen-einer-summary-liste-abrufen)

1. Auf Basis des zuvor ausgeführten Requests wählt der GDA oder ELGA-Teilnehmer einen Eintrag aus, der durch dessen`id`eindeutig identifiziert wird.
1. Der GDA führt ein`GET /[Condition|Procedure|AllergyIntolerance]/[id]`aus, um den ausgewählten Eintrag von der e-Diagnose-Fachanwendung abzurufen.

#### Alle Einträge abrufen

Dieser Anwendungsfall ermöglicht den lesenden Zugriff auf alle Einträge einer Art eines Patienten in Form einer Gesamtansicht.

Die Interaktion liefert standardmäßig die 30 zuletzt erstellten Einträge, absteigend nach Erstellungsdatum sortiert, zurück. Da eine fachliche Bearbeitung eines Eintrags die Erstellung einer neuen Ressource impliziert, entspricht das Erstellungsdatum dem Zeitpunkt der letzten fachlichen Bearbeitung. Die Fachanwendung stellt die vorhandenen Einträge des gewählten Ressourcentyps als SearchSet-Bundle bereit.

##### Ablauf

1. Der GDA oder ELGA-Teilnehmer wählt den gewünschten Ressourcentyp (Condition, Procedure oder AllergyIntolerance) der abzurufenden Einträge aus.
1. Der GDA oder ELGA-Teilnehmer führt ein`GET /[Condition|Procedure|AllergyIntolerance]`aus.
1. **Optional**kann der Abfrageparameter`_count`angegeben werden, um die Anzahl der zurückgelieferten Ressourcen festzulegen. Standardmäßig werden die 30 zuletzt erstellten Ressourcen, absteigend nach Erstellungsdatum sortiert, zurückgeliefert.
1. Die Fachanwendung liefert ein SearchSet-Bundle mit den gefundenen Einträgen zurück.
1. Sind keine Ressourcen vorhanden bzw. entsprechen keine Ressourcen den Suchkriterien, wird ein leeres SearchSet-Bundle zurückgeliefert.

### Interaktionen auf Listenressourcen

#### Aktuelle Summary-Liste abrufen

Dieser Anwendungsfall dient dem Abruf der aktuellen Summary-Liste für eine Art von Einträgen.

##### Ablauf

1. Der GDA führt ein`GET /List?code=[code]&_sort=-date&include=*`aus.
1. Die Fachanwendung liefert als Ergebnis ein SearchSet-Bundle, das die Summary-Liste inklusive aller referenzierter Ressourcen enthält, an den GDA. Die Information für[Optimistic Locking](https://hl7.org/fhir/http.html#concurrency)ist in`List.meta.versionId`enthalten.
1. Die zurückgelieferte Summary-Liste bildet die Grundlage für nachfolgende Änderungsoperationen.

###### Alternativer Ablauf

1. Es kann auch`GET /List?code=[code]&_sort=-date`ausgeführt werden, um die Summary-Liste OHNE referenzierte Ressourcen abzurufen.

##### Sequenzdiagramm

#### Versionen einer Summary-Liste abrufen

Dieser Anwendungsfall dient der Anzeige aktuellen und historischer Versionen der Summary-Liste. Der Zugriff erfolgt lesend und ermöglicht keine Bearbeitung der jeweiligen Summary-Listenversion.

##### Ablauf

1. Der GDA ruft die[aktuelle Summary-Liste](use_case_01_read.md#aktuelle-summary-liste-abrufen)ab, wodurch er das entsprechende SearchSet-Bundle und damit die`id`der Summary-Liste erhält.
1. In einem zweiten Request kann der GDA jetzt auf alle Versionen (auch die aktuelle) der Summary-Liste zugreifen.
1. Die e-Diagnose Fachanwendung liefert ein History-Bundle zurück, das alle Summary-Listenversionen enthält.`GET /List/[id]/_history`
1. Zu einer Summary-Listenversion können die[referenzierten Diagnosen von der e-Diagnose Fachanwendung](#einzelnen-eintrag-abrufen)abgefragt werden.

###### Alternativer Ablauf

1. Alternativ kann auch direkt auf eine bestimmte Version zugegriffen werden:`GET /List/[id]/_history/[vid]`
1. Die e-Diagnose Fachanwendung liefert die entsprechende Summary-Listenversion zurück.

##### Sequenzdiagramm

