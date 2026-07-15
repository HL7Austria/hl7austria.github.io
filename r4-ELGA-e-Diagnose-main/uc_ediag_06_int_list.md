# HL7.AT.FHIR.ELGA.EDIAG.R4\Interaktionen mit Listenressourcen - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* **Interaktionen mit Listenressourcen**

## Interaktionen mit Listenressourcen

ToDo: Wording Liste, eDiagnosenliste,…

Listenressourcen bilden die organisatorische Struktur der e-Diagnose und dienen der Zusammenstellung fachlicher Einzelressourcen zu den Kategorien Diagnosen, Prozeduren sowie Allergien und Intoleranzen. Die Zugehörigkeit zu einer Liste bestimmt die fachliche Relevanz einer Ressource (meta.tag=relevant). Die nachfolgenden Sub-Use-Cases beschreiben die Initialisierung und Verwaltung dieser Listen sowie das Aufnehmen, Entfernen und Umordnen von Einträgen. Fachliche Änderungen an Diagnosen, Prozeduren sowie Allergien und Intoleranzen erfolgen ausschließlich über die jeweiligen Einzelressourcen.

### List-History-Read

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

#### Sequenzdiagramm List History Read

**Beispiele für Zugriffe mittels Suchparameter:**

* **Aktuelle Listenversion** der relevanten Diagnosen (Conditions) mit dem Suchparameter Patient abrufen: `GET [base]/Patient/[id]/List?_include=List:patient&_include=List:source&_include:iterate=List:item&_count=1&_sort=-date&code=http://loinc.org|11450-4`
* **Alle Listenversionen** der relevanten Operationen (Procedures) mit dem Suchparameter Patient abrufen: `GET [base]/Patient/[id]/List?_include=List:patient&_include=List:source&_include:iterate=List:item&_sort=-date&code=http://loinc.org|47519-4`

### List-Read

List Read dient dem **Abruf der Liste und der Vorbereitung einer nachfolgenden Änderung**. 

#### Ablauf

1. Der GDA führt einen**POST $list-read**auf das Search-Bundle aus, dass die Liste mit allen zugehörigen relevanten Ressourcen enthält.
1. Die Fachanwendung**prüft auf Existenz**der Liste für die angegebene Patientin bzw. den angegebenen Patienten.
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

1. Der GDA übermittelt via**POST $ListWrite**die aktualisierte Liste als**List Bundle**:
* alle **neuen und geänderten und zu entfernenden Ressourcen** sind **inline** im Bundle enthalten,
* alle **unveränderten Ressourcen** werden nur **referenziert**.

1. Die Fachanwendung prüft, ob der übermittelte**List.identifier**mit dem List.identifier der temporär gespeicherten Listenversion**übereinstimmt**(d.h. es wurde zwischenzeitlich kein anderer Schreibvorgang durchgeführt).
1. Stimmt der List.identifier nicht überein, lehnt die Fachanwendung das Speichern ab. Es muss erneut ein List Read ausgeführt werden. Die Änderungen sind anschließend auf Basis der aktuellen Listversion erneut vorzunehmen und zu speichern.
1. Ist die Prüfung erfolgreich, validiert die Fachanwendung die neue Liste und stellt sicher, dass keine unzulässigen Zustandsübergänge vorgenommen wurden.
1. Bei erfolgreicher Validierung:
* werden die übermittelten Änderungen in die Ressourcen übernommen,
* und auf Basis der aktualisierten Ressource erstellt die Fachanwendung ein neues Collection Bundle, das als **neue Lsite persistiert** wird.

1. Der GDA erhält eine Meldung, dass die Liste erfolgreich aktualisiert wurde.

#### Sequenzdiagramm List Write

### Abgelehnter List Write

#### Ablauf

1. **GDA 1**führt einen**POST $ListRead**auf die Liste einer Patientin bzw. eines Patienten durch.
1. Die Fachanwendung prüft, ob eine Liste existiert.
1. Die Fachanwendung liefert die aktuelle Liste als**Collection Bundl**mit dem aktuellen**List.identifier**„123" an GDA 1 aus.
1. **GDA 1**beginnt mit der**fachlichen Bearbeitung**der Liste.
1. Währenddessen führt**GDA 2**ebenfalls ein**List Read**auf dieselbe Liste durch.
1. Die Fachanwendung liefert auch an GDA 2 die aktuelle Liste mit dem List.identifier „123" aus.
1. GDA 2 bearbeitet die Liste.
1. GDA 2 sendet zuerst mittels**POST $ListWrite**ein Transaction Bundle mit den vorgenommenen Änderungen.
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
1. GDA 1 muss erneut einen**POST $ListRead**durchführen, die zwischenzeitlich vorgenommenen Änderungen prüfen und gegebenenfalls in die aktuelle Version übernehmen, bevor ein neuer Schreibvorgang erfolgen kann.

#### Sequenzdiagramm Abgelehnter List Write

### Sub_UC_eDiag_06_01 - Nach Initialisierung leere Liste bestätigen

ToDo: Die Überprüfung aus diesem UC wird bereits bei List-Read durchgeführt. Teil des ELGA Core. emptyReason #nilknown. Im eDiag wir müssen zusätzlich angeben welcher ListType es ist. Eine leere Liste mit dem Wert **emptyReason = nilknown** bedeutet, dass für den Patienten derzeit keine relevanten Einträge vorliegen. Der Status dokumentiert somit explizit das Fehlen von relevanten Einträgen und ist von einer noch nicht befüllten Liste zu unterscheiden.

### Sub_UC_eDiag_06_02 - Bestehende Ressource in eine Liste aufnehmen

Nach dem Erfassen einer neuen medizinischen Ressource [Sub_UC_eDiag_06_09](uc_ediag_06_int_res.md#sub-uc-ediag-06-09) kann diese in eine Liste aufgenommen werden. Die Fachanwendung kennzeichnet die Ressource anschließend als relevant (meta.tag = relevant).

#### Ablauf

### Sub_UC_eDiag_06_03 - Bestehende relevante Listeinträge fachlich bearbeiten

TODo: Der GDA kann Einträge in einer Liste fachlich bearbeiten - stimmt nicht mehr? 1. Schritt, ich erstelle eine neue 2 Schritt: Will ich sie verknüpfen, muss ich auf die bestehenden Ressourcen zugreifen mit dem Identifier 123, der muss vom Client zwischengespeichert werden, damit dieser an die FA mitgesendet werden kann.

#### Ablauf

### Sub_UC_eDiag_06_04 - Reihenfolge von Listeinträge ändern

Der GDA kann die Reihenfolge der Listeinträge ändern. Die Einträge selbst bleiben dabei unverändert. Evtl. auch in den ELGA Core mitnehmen.

### Sub_UC_eDiag_06_05 - Einträge aus einer Liste entfernen

Die Referenz auf die Ressource wird aus der Liste entfernt (removed). Die referenzierte Ressource bleibt unverändert bestehen. Die Fachanwendung entfernt die Kennzeichnung als relevant (meta.tag = relevant).

#### Ablauf

List.entry wird entfernt, die referenzierte Ressource bleibt bestehen.

### Sub_UC_eDiag_06_08 - Liste durch ELGA-Teilnehmer:in löschen

Der ELGA-Teilnehmer kann via ELGA-Portal eine aktuelle, einzelne oder alle historischen Versionen einer Liste unwiderruflich löschen.

Hierfür markiert der Patient die zu löschende Liste und führt über das Portal ein `DELETE` aus, mit dem Resultat, dass die ausgewählten Listen durch die Fachanwendung gelöscht werden.

