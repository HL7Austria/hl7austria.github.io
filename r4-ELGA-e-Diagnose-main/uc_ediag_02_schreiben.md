# HL7.AT.FHIR.ELGA.EDIAG.R4\Schreiben - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* **Schreiben**

## Schreiben

# Schreiben

> UC-02 

Dieses Kapitel beschreibt die Schreiboperationen der e-Diagnose-Fachanwendung. Im Mittelpunkt stehen die Aktualisierung von Summary-Listen sowie die Erfassung, Zuordnung, Entfernung, Stornierung und Löschung von medizinischen Einzeleinträgen (Ressourcen).

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

### Eintrag zur Summary-Liste hinzufügen

> Sub:UC_02_03 Der GDA verfasst einen neuen Eintrag, siehe [Eintrag erfassen](uc_ediag_02_schreiben.md#ressource-erfassen) oder möchte einen bestehenden Eintrag in die Summary-Liste aufnehmen. Die Fachanwendung kennzeichnet diesen Eintrag anschließend als relevant (meta.tag = relevant).

#### Ablauf

1. Der GDA führt ein**POST $list-read**aus und erhält das aktuelle Search-Bundle.
1. Der GDA wählt die bestehende Ressource aus
1. Der GDA fügt die Ressource als List.entry in die Liste ein.
* **List.entry.flag = new**
* **List.entry.item** referenziert die bestehende Ressource.

1. Der GDA führt ein**POST $list-write**aus und übermittelt die aktualisierte Liste an die Fachanwendung.
1. Die Fachanwendung kennzeichnet die referenzierte Ressource mit**meta.tag = relevant**, wodurch ihre Zugehörigkeit zur Summary-Liste gekennzeichnet wird.

#### Sequenzdiagramm

### Eintrag aus Summary-Liste entfernen

> Sub:UC_02_04 

Ein bestehender Eintrag kann aus der Summary-Liste entfernt werden, ohne dass die Ressource selbst gelöscht oder geändert wird. Hierzu wird die Referenz auf die Ressource aus der Summary-Liste entfernt. Die Fachanwendung hebt anschließend die Kennzeichnung der Ressource als relevant (meta.tag = relevant) auf. Die Ressource bleibt weiterhin verfügbar und kann zu einem späteren Zeitpunkt erneut in die Summary-Liste aufgenommen werden.

#### Ablauf

1. Der GDA führt ein**POST $list-read**aus und erhält das aktuelle Search-Bundle.
1. Der GDA wählt den zu entferndenen Eintrag oder die Einträge aus der Summary-Liste aus.
1. Der GDA kennzeichnet die entsprechenden List.entry mit**List.entry.flag = removed**.
1. Der GDA führt ein**POST list-write**aus und übermittelt die aktuelle Summary-Liste.
1. Die Fachanwendung entfernt die mit List.entry.flag = removed gekennzeichneten Einträge aus der Summary-Liste und entfernt bei den referenzierten Ressourcen die Kennzeichnung meta.tag = relevant.

### Reihenfolge der Einträge in der Summary-Liste ändern

> Sub:UC_02_05 
  Der GDA kann die Reihenfolge der Einträge innerhalb einer Summary-Liste ändern. Dabei werden ausschließlich die Listeneinträge neu angeordnet; die referenzierten Ressourcen und deren fachliche Inhalte bleiben unverändert. Durch das Speichern entsteht eine neue Version der Summary-Liste.

#### Ablauf

1. Der GDA führt ein**POST $list-read**aus und erhält das aktuelle Search-Bundle.
1. Der GDA ordnet die Einträge der Summary-Liste in die gewünschte Reihenfolge.
1. Der GDA führt einen POST $list-write aus und übermittelt die aktualisierte Summary-Liste.
1. Die Fachanwendung speichert die neue Reihenfolge als aktuelle Version der Summary-Liste. Die referenzierten Ressourcen bleiben unverändert.

### Einträge in der Summary-Liste bearbeiten

> Sub:UC_02_06 
 Dieser Sub-UC beschreibt die fachliche Bearbeitung von Einträgen einer Summary-Liste. Die tatsächliche Reihenfolge der Bearbeitungsschritte kann je nach Anwendungsfall variieren. Es ist nicht notwendigerweise vorgesehen, dass $list-read am Anfang und $list-write am Ende des Ablaufs stehen. Durch die Verwendung eines bereits bestehenden Business-Identifier wird bei der Bearbeitung die Zuordnung einer alten Version zu einer neuen Version einer Ressource ermöglicht. Dadurch bleibt die Verbindung zwischen den Versionen erhalten.

#### Ablauf

1. Der GDA führt einen POST $list-read aus und erhält das aktuelle Search-Bundle..
1. Der GDA wählt die fachlich zu bearbeitenden Summary-Einträge aus.
1. Der GDA führt die erforderlichen Bearbeitungsschritte für den jeweiligen Anwendungsfall aus. Dazu gehört beispielsweise:
* Übernahme des bestehenden Business-Identifier für die neue Version einer Ressource.
* Erfassung einer neuen bzw. fachlich geänderten Ressource gemäß Sub – Eintrag erfassen.

1. Der GDA führt einen POST $list-write aus und übermittelt die aktualisierte Summary-Liste an die Fachanwendung. Die fachlich geänderte Ressource wird dabei neu angelegt und erhält durch die Übernahme des Business-Identifier die Verbindung zur bisherigen Ressource.

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
 

Der GDA kann eine oder mehrere Einträge aufgrund einer falschen Eingabe stornieren. Dabei ist es irrelevant, ob ein zu stornierender Eintrag in der Summary-List referenziert wird oder nicht. Im Zuge der Stornierung kann der GDA einen Vermerk festhalten. Die OID des GDA´s und der Stornierungszeitpunkt wird durch die Fachanwendung gesetzt.

#### Ablauf

* Um einen Eintrag zu stornieren, führt der GDA ein `$list-read` oder ein `GET` auf die Gesamtmenge der Diagnosen aus (siehe [Read/Search von Diagnosen, Prozeduren sowie Allergien und Intoleranzen](uc_ediag_06_int_list.md#read-search-von-diagnosen-prozeduren-sowie-allergien-und-intoleranzen)) und markiert die zu stornierenden Einträge.
* Optional kann der GDA einen Grund für die Stornierung angeben.
* Durch Bestätigung wird die `$storno`-Operation ausgeführt.
* Die Fachanwendung bearbeitet den zu stornierenden Eintrag folgendermaßen: 
* `AllergyIntolerance.verificationStatus = entered-in-error`
* `Condition.verificationStatus = entered-in-error`
* `Procedure.status = entered-in-error`
 
* Die Fachanwendung speichert den Zeitpunkt der Stornierung ab und übernimmt ursprünglichen Wert des verification.Status bzw. status

### Eintrag bearbeiten in der Gesamtansicht

