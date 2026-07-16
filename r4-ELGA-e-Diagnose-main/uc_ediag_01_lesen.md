# HL7.AT.FHIR.ELGA.EDIAG.R4\Lesen - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* **Lesen**

## Lesen

# Lesen

### Sub_UC_eDiag_01_01 - Vergangene Versionen einer Liste abrufen (List-History-Read)

Der History Read dient ausschließlich der Anzeige historischer Versionen einer Liste. Die Fachanwendung stellt bereits persistierte historische Collection Bundles unverändert bereit. Der Zugriff erfolgt lesend und ermöglicht keine nachfolgende Bearbeitung der Liste.

#### Ablauf

1. Der GDA fürht ein**GET**(Suche) auf den List-Typ aus.
1. Die Fachanwendung prüft, ob Listen entsprechend der Suchparameter vorhanden sind.
1. Werden keine Listen gebunden, wird ein leeres Ergebnis zurückgeliefert.
1. Wird zumindest eine Liste gefunden, liefert die Fachanwendung ein**Search-Bundle**zurück.
Dieses**Search-Bundle**enthält:
* die List-Ressource 

* alle referenzierten Ressourcen (Patient, Practitioner, Condition, Procedure, AllergyIntolerance)

Beim List History Read erfolgt **keine Veränderung** von Flags, Status oder Inhalten durch die Fachanwendung.
 Der Zugriff dient ausschließlich der Anzeige bzw. Informationsabfrage von aktueller oder historischer Listversionen.

#### Sequenzdiagramm

**Beispiele für Zugriffe mittels Suchparameter:**

* **Aktuelle Listenversion** der relevanten Diagnosen (Conditions) mit dem Suchparameter Patient abrufen: `GET [base]/Patient/[id]/List?_include=List:patient&_include=List:source&_include:iterate=List:item&_count=1&_sort=-date&code=http://loinc.org|11450-4`
* **Alle Listenversionen** der relevanten Operationen (Procedures) mit dem Suchparameter Patient abrufen: `GET [base]/Patient/[id]/List?_include=List:patient&_include=List:source&_include:iterate=List:item&_sort=-date&code=http://loinc.org|47519-4`

### List-Read

List Read dient dem **Abruf der Liste und der Vorbereitung einer nachfolgenden Änderung**. 

#### Ablauf

1. Der GDA führt einen**POST $list-read**aus.
1. Die Fachanwendung**prüft auf Existenz**der Liste/n für die angegebene Patientin bzw. den angegebenen Patienten.
1. Ist keine Liste vorhanden, wird dieser erstellt siehe Liste-initialisieren und
1. eine leere Liste mit dem emptyReason notstarted wird zurückgeliefert.
1. Existiert bereits eine Liste, wird von der Fachanwendung aus diesem ein Search-Bundle zur Auslieferung bereitgestellt. Die Inhalte werden von der Fachanwendung wie folgt aufbereitet:
* Falls der vorherige GDA neue Listeneinträge hinzugefügt hat (List.entry.flag hat den Wert **new**), werden diese auf **unchanged** gesetzt.

* Falls der vorherige GDA Listenneinträge beendet hat (deren List.entry.flag haben den Wert **removed**), werden diese Einträge aus der Liste **entfernt**.

* Falls der vorherige GDA **alle vorhandenen Einträge** mit removed gekennzeichnet hat, wird List.emptyReason mit **nilknown** zurückgeliefert, um nachfolgenden GDA zu signalisieren, dass der Patient zum Zeitpunkt des letzten Schreibens keine Einträge hatte.


1. Die Fachanwendung liefert an den GDA die Liste und alle referenzierten Ressourcen.
1. Ziel ist ein neutraler, weiterbearbeitbarer Zustand für den abrufenden GDA.

#### Sequenzdiagramm List Read

### List-Write

