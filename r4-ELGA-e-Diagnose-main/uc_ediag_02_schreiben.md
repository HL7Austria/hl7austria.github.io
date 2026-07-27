# HL7.AT.FHIR.ELGA.EDIAG.R4\Schreiben - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* **Schreiben**

## Schreiben

# Schreiben

> UC-02 -Dieses Kapitel beschreibt die Schreiboperationen der e-Diagnose-Fachanwendung. Im Mittelpunkt stehen die Aktualisierung von Listen sowie die Erfassung, Zuordnung, Entfernung, Stornierung und Löschung von Diagnosen, Prozeduren oder Allergien und Intoleranzen.

## Interaktionen auf Listenressourcen

### Leere Liste fachlich bestätigen

ToDo: Die Überprüfung aus diesem UC wird bereits bei List-Read durchgeführt. Teil des ELGA Core. emptyReason #nilknown. Im eDiag wir müssen zusätzlich angeben welcher ListType es ist. Eine leere Liste mit dem Wert **emptyReason = nilknown** bedeutet, dass für den Patienten derzeit keine relevanten Einträge vorliegen. Der Status dokumentiert somit explizit das Fehlen von relevanten Einträgen und ist von einer noch nicht befüllten Liste zu unterscheiden.

Vorschlag:

> Sub_UC_eDiag_02_01 - Dieser Ablauf beschreibt die fachliche Bestätigung einer initialisierten, leeren Liste durch den GDA und die anschließende Speicherung des bestätigten Zustands in der Fachanwendung. Eine leere Liste mit dem Wert **emptyReason = nilknown** bedeutet, dass für den Patienten derzeit keine Einträge vorliegen. Der Status dokumentiert somit explizit das Fehlen von relevanten Einträgen und ist von einer noch nicht befüllten Liste **emptyReason = notstarted** zu unterscheiden.

#### Ablauf

ToDo: Nur der GDA setzt das nilknown und nicht die Fachanwendung

