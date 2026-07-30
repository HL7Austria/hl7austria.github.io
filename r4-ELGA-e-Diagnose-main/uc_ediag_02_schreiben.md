# HL7.AT.FHIR.ELGA.EDIAG.R4\Schreiben - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* **Schreiben**

## Schreiben

# Schreiben

> UC-02 

Dieses Kapitel beschreibt die Schreiboperationen der e-Diagnose-Fachanwendung. Im Mittelpunkt stehen die Aktualisierung von Summary-Listen sowie die Erfassung, Zuordnung, Entfernung, Stornierung und Löschung von Einzeleinträgen.

## Interaktionen auf Listenressourcen

### Leere Summary-Liste fachlich bestätigen

> Sub:UC_02_01 

Dieser Ablauf beschreibt die fachliche Bestätigung einer initialisierten, leeren Summary-Liste durch den GDA und die anschließende Speicherung des bestätigten Zustands in der Fachanwendung. Eine leere Summary-Liste mit dem Wert **emptyReason = nilknown** bedeutet, dass für den Patienten derzeit keine Summary-Einträge vorliegen. Der Status dokumentiert somit explizit das Fehlen von Summary-Einträgen und ist von einer noch nicht befüllten Liste **emptyReason = notstarted** zu unterscheiden.

#### Ablauf