List Write ist eine eigenständige Operation, die ausschließlich im Kontext eines **zuvor ausgeführten** [List-Read](interactions.md#list-read) erfolgen darf.

#### Ablauf

1. Der GDA übermittelt via**POST $list-write**die aktualisierte Liste als**List Bundle**:
* alle **neuen und geänderten und zu entfernenden Ressourcen** sind **inline** im Bundle enthalten,
* alle **unveränderten Ressourcen** werden nur **referenziert**.

1. Die Fachanwendung prüft, ob der übermittelte**List.identifier**mit dem List.identifier der temporär gespeicherten Listenversion**übereinstimmt**(d.h. es wurde zwischenzeitlich kein anderer Schreibvorgang durchgeführt).
1. Stimmt der List.identifier nicht überein, lehnt die Fachanwendung das Speichern ab. Es muss erneut ein List-Read ausgeführt werden. Die Änderungen sind anschließend auf Basis der aktuellen Listversion erneut vorzunehmen und zu speichern.
1. Ist die Prüfung erfolgreich, validiert die Fachanwendung die neue Liste und stellt sicher, dass keine unzulässigen Zustandsübergänge vorgenommen wurden.
1. Bei erfolgreicher Validierung:
* werden die übermittelten Änderungen in die Ressourcen übernommen,
* und auf Basis der aktualisierten Ressource erstellt die Fachanwendung ein neue Version der Liste als eigene List-Instanz, die als **neue Liste persistiert** wird.

1. Der GDA erhält eine Meldung, dass die Liste erfolgreich aktualisiert wurde.

#### Sequenzdiagramm List Write

### Abgelehnter List Write

#### Ablauf

1. **GDA 1**führt einen**POST $list-read**auf die Liste einer Patientin bzw. eines Patienten durch.
1. Die Fachanwendung prüft, ob eine Liste existiert.
1. Die Fachanwendung liefert die aktuelle Liste als**Collection Bundl**mit dem aktuellen**List.identifier**„123" an GDA 1 aus.
1. **GDA 1**beginnt mit der**fachlichen Bearbeitung**der Liste.
1. Währenddessen führt**GDA 2**ebenfalls ein**List-Read**auf dieselbe Liste durch.
1. Die Fachanwendung liefert auch an GDA 2 die aktuelle Liste mit dem List.identifier „123" aus.
1. GDA 2 bearbeitet die Liste.
1. GDA 2 sendet zuerst mittels**POST $list-write**ein Transaction Bundle mit den vorgenommenen Änderungen.
1. Die Fachanwendung prüft, ob der im Transaction Bundle enthaltene**List.identifier**mit dem aktuellen List.identifier der zuletzt gespeicherten Liste übereinstimmt.
1. Die Prüfung verläuft erfolgreich, da beide den Wert „123" besitzen.
1. Die Fachanwendung validiert die übermittelten Änderungen und prüft insbesondere, ob keine unzulässigen Zustandsübergänge vorliegen.
1. Die Änderungen werden übernommen und eine neue Version der Liste wird persistiert.
1. Dabei wird ein neuer List.identifier erzeugt, beispielsweise „124".
1. GDA 2 erhält eine Meldung, dass die Aktualisierung erfolgreich durchgeführt wurde.
1. Anschließend sendet GDA 1 mittels**POST $ListWrite**seine ebenfalls auf Basis des ursprünglichen List.identifier „123" vorgenommenen Änderungen.
1. Die Fachanwendung prüft erneut den übermittelten List.identifier gegen die aktuell persistierte Diagnosenliste.
1. Die Prüfung schlägt fehl, da die aktuelle Liste mittlerweile den List.identifier „124" besitzt.
1. Die Fachanwendung lehnt das Speichern ab.
1. GDA 1 erhält eine Fehlermeldung, dass zwischenzeitlich eine neuere Version der Liste gespeichert wurde.
1. GDA 1 muss erneut einen**POST $list-read**durchführen, die zwischenzeitlich vorgenommenen Änderungen prüfen und gegebenenfalls in die aktuelle Version übernehmen, bevor ein neuer Schreibvorgang erfolgen kann.

#### Sequenzdiagramm Abgelehnter List Write

### Read/Search von Diagnosen, Prozeduren sowie Allergien und Intoleranzen

Read/Search ermöglicht den lesenden Zugriff auf Diagnosen, Prozeduren sowie Allergien und Intoleranzen eines Patienten. Über die Interaktion können sowohl alle vorhandenen Ressourcen eines Ressourcentyps als auch durch Angabe von Suchparametern eingeschränkte Ergebnismengen abgerufen werden.

Die Fachanwendung stellt die vorhandenen Ressourcen des gewählten Ressourcentyps als Search-Bundle bereit. Der Zugriff erfolgt ausschließlich lesend; Änderungen an Status, Inhalten oder Listenzuordnungen werden durch diese Interaktion nicht durchgeführt.

#### Anwendungsbeispiele

Die Read/Search-Interaktion kann beispielsweise für folgende Szenarien verwendet werden:

* **Gesamtansicht**: Abruf aller vorhandenen Diagnosen, Prozeduren oder Allergien und Intoleranzen eines Patienten.
* **Gezielte Suche**: Einschränkung der Ergebnismenge durch Suchparameter, z. B. Suche nach bestimmten Diagnosen oder Ressourcen mit bestimmten Merkmalen. 
* Mit der **gezielten Suche** kann auch der Verlauf einer Krankheit dargestellt werden, indem nach allen Ressourcen (eines Typs) gesucht wird, die denselben Business-Identifier haben.
 
* **Auswahl für Folgeoperationen**: Ermittlung einzelner Ressourcen, die anschließend gelöscht ($delete) oder storniert ($storno) werden sollen.

#### Ablauf

1. Der GDA oder ELGA-Teilnehmer wählt den gewünschten Ressourcentyp (Condition, Procedure oder AllergyIntolerance) aus.
1. Der GDA oder ELGA-Teilnehmer führt ein**GET**auf /Patient/[id]/Condition/, /Patient/[id]/Procedure/ und/oder /Patient/[id]/AllergyIntolerance/ aus, siehe[Transaktionen](transaction.md#Transaktionen).
1. Optional können Suchparameter angegeben werden, um die Treffermenge einzuschränken.
1. Die Fachanwendung führt die Suche anhand der angegebenen Kriterien durch.
1. Die Fachanwendung liefert ein Search-Bundle mit den gefundenen Ressourcen zurück.
1. Sind keine Ressourcen vorhanden bzw. entsprechen keine Ressourcen den Suchkriterien, wird ein Search-Bundle ohne Einträge zurückgeliefert.

