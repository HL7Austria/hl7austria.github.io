# HL7.AT.FHIR.ELGA.EMED.R4\Zugriffsarten auf den Medikationsplan - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* **Zugriffsarten auf den Medikationsplan**

## Zugriffsarten auf den Medikationsplan

Im Folgenden werden standardisierte Interaktionen für den lesenden und schreibenden Zugriff auf den Medikationsplan erläutert, die für alle technischen Use Cases relevant sind.

### Read-only-Zugriff

Beim Read-only-Zugriff wird der aktuelle Medikationsplan (zuletzt gespeichertes Collection Bundle) von der Fachanwendung **unverändert** bereitgestellt.

Das **Collection Bundle** enthält:

* die List-Ressource des Medikationsplans
* alle referenzierten Ressourcen (z.B. MedicationRequest, Patient, Practitioner) vollständig (inline)
* Es erfolgt keine Veränderung von Flags, Status oder Inhalten.
* Der Zugriff dient ausschließlich der Anzeige bzw. Information.

Ist zum Zeitpunkt der Abfrage kein Medikationsplan für den/die Patient:in vorhanden, liefert die Fachanwendung ein **leeres Ergebnis** zurück.

#### Ablauf

**Abruf aktueller Medikationsplan:**

* Aktuelle Planversion mit dem Suchparameter Patient abrufen: GET [base]/Bundle?type=collection&_count=1&_sort=-timestamp&list.subject={bPK-GH}
* Alle Planversionen mit dem Suchparameter Patient abrufen: GET [base]/Bundle?type=collection&_sort=-timestamp&list.subject={bPK-GH}

**Abruf historischer Medikationsplanversionen mit Suchkriterien:**

* Abfrage alle historischen collections zu dem Patienten, die nach dem angegebenen Datum gespeichert wurden und list.entry.flag=removed haben: 
* GET [base]/Bundle?type=collection&_sort=-timestamp&timestamp=ge2025-01-01&list.subject={bPK-GH}&list.entry.flag=removed (TODO query prüfen)
 

### Read-to-Write-Zugriff

Der Read-to-Write-Zugriff dient der Vorbereitung einer Änderung des Medikationsplans:

* Bei einem Read-to-Write-Zugriff prüft die Fachanwendung zunächst, ob bereits ein Medikationsplan vorhanden ist. Ist dies nicht der Fall, wird dieser erstellt (siehe [Sub_UC_06_01 - Initial erstellter Medikationsplan](Sub_UC_eMed_06.md#sub_uc_06_01---initial-erstellter-medikationsplan)) und zurückgeliefert.
* Existiert bereits ein Medikationsplan (d.h. es wurde bereits ein Collection Bundle persistiert), wird von der Fachanwendung aus diesem ein **Collection Bundle** zur Auslieferung erstellt: 
* mit einem neuen oder bereits temporär gespeicherten **List.identifier** (wird von der Fachanwendung zur späteren Schreibintegritätsprüfung verwaltet)
* die Inhalte werden von der Fachanwendung wie folgt aufbereitet: 
* Wenn List.entry.flag **new** → **unchanged**
* Wenn List.entry.flag **changed** → **unchanged**
* Wenn List.entry.flag **removed** → Einträge werden aus der Liste **entfernt**
* Einträge mit abgelaufenem Behandlungszeitraum bleiben erhalten 
 
* die Fachanwendung liefert diese zurück an den GDA: 
* inkl. List und aller referenzierten Ressourcen (inline)
* ergänzt um den List.identifier
* Ziel ist ein neutraler, weiterbearbeitbarer Zustand für den nächsten GDA
 
 
* Der temporär gespeicherte List.identifier für die Zugriffsintegrität wird von der Fachanwendung, separat von den FHIR Ressourcen verwalten.

#### Custom Operations

[$readtowrite](OperationDefinition-AtEmed.List.ReadtoWrite.md)

### Write-Zugriff

Der Write-Zugriff ist eine eigenständige Operation, die ausschließlich im Kontext eines vorherigen Read-to-Writes erfolgen darf:

* Der GDA übermittelt den aktualisierten Medikationsplan als Transaction Bundle: 
* Inline enthalten: neue und geänderte Ressourcen
* Referenziert: unveränderte Ressourcen
 
* Die Fachanwendung prüft u.a. ob der übermittelte **List.identifier** mit dem List.identifier der temporär gespeicherten Medikationsplanversion **übereinstimmt** (d.h. es wurde zwischenzeitlich kein anderer Schreibvorgang durchgeführt) 
* Stimm der List.identifier nicht überein, lehnt die Fachanwendung die Aktualisierung des Medikationsplans ab. Es muss erneut ein Read-to-Write ausgeführt werden und die Aktualisierungen übernommen werden, bevor ein neuerlicher Speicherversuch gestartet werden kann.
 
* Bei erfolgreicher Prüfung: 
* werden die übermittelten Änderungen in die Ressourcen übernommen und
* der **neue Medikationsplan persistiert** (Collection Bundle)
 

#### Custom Operations

[$write](OperationDefinition-AtEmed.List.Write.md)

#### Ablauf

#### Abgelehnter Write-Zugriff

* Wenn weitere Akteure (hier GDA 2) ein Read-to-Write ausführen, während GDA 1 das von der Fachanwendung übermittelte Bundle bearbeitet, erhalten sie: 
* dasselbe Collection Bundle (mit dem selben List.identifier), das zuvor schon GDA 1 übermittelt wurde.
 
* Nur bei jenem Akteur, der zuerst ein Write ausführt, wird der temporär in der Fachanwendung vorgehaltene List.identifier mit dem eigenen im TransactionBundle.List.identifier übereinstimmen, da der termporäre List.identifier danach gelöscht wird.
* Bei einem späteren Schreibversuch eines anderen Akteurs mit dem ursprünglich gleichen List.identifier wird die Prüfung daher fehlschlagen und ein Speichern abgelehnt.
* Erst ein weiteres Read-to-Write löst wieder das generieren eines zur Auslieferung bereitgestellten temporären Collection Bundles inkl. neuem List.identifier aus.

#### Ablauf