1. Der GDA führt einen**POST $list-read**aus.
1. Die Fachanwendung prüft die angeforderte Summary-Liste und stellt fest, dass kein List.entry vorhanden ist.
1. Ist**List.emptyReason = notstarted**, handelt es sich um eine initialisierte, aber noch nicht fachlich bestätigte leere Summary-Liste.
1. Bestätigt der GDA, dass für die Person aktuell keine Summary-Einträge dokumentiert werden müssen, setzt er**List.emptyReason = nilknown**.
1. Der GDA führt anschließend einen**POST $list-write**mit der aktualisierten Summary-Liste durch, um den bestätigten Zustand zu speichern.
1. Die Fachanwendung speichert die aktualisierte Summary-Liste inkl. ETag für[Optimistic Locking](https://hl7.org/fhir/http.html#concurrency)zurück.

#### Sequenzdiagramm

### Summary-Liste aktualisieren (List-Write)

> Sub:UC_02_02 

[List-Write](https://build.fhir.org/ig/HL7Austria/ELGA-Core-R4/branches/main/interactions.html#list-write) ist eine eigenständige Operation, die ausschließlich im Kontext eines **zuvor ausgeführten** [List-Read](uc_ediag_01_lesen.md#list-read) erfolgen darf. Nach dem Erfassen einer neuen medizinischen Ressource, siehe [Einträge erfassen](uc_ediag_02_schreiben.md#einträge-erfassen), kann diese in einer Summary-Liste aufgenommen werden. Die Fachanwendung kennzeichnet die Ressource anschließend als relevant (meta.tag = relevant).

ToDo: Patient Compartment für die Endpunkte `GET [base]/Patient/[id]/Condition/`, `GET [base]/Patient/[id]/Procedure/` oder `GET [base]/Patient/[id]/AllergyIntolerance/`

### Einträge zur Summary-Liste hinzufügen

> Sub:UC_02_03 Der GDA verfasst einen neuen Eintrag, siehe [Eintrag erfassen](uc_ediag_02_schreiben.md#ressource-erfassen) oder möchte einen bestehenden Eintrag in die Summary-Liste aufnehmen. Die Fachanwendung kennzeichnet diesen Eintrag anschließend als relevant (meta.tag = relevant).

#### Ablauf

1. Der GDA führt ein**POST $list-read**aus und erhält das aktuelle Search-Bundle.
1. Der GDA wählt die bestehende Ressource aus und fügt sie als neuen List.entry in die Liste ein.
* **List.entry.flag = new**
* **List.entry.item** referenziert die bestehende Ressource.

1. Der GDA führt ein**POST $list-write**aus und übermittelt die aktualisierte Liste an die Fachanwendung.
1. Die Fachanwendung kennzeichnet die referenzierte Ressource mit**meta.tag = relevant**, wodurch ihre Zugehörigkeit zur Summary-Liste gekennzeichnet wird.

#### Sequenzdiagramm

### Einträge aus Summary-Liste entfernen

> Sub:UC_02_04 Nur entfernen, das weitere Vorgehen wird hier nicht beschrieben. Stornieren kann als Folge durchgeführt werden. Die Referenz auf die Ressource wird aus der Summary-Liste entfernt (removed). Die referenzierte Ressource bleibt unverändert bestehen. Die Fachanwendung entfernt die Kennzeichnung als relevant (meta.tag = relevant).

ToDo: Aus Liste entfernen, Ressource bleibt bestehen, verliert nur Listzugehörigkeit oder Löschen - Ressource wird vollständig entfernt Ausblenden und Löschen? Löscht der Teilnehmer einen Eintrag, muss die Historienversion mitgelöscht werden? Betsehende Referenzen auf gelöschte Ressourcen. Lösche ich C, sage ich such mir alle List-Versionen mit C, und lösch mir alle C. Wie weit greifen, muss ich mich als Bürger durch alle Vorversionen durchklicken. 

### Reihenfolge der Einträge in der Summary-Liste ändern

> Sub:UC_02_05 

Der GDA kann die Reihenfolge der Summary-Einträge ändern. Die Einträge selbst bleiben dabei unverändert. ToDo: Evtl. auch in den ELGA Core mitnehmen.

### Einträge in der Summary-Liste bearbeiten

> Sub:UC_02_06 

Dieser Sub-UC ist eine Kombination aus einzelnen Schritte. Es fasst die zur fachlichen Bearbeitung einer bestehenden Ressource erforderlichen Einzelschritte zusammen. Die Reihenfolge der Schritte kann variieren. Bearbeitung erfolgt durch Stornierung der bestehenden Ressource und Erfassung einer neuen fachlich korrigierten Ressource. Dadurch bleiben Änderungen nachvollziehbar und versioniert.

#### Ablauf

1. **GDA**führt ein**POST $list-read**gemäß List-Read aus.
1. Die Fachanwendung liefert die aktuelle Summary-Liste inkl. ETag für[Optimistic Locking](https://hl7.org/fhir/http.html#concurrency)und alle referenzierten Ressourcen zurück.
1. **GDA**wählt die fachlich zu bearbeitende(n) Summary-Einträge aus und übernimmt den Business-Identifier der bestehenden Ressource.
* GDA storniert die bestehende Ressource gemäß Sub:UC_02_08 – Eintrag stornieren.
* GDA erfasst die fachlich geänderte Ressource gemäß Sub:UC_02_07 – Eintrag erfassen.

1. Übernhame des Identifier der bisherigen zu stornierenden Ressource.
1. **GDA**führt ein**POST $list-write**gemäß List-Write durch und übermittelt die aktualisierte Summary-Liste.

#### Sequenzdiagramm

## Interaktionen auf Einzelressourcen

### Eintrag erfassen

> Sub:UC_02_07 

Der GDA erfasst einen neuen Eintrag über die e-Diagnose Fachanwendung, die nicht Teil der Summary-Liste ist. Dieser Eintrag kann in Folge durch eine Änderung, siehe Sub:UC_02_03 zur Liste hinzugefügte werden.

#### Ablauf

1. Der GDA wählt den gewünschten Ressourcentyp (Condition, Procedure oder AllergyIntolerance) aus.
1. Der GDA erstellt einen neuen Eintrag und erfasst die erforderlichen fachlichen Informationen.
1. Der GDA führt ein**POST**auf /Patient/[id]/Condition/, /Patient/[id]/Procedure/ oder /Patient/[id]/AllergyIntolerance/ aus und übermittelt die neue Ressource an die e-Diagnose Fachanwendung.
1. Die**Fachanwendung**validiert die übermittelte Ressource.
1. Ist die Validierung erfolgreich, wird die neue Ressource gespeichert und dem GDA eine erfolgreiche Erstellung mittels**HTTP 201 Created**bestätigt. Ist die Validierung nicht erfolgreich, wird die Ressource nicht gespeichert. Die Fachanwendung liefert ein**OperationOutcome**mit den aufgetretenen Validierungsfehlern zurück.

#### Sequenzdiagramm

### Eintrag stornieren

> Sub:UC_02_08 

Der GDA kann eine oder mehrere Einträge aufgrund einer falschen Eingabe stornieren. Dabei ist es irrelevant, ob ein zu stornierender Eintrag in der Summary-List referenziert wird oder nicht. Im Zuge der Stornierung kann der GDA einen Vermerk festhalten.

ToDo:Im Zuge der Stornierung kann der GDA einen Vermerk festhalten. Die OID des GDA´s und der Stornierungszeitpunkt wird durch die Fachanwendung gesetzt.

#### Ablauf

* Um einen Eintrag zu stornieren, führt der GDA ein `$list-read` oder ein `GET` auf die Gesamtmenge der Diagnosen aus (siehe [Read/Search von Diagnosen, Prozeduren sowie Allergien und Intoleranzen](uc_ediag_06_int_list.md#read-search-von-diagnosen-prozeduren-sowie-allergien-und-intoleranzen)) und markiert die zu stornierenden Einträge.
* Optional kann der GDA einen Grund für die Stornierung angeben.
* Durch Bestätigung wird die `$storno`-Operation ausgeführt.
* Die Fachanwendung bearbeitet den zu stornierenden Eintrag folgendermaßen: 
* `AllergyIntolerance.verificationStatus = entered-in-error`
* `Condition.verificationStatus = entered-in-error`
* `Procedure.status = entered-in-error`
 
* Die Fachanwendung speichert den Zeitpunkt der Stornierung ab und übernimmt ursprünglichen Wert des verification.Status bzw. status

### Einträge bearbeiten in der Gesamtansicht