1. Der GDA führt einen**POST $list-read**aus.
1. Die Fachanwendung prüft die angeforderte Liste und stellt fest, dass keine List.entry vorhanden sind.
1. Ist**List.emptyReason = notstarted**, handelt es sich um eine initialisierte, aber noch nicht fachlich bestätigte leere Liste.
1. Die Fachanwendung stellt dem GDA die leere Liste zur Bestätigung bereit.
1. Der GDA bestätigt, dass für die Person aktuell keine Einträge dokumentiert werden müssen.
1. Die Fachanwendung setzt daraufhin**List.emptyReason = nilknown**und liefert die aktualísierte Liste inkl. ETag für[Optimistic Locking](https://hl7.org/fhir/http.html#concurrency)zurück.
1. Anschließend führt die Fachanwendung einen**POST $list-write**aus, um den bestätigten Zustand der Liste zu speichern.

#### Sequenzdiagramm

### Liste aktualisieren (List-Write)

> Sub_UC_eDiag_02_02 - Nach dem Erfassen einer neuen medizinischen Ressource Sub_UC_eDiag_02_07 - Ressource erfassen, kann diese in eine Liste aufgenommen werden. Die Fachanwendung kennzeichnet die Ressource anschließend als relevant (meta.tag = relevant).

Vorschlag: List Write ist eine eigenständige Operation, die ausschließlich im Kontext eines **zuvor ausgeführten** [List-Read](uc_ediag_01_lesen.md#list-read) erfolgen darf.

#### Ablauf

1. Der GDA übermittelt via**POST $list-write**die aktualisierte Liste als**List Bundle**inkl. ETag für[Optimistic Locking](https://hl7.org/fhir/http.html#concurrency):
* alle **neuen und geänderten und zu entfernenden Ressourcen** sind **inline** im Bundle enthalten,
* alle **unveränderten Ressourcen** werden nur **referenziert**.

1. Die Fachanwendung prüft anhand des im HTTP-Header übermittelten**ETag**, ob die vom GDA bearbeitete Listenversion noch der aktuellen Version entspricht.
1. Stimmen die ETags nicht überein, lehnt die Fachanwendung den Schreibvorgang ab, siehe[Abgelehntes Write](https://build.fhir.org/ig/HL7Austria/ELGA-Core-R4/branches/main/interactions.html#abgelehntes-plan-write). Der GDA muss erneut ein $list-read durchführen und seine Änderungen auf Basis der aktuellen Listversion erneut vornehmen.
1. Ist die Prüfung erfolgreich, validiert die Fachanwendung die neue Liste und stellt sicher, dass keine unzulässigen Zustandsübergänge vorgenommen wurden.
1. Bei erfolgreicher Validierung:
* werden die übermittelten Änderungen in die Ressourcen übernommen,
* und auf Basis der aktualisierten Ressource erstellt die Fachanwendung ein neue Version der Liste als eigene List-Instanz, die als **neue Liste persistiert** wird.

1. Der GDA erhält eine Meldung, dass die Liste erfolgreich aktualisiert wurde.

#### Sequenzdiagramm

</g></svg></div> 
 –>

### Einträge zur Liste hinzufügen

> Sub_UC_eDiag_02_03 -Nach dem Erfassen einer neuen medizinischen Ressource [Ressource erfassen](uc_ediag_02_schreiben.md#ressource-erfassen) kann dieser Eintrag in eine Liste aufgenommen werden. Die Fachanwendung kennzeichnet die Ressource anschließend als relevant (meta.tag = relevant).

#### Ablauf

1. Der GDA legt eine neue (Condition, Procedure oder AllergyIntolerance), siehe[Ressource erfassen](uc_ediag_02_schreiben.md#ressource-erfassen)an oder eine bestehende Ressource, die in die Liste aufgenommen werden soll.
1. Dafür führt der GDA ein**POST $list-read**aus und erhält das aktuelle Search-Bundle der ausgewählten List-Ressource.
1. Der GDA wählt die bestehende Ressource aus und fügt sie als neuen List.entry in die Liste ein.
* **List.entry.flag = new**
* **List.entry.item** referenziert die bestehende Ressource.

1. Der GDA führt ein**POST $list-write**aus und übermittelt die aktualisierte Liste an die Fachanwendung.
1. Die Fachanwendung kennzeichnet die referenzierte Ressource mit**meta.tag = relevant**, wodurch ihre Zugehörigkeit zur Liste gekennzeichnet wird.

#### Sequenzdiagramm

### Einträge aus einer Liste entfernen

> Sub_UC_eDiag_02_04 -Die Referenz auf die Ressource wird aus der Liste entfernt (removed). Die referenzierte Ressource bleibt unverändert bestehen. Die Fachanwendung entfernt die Kennzeichnung als relevant (meta.tag = relevant).

ToDo: Aus Liste entfernen, Ressource bleibt bestehen, verliert nur Listzugehörigkeit oder Löschen - Ressource wird vollständig entfernt Ausblenden und Löschen? Löscht der Teilnehmer einen Eintrag, muss die Historienversion mitgelöscht werden? Betsehende Referenzen auf gelöschte Ressourcen. Lösche ich C, sage ich such mir alle List-Versionen mit C, und lösch mir alle C. Wie weit greifen, muss ich mich als Bürger durch alle Vorversionen durchklicken. FHIR Spezifikation über Historie - nachlesen, wie die Regel ist! Was bedeutet eine Aktualisierung auf eine historische Version?

Vorschlag: Einträge innerhalb einer Liste durch ELGA-Teilnehmer:in löschen. Die Referenz auf die Ressource wird aus der Liste entfernt (removed). Die referenzierte Ressource bleibt unverändert bestehen. Die Fachanwendung entfernt die Kennzeichnung als relevant (meta.tag = relevant). ToDo: Aus Liste entfernen, Ressource bleibt bestehen, verliert nur Listzugehörigkeit oder Löschen - Ressource wird vollständig entfernt Ausblenden und Löschen? Löscht der Teilnehmer einen Eintrag, muss die Historienversion mitgelöscht werden? Betsehende Referenzen auf gelöschte Ressourcen. Lösche ich C, sage ich such mir alle List-Versionen mit C, und lösch mir alle C. Wie weit greifen, muss ich mich als Bürger durch alle Vorversionen durchklicken. FHIR Spezifikation über Historie - nachlesen, wie die Regel ist! Was bedeutet eine Aktualisierung auf eine historische Version?

### Reihenfolge der Listeneinträge ändern

> Sub_UC_eDiag_02_05 -Der GDA kann die Reihenfolge der Listeinträge ändern. Die Einträge selbst bleiben dabei unverändert. Evtl. auch in den ELGA Core mitnehmen.

## Interaktionen auf Einzelressourcen

Im Rahmen der Anwendung eDiagnose werden unter dem Begriff „Diagnose“ die FHIR-Ressourcen Condition (Diagnosen), Procedure (Prozeduren) sowie AllergyIntolerance (Allergien und Intoleranzen) zusammengefasst.

### Diagnose erfassen

> Sub_UC_eDiag_02_06 - Der GDA erfasst neue Diagnosen, Prozeduren sowie Allergien und Intoleranzen über die e-Diagnose Fachanwendung, siehe [Transaktionen](transaction.md#Transaktionen).

#### Ablauf

1. Der GDA wählt den gewünschten Ressourcentyp (Condition, Procedure oder AllergyIntolerance) aus.
1. Der GDA erstellt eine neue Ressource und erfasst die erforderlichen fachlichen Informationen.
1. Der GDA führt ein**POST**auf /Patient/[id]/Condition/, /Patient/[id]/Procedure/ oder /Patient/[id]/AllergyIntolerance/ aus und übermittelt die neue Ressource an die e-Diagnose Fachanwendung.
1. Die**Fachanwendung**validiert die übermittelte Ressource.
1. Ist die Validierung erfolgreich, wird die neue Ressource gespeichert und dem GDA eine erfolgreiche Erstellung mittels**HTTP 201 Created**bestätigt. Ist die Validierung nicht erfolgreich, wird die Ressource nicht gespeichert. Die Fachanwendung liefert ein**OperationOutcome**mit den aufgetretenen Validierungsfehlern zurück.

#### Sequenzdiagramm

### Daignose bearbeiten

> Sub_UC_eDiag_02_07 - Bestehende relevante Listeinträge fachlich bearbeiten TODo: Der GDA kann Einträge in einer Liste fachlich bearbeiten - stimmt nicht mehr? 1. Schritt, ich erstelle eine neue 2 Schritt: Will ich sie verknüpfen, muss ich auf die bestehenden Ressourcen zugreifen mit dem Identifier 123, der muss vom Client zwischengespeichert werden, damit dieser an die FA mitgesendet werden kann.

#### Ablauf


### Diagnose löschen

> Sub_UC_eDiag_02_08 - Der ELGA-Teilnehmer kann via ELGA-Portal einzelne oder alle Diagnosen unwiderruflich löschen. Dabei ist es irrelevant, ob eine zu löschende Diagnose als relevant gekennzeichnet ist oder nicht. Die Inhalte der zu löschenden Diagnose werden durch die Fachanwendung entfernt und die Diagnose als "gelöscht" markiert. Sollte die Diagnose in der aktuellen Liste referenziert sein, erstellt die Fachanwendung eine neue Version der Liste ohne die gelöschte Diagnose.

#### Ablauf

* Um einen Eintrag zu löschen, führt der ELGA-Teilnehmer über das Portal ein `$list-read` oder ein `GET` auf die Gesamtmenge der Diagnosen aus (siehe [Read/Search von Diagnosen, Prozeduren sowie Allergien und Intoleranzen](uc_ediag_06_int_list.md#read-search-von-diagnosen-prozeduren-sowie-allergien-und-intoleranzen)) und markiert die zu löschenden Einträge.
* Durch Bestätigung wird die `$delete`-Operation ausgeführt.
* Die Fachanwendung bearbeitet die zu löschende Diagnose folgendermaßen: 
* Alle optionalen Felder `0..` werden geleert.
* Alle verpflichtenden Felder `1..` werden 
* mit der [data-absent-reason-Extension](http://hl7.org/fhir/StructureDefinition/data-absent-reason) und dem Wert `unknown` versehen
* im Fall von den folgenden codierten Elementen mit `required` Bindings auf folgende Werte gesetzt 
* `AllergyIntolerance.clinicalStatus = inactive`
* `AllergyIntolerance.verificationStatus = unconfirmed`
* `Condition.clinicalStatus = inactive`
* `Condition.verificationStatus = unconfirmed`
* `Procedure.status = completed`
 
 
 
* Die Fachanwendung erstellt eine neue Version der Liste, sollte die zu löschende Diagnose Teil der aktuellen Liste gewesen sein.

![](patient_delete.drawio.svg)

### Diagnose stornieren

> Sub_UC_eDiag_02_09 - Der GDA kann einen oder mehrere Diagnosen aufgrund einer falschen Eingabe stornieren. Dabei ist es irrelevant, ob eine zu stornierende Diagnose als relevant gekennzeichnet ist oder nicht.

Sollte die Diagnose als relevant gekennzeichnet gewesen sein und will sie der GDA nach der Stornierung nicht mehr in der Liste der relevanten Einträge haben, muss die Diagnose aus der Liste der relevanten Einträge entfernt werden, siehe Einträge aus einer Liste entfernen.

#### Ablauf

* Um einen Eintrag zu stornieren, führt der GDA ein `$list-read` oder ein `GET` auf die Gesamtmenge der Diagnosen aus (siehe [Read/Search von Diagnosen, Prozeduren sowie Allergien und Intoleranzen](uc_ediag_06_int_list.md#read-search-von-diagnosen-prozeduren-sowie-allergien-und-intoleranzen)) und markiert die zu stornierenden Einträge.
* Durch Bestätigung wird die `$storno`-Operation ausgeführt.
* Die Fachanwendung bearbeitet die zu stornierende Diagnose folgendermaßen: 
* `AllergyIntolerance.verificationStatus = entered-in-error`
* `Condition.verificationStatus = entered-in-error`
* `Procedure.status = entered-in-error`
 

