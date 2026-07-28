# HL7.AT.FHIR.ELGA.EDIAG.R4\Lesen - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* **Lesen**

## Lesen

# Lesen

> UC-01 - Dieses Kapitel beschreibt die lesenden Zugriffe auf Summary-Listen, Gesamtansicht sowie auf die Einzelressourcen Diagnosen, Prozeduren oder Allergien und Intoleranzen. Je nach Anwendungsfall stehen unterschiedliche Interaktionen zur Verfügung.

## Interaktionen auf Listenressourcen

### Vergangene Versionen einer Summary-Liste abrufen (List-History-Read)

> Sub:UC_01_01 - Der History Read dient ausschließlich der Anzeige historischer Versionen der Summary-Liste. Die Fachanwendung stellt bereits persistierte historische Search-Bundles unverändert bereit. Der Zugriff erfolgt lesend und ermöglicht keine nachfolgende Bearbeitung der Liste. Vorversionen der Summary-Listen können in chronologischer Reihenfolge dargestellt werden – absteigend nach Erstellungsdatum, d.h. die jüngste Version zuerst.

#### Ablauf

1. Der GDA fürht ein**GET**(Suche) auf den List-Typ aus.
1. Die Fachanwendung führt die Suche anhand der angegebenen Suchparameter durch.
1. Werden keine Listen gebunden, wird ein leeres Ergebnis zurückgeliefert.
1. Wird zumindest eine Liste gefunden, liefert die Fachanwendung ein**Search-Bundle**zurück.
Dieses**Search-Bundle**enthält:
* die List-Ressource 

* alle referenzierten Ressourcen (Patient, Practitioner, Condition, Procedure, AllergyIntolerance)

Beim List History Read erfolgt **keine Veränderung** von Flags, Status oder Inhalten durch die Fachanwendung.
 Der Zugriff dient ausschließlich der Anzeige bzw. Informationsabfrage von aktueller oder historischer Summary-Listversionen.

#### Sequenzdiagramm

**Beispiele für Zugriffe mittels Suchparameter:**

* **Aktuelle Listenversion** der relevanten Diagnosen (Conditions) mit dem Suchparameter Patient abrufen: `GET [base]/Patient/[id]/List?_include=List:patient&_include=List:source&_include:iterate=List:item&_count=1&_sort=-date&code=http://loinc.org|11450-4`
* **Alle Listenversionen** der relevanten Operationen (Procedures) mit dem Suchparameter Patient abrufen: `GET [base]/Patient/[id]/List?_include=List:patient&_include=List:source&_include:iterate=List:item&_sort=-date&code=http://loinc.org|47519-4`

### Liste und zugehörige Ressourcen abrufen (List-Read)

> Sub:UC_01_02 - List Read dient dem **Abruf der Liste und der Vorbereitung einer nachfolgenden Änderung**. 

#### Ablauf

1. Der GDA führt einen**POST $list-read**aus.
1. Die Fachanwendung**prüft auf Existenz**der Liste/n für die angegebene Patientin bzw. den angegebenen Patienten.
1. Ist keine Liste vorhanden, wird dieser erstellt und eine leere Liste mit dem emptyReason notstarted wird zurückgeliefert.
1. Existiert bereits eine Liste, stellt die Fachanwendung ein Search-Bundle einschließlich aller referenzierten Ressourcen zur Auslieferung bereit.
* Falls der vorherige GDA neue Listeneinträge hinzugefügt hat (List.entry.flag hat den Wert **new**), werden diese auf **unchanged** gesetzt.

* Falls der vorherige GDA Listenneinträge beendet hat (deren List.entry.flag haben den Wert **removed**), werden diese Einträge aus der Liste **entfernt**, siehe [Workflowmanagement](workflowmanagement.md#auswirkung-derzugriffsart-auf-list-entry-flag).

* Falls der vorherige GDA **alle vorhandenen Einträge** mit removed gekennzeichnet hat, wird List.emptyReason mit **nilknown** zurückgeliefert, um nachfolgenden GDA zu signalisieren, dass der Patient zum Zeitpunkt des letzten Schreibens keine Einträge hatte.


1. Die Fachanwendung liefert an den GDA die Liste inkl. ETag für[Optimistic Locking](https://hl7.org/fhir/http.html#concurrency)und alle referenzierten Ressourcen.
1. Die zurückgelieferte Liste bildet die Grundlage für nachfolgende Änderungsoperationen.

#### Sequenzdiagramm

## Interaktionen auf Einzelressourcen

### Diagnosen, Prozeduren sowie Allergien und Intoleranzen als Einzelressource lesen und suchen (Read/Search)

> Sub:UC_01_03 - Read/Search ermöglicht den gezielten lesenden Zugriff auf Diagnosen, Prozeduren sowie Allergien und Intoleranzen eines Patienten. Über die Interaktion können sowohl alle vorhandenen Ressourcen eines Ressourcentyps als auch durch Angabe von Suchparametern eingeschränkte Ergebnismengen abgerufen werden.

Die Fachanwendung stellt die vorhandenen Ressourcen des gewählten Ressourcentyps als Search-Bundle bereit. Der Zugriff erfolgt ausschließlich lesend; Änderungen an Status, Inhalten oder Listenzuordnungen werden durch diese Interaktion nicht durchgeführt.

#### Anwendungsbeispiele

Die Read/Search-Interaktion kann beispielsweise für folgende Szenarien verwendet werden:

* **Gesamtansicht**: Abruf aller vorhandenen Einträge eines Patienten, z.B. Diagnosen, Prozeduren oder Allergien und Intoleranzen, unabhängig davon, ob sie Teil der Summary-Liste sind. Standardmäßig werden die letzten 30 Einträge, absteigend nach Datum sortiert zurückgeliefert. Nach dem Abruf kann eine eigene Filterung der Einträge durch das Clientsystem erfolgen.
* **Gezielte Suche**: Einschränkung der Ergebnismenge durch Suchparameter, z. B. zur Suche nach bestimmten Diagnosen, Ressourcen mit definierten Merkmalen oder zur Festlegung der Anzahl der zurückzuliefernden Einträge. 
* Mit der **gezielten Suche** kann auch der historische Verlauf einer Ressource (z.B. einer Erkrankung) dargestellt werden, indem nach allen Ressourcen desselben Typs (Business-Identifier) gesucht wird.
 
* **Auswahl für Folgeoperationen**: Ermittlung einzelner Ressourcen, die anschließend gelöscht ($delete) oder storniert ($storno) werden sollen.

#### Ablauf

1. Der GDA oder ELGA-Teilnehmer wählt den gewünschten Ressourcentyp (Condition, Procedure oder AllergyIntolerance) aus.
1. Der GDA oder ELGA-Teilnehmer führt ein**GET**auf /Patient/[id]/Condition/, /Patient/[id]/Procedure/ und/oder /Patient/[id]/AllergyIntolerance/ aus, siehe[Transaktionen](transaction.md#Transaktionen).
1. Optional können Suchparameter angegeben werden, um die Treffermenge einzuschränken.
1. Die Fachanwendung führt die Suche anhand der angegebenen Kriterien durch.
1. Die Fachanwendung liefert ein Search-Bundle mit den gefundenen Ressourcen zurück.
1. Sind keine Ressourcen vorhanden bzw. entsprechen keine Ressourcen den Suchkriterien, wird ein Search-Bundle ohne Einträge zurückgeliefert.

