# HL7.AT.FHIR.ELGA.EDIAG.R4\Schreiben - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* **Schreiben**

## Schreiben

# Schreiben

> UC-02 

Dieses Kapitel beschreibt die Schreiboperationen der e-Diagnose-Fachanwendung. Im Mittelpunkt stehen die Aktualisierung von Listen sowie die Erfassung, Zuordnung, Entfernung, Stornierung und Löschung von Diagnosen, Prozeduren oder Allergien und Intoleranzen.

## Interaktionen auf Listenressourcen

### Leere Liste fachlich bestätigen

> Sub:UC_02_01 

Dieser Ablauf beschreibt die fachliche Bestätigung einer initialisierten, leeren Liste durch den GDA und die anschließende Speicherung des bestätigten Zustands in der Fachanwendung. Eine leere Liste mit dem Wert **emptyReason = nilknown** bedeutet, dass für den Patienten derzeit keine Einträge vorliegen. Der Status dokumentiert somit explizit das Fehlen von relevanten Einträgen und ist von einer noch nicht befüllten Liste **emptyReason = notstarted** zu unterscheiden.

#### Ablauf

1. Der GDA führt einen**POST $list-read**aus.
1. Die Fachanwendung prüft die angeforderte Liste und stellt fest, dass keine List.entry vorhanden sind.
1. Ist**List.emptyReason = notstarted**, handelt es sich um eine initialisierte, aber noch nicht fachlich bestätigte leere Liste.
1. Bestätigt der GDA, dass für die Person aktuell keine Einträge dokumentiert werden müssen, setzt er**List.emptyReason = nilknown**.
1. Der GDA führt anschließend einen**POST $list-write**mit der aktualisierten Liste durch, um den bestätigten Zustand zu speichern.
1. Die Fachanwendung speichert die aktualisierte Liste inkl. ETag für[Optimistic Locking](https://hl7.org/fhir/http.html#concurrency)zurück.

#### Sequenzdiagramm

### Liste aktualisieren (List-Write)

> Sub:UC_02_02 

List Write, siehe [List-Write](https://build.fhir.org/ig/HL7Austria/ELGA-Core-R4/branches/main/interactions.html#list-write) ist eine eigenständige Operation, die ausschließlich im Kontext eines **zuvor ausgeführten** [List-Read](uc_ediag_01_lesen.md#list-read) erfolgen darf. Nach dem Erfassen einer neuen medizinischen Ressource, siehe [Diagnose erfassen](uc_ediag_02_schreiben.md#diagnose-erfassen), kann diese in einer Summary-Liste aufgenommen werden. Die Fachanwendung kennzeichnet die Ressource anschließend als relevant (meta.tag = relevant).

ToDo: Patient Compartment für die Endpunkte `GET [base]/Patient/[id]/Condition/`, `GET [base]/Patient/[id]/Procedure/` oder `GET [base]/Patient/[id]/AllergyIntolerance/`

### Reihenfolge der Listeneinträge ändern

> Sub:UC_02_05 

Der GDA kann die gemeinsame Reihenfolge der Summary-Listeinträge ändern. Die Einträge selbst bleiben dabei unverändert. ToDo: Evtl. auch in den ELGA Core mitnehmen.

### Diagnose in der Liste bearbeiten

> Sub:UC_02_06 

Dieser Sub-UC fasst die zur fachlichen Bearbeitung einer bestehenden Ressource erforderlichen Einzelschritte zusammen. Die Bearbeitung erfolgt durch Stornierung der bestehenden Ressource und Erfassung einer neuen fachlich korrigierten Ressource. Dadurch bleiben Änderungen nachvollziehbar und versioniert.

#### Ablauf

1. **GDA**führt ein**POST $list-read**auf die Summary-Liste der Person aus.
1. Die Fachanwendung liefert die aktuelle Summary-Liste inkl. ETag für[Optimistic Locking](https://hl7.org/fhir/http.html#concurrency)und alle referenzierten Ressourcen.
1. **GDA**wählt die fachlich zu bearbeitende(n) Ressourcen aus.
* GDA übernimmt den Identifier der bestehenden Ressource für die weitere Bearbeitung ?
* GDA storniert die bestehende Ressource gemäß Sub:UC_02_08 – Diagnose stornieren.
* GDA erfasst die fachlich geänderte Ressource gemäß Sub:UC_02_07 – Diagnose erfassen und übernimmt dabei den Identifier der stornierten Ressource.

1. übernhame des Identifier der bisherigenb Ressource
1. **GDA**führt ein**POST $list-write**aus und übermittelt die aktualisierte Summary-Liste.

#### Sequenzdiagramm

## Interaktionen auf Einzelressourcen

### Diagnose erfassen

> Sub:UC_02_07 

Der GDA erfasst eine neue Diagnose, Prozedure oder Allergie und Intoleranz über die e-Diagnose Fachanwendung, die nicht Teil der Summary-Liste ist, siehe [Transaktionen](transaction.md#Transaktionen) kann in der Folge durch eine Änderung, siehe Sub:UC_02_03 zur Liste hinzugefügtr werden.

#### Ablauf

1. Der GDA wählt den gewünschten Ressourcentyp (Condition, Procedure oder AllergyIntolerance) aus.
1. Der GDA erstellt eine neue Ressource und erfasst die erforderlichen fachlichen Informationen.
1. Der GDA führt ein**POST**auf /Patient/[id]/Condition/, /Patient/[id]/Procedure/ oder /Patient/[id]/AllergyIntolerance/ aus und übermittelt die neue Ressource an die e-Diagnose Fachanwendung.
1. Die**Fachanwendung**validiert die übermittelte Ressource.
1. Ist die Validierung erfolgreich, wird die neue Ressource gespeichert und dem GDA eine erfolgreiche Erstellung mittels**HTTP 201 Created**bestätigt. Ist die Validierung nicht erfolgreich, wird die Ressource nicht gespeichert. Die Fachanwendung liefert ein**OperationOutcome**mit den aufgetretenen Validierungsfehlern zurück.

#### Sequenzdiagramm

### Diagnose stornieren

> Sub:UC_02_08 

Der GDA kann einen oder mehrere Diagnosen aufgrund einer falschen Eingabe stornieren. Dabei ist es irrelevant, ob eine zu stornierende Diagnose in der Summary-List referenziert wird oder nicht.

Sollte die Diagnose als relevant gekennzeichnet gewesen sein und will sie der GDA nach der Stornierung nicht mehr in der Liste der relevanten Einträge haben, muss die Diagnose aus der Liste der relevanten Einträge entfernt werden, siehe Einträge aus einer Liste entfernen. In Ergänzung müssen der GDA, der die Stornierung durchgeführt hat, den Stornierungszeitpunkt und den Vermerk festhalten.

#### Ablauf

* Um einen Eintrag zu stornieren, führt der GDA ein `$list-read` oder ein `GET` auf die Gesamtmenge der Diagnosen aus (siehe [Read/Search von Diagnosen, Prozeduren sowie Allergien und Intoleranzen](uc_ediag_06_int_list.md#read-search-von-diagnosen-prozeduren-sowie-allergien-und-intoleranzen)) und markiert die zu stornierenden Einträge.
* Durch Bestätigung wird die `$storno`-Operation ausgeführt.
* Die Fachanwendung bearbeitet die zu stornierende Diagnose folgendermaßen: 
* `AllergyIntolerance.verificationStatus = entered-in-error`
* `Condition.verificationStatus = entered-in-error`
* `Procedure.status = entered-in-error`
 

