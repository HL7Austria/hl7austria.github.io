# HL7.AT.FHIR.ELGA.EDIAG.R4\Lesen - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* **Lesen**

## Lesen

# Lesen

> UC-01 

Dieses Kapitel beschreibt die lesenden Zugriffe der e-Diagnose-Fachanwendung auf Listen, Gesamtansicht sowie auf die Einträge in den Einzelressourcen. Je nach Anwendungsfall stehen unterschiedliche Interaktionen zur Verfügung.

## Interaktionen auf Einzelressourcen

### Einträge als Einzelressource abrufen

> Sub:UC_01_01 

Dieser Use-Case ermöglicht den lesenden Zugriff auf alle Einträge von Diagnosen, Prozeduren sowie Allergien und Intoleranzen eines Patienten jeweils als Gesamtansicht. Die Interaktion liefert standardmäßig die 30 zuletzt erstellten Ressourcen, absteigend nach Erstellungsdatum sortiert, zurück. Da eine fachliche Bearbeitung eines Eintrags die Erstellung einer neuen Ressource impliziert, entspricht das Erstellungsdatum dem Zeitpunkt der letzten fachlichen Bearbeitung. Die Fachanwendung stellt die vorhandenen Ressourcen des gewählten Ressourcentyps als Search-Bundle bereit. Der Zugriff erfolgt ausschließlich lesend; Änderungen an Status, Inhalten oder Listenzuordnungen werden durch diese Interaktion nicht durchgeführt.

#### Ablauf

1. Der GDA oder ELGA-Teilnehmer wählt den gewünschten Ressourcentyp (Condition, Procedure oder AllergyIntolerance) aus.
1. Der GDA oder ELGA-Teilnehmer führt ein`GET`auf`/Condition`,`/Procedure`und/oder`/AllergyIntolerance`aus, siehe[Transaktionen](transaction.md#Transaktionen).
1. **Optional**kann der Abfrageparameter**_count**angegeben werden, um die Anzahl der zurückgelieferten Ressourcen festzulegen. Standardmäßig werden die 30 zuletzt erstellten Ressourcen, absteigend nach Erstellungsdatum sortiert, zurückgeliefert.
1. Die Fachanwendung liefert ein Search-Bundle mit den gefundenen Einträgen zurück.
1. Sind keine Ressourcen vorhanden bzw. entsprechen keine Ressourcen den Suchkriterien, wird ein Search-Bundle ohne Einträge zurückgeliefert.

## Interaktionen auf Listenressourcen

### Vergangene Versionen einer Summary-Liste abrufen (List-History-Read)

> Sub:UC_01_02 

History Read dient ausschließlich der Anzeige historischer Versionen der Summary-Liste. Die Fachanwendung stellt bereits persistierte historische Search-Bundles unverändert bereit. Der Zugriff erfolgt lesend und ermöglicht keine nachfolgende Bearbeitung der Summary-Liste. Vorversionen der Summary-Listen können in chronologischer Reihenfolge dargestellt werden – absteigend nach Erstellungsdatum, d.h. die jüngste Version zuerst.

#### Ablauf

1. Der GDA fürht ein**GET**(Suche) auf den List-Typ aus.
1. Die Fachanwendung führt die Suche anhand der angegebenen Suchparameter durch.
1. Werden keine Summary-Listen gefunden, wird ein leeres Ergebnis zurückgeliefert.
1. Wird zumindest eine Summary-Liste gefunden, liefert die Fachanwendung ein**Search-Bundle**zurück.
Dieses**Search-Bundle**enthält:
* die List-Ressource 

* alle referenzierten Ressourcen (Patient, Practitioner, Condition, Procedure, AllergyIntolerance)

Beim List History Read erfolgt **keine Veränderung** von Flags, Status oder Inhalten durch die Fachanwendung.
 Der Zugriff dient ausschließlich der Anzeige bzw. Informationsabfrage von aktueller oder historischer Summary-Listversionen.

#### Sequenzdiagramm

**Beispiele für Zugriffe mittels Suchparameter:**

* **Aktuelle Summary-Listenversion** der Summary-Einträge (Conditions) mit dem Suchparameter Patient abrufen: `GET /List?_include=List:patient&_include=List:source&_include:iterate=List:item&_count=1&_sort=-date&code=http://loinc.org|11450-4`
* **Alle Summary-Listenversionen** der Summary-Einträge (Procedures) mit dem Suchparameter Patient abrufen: `GET /List?_include=List:patient&_include=List:source&_include:iterate=List:item&_sort=-date&code=http://loinc.org|47519-4`

### Aktuelle Summary-Liste abrufen

> Sub:UC_01_03

Diese Abfrage dient dem **Abruf der aktuellen Summary-Liste für eine Art von Einträgen**.

#### Ablauf

1. Der GDA führt ein**`GET /List?code=[code]&_sort=-date&_count=1&include=*`**aus.
1. Die Fachanwendung liefert als Ergebnis ein SearchSet-Bundle, das die Summary-Liste inklusive aller referenzierter Ressourcen enthält, sowie den`ETag`für[Optimistic Locking](https://hl7.org/fhir/http.html#concurrency)an den GDA.
1. Die zurückgelieferte Summary-Liste bildet die Grundlage für nachfolgende Änderungsoperationen.

##### Alternativer Ablauf

1. Es kann auch**`GET /List?code=[code]&_sort=-date&_count=1`**ausgeführt werden, um die Summary-Liste OHNE referenzierte Ressourcen abzurufen.

#### Sequenzdiagramm

