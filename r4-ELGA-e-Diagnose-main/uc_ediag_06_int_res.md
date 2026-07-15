# HL7.AT.FHIR.ELGA.EDIAG.R4\Interaktionen mit fachlichen Einzelressourcen - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* **Interaktionen mit fachlichen Einzelressourcen**

## Interaktionen mit fachlichen Einzelressourcen

Fachliche Einzelressourcen repräsentieren die medizinischen Inhalte der e-Diagnose. Hierzu zählen insbesondere Diagnosen (Condition), Prozeduren (Procedure) sowie Allergien und Intoleranzen (AllergyIntolerance). Die nachfolgenden Sub-Use-Cases beschreiben die Erfassung, das Abrufen und die Stornierung dieser Ressourcen. Bestehende Ressourcen werden weder bearbeitet noch gelöscht; fachliche Änderungen erfolgen durch das Anlegen neuer Ressourcen.

ToDo: Lesen - Standardoperation plan.read - get.search mit suchparameter? Wir brauchen einen Standardfall lesen und ich habe den Fall dass ich einen tiefgang machen möchte und diese lesen will. Lesen der Gesamtliste Lesen/Suchen nach bestimmten Diagnosen

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

### Sub_UC_eDiag_06_07 - Diagnosen, Prozeduren sowie Allergien und Intoleranzen durch ELGA-Teilnehmer löschen

Der ELGA-Teilnehmer kann via ELGA-Portal einzelne oder alle Diagnosen unwiderruflich löschen. Dabei ist es irrelevant, ob eine zu löschende Diagnose als relevant gekennzeichnet ist oder nicht. Die Inhalte der zu löschenden Diagnose werden durch die Fachanwendung entfernt und die Diagnose als "gelöscht" markiert.

Sollte die Diagnose in der aktuellen Liste referenziert sein, erstellt die Fachanwendung eine neue Version der Liste ohne die gelöschte Diagnose.

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

### Sub_UC_eDiag_06_09 - Diagnosen, Prozeduren sowie Allergien und Intoleranzen erfassen

Der GDA erfasst neue Diagnosen, Prozeduren sowie Allergien und Intoleranzen über die e-Diagnose Fachanwendung, siehe [Transaktionen](transaction.md#Transaktionen).

#### Ablauf

1. Der GDA wählt den gewünschten Ressourcentyp (Condition, Procedure oder AllergyIntolerance) aus.
1. Der GDA erstellt eine neue Ressource und erfasst die erforderlichen fachlichen Informationen.
1. Der GDA führt ein**POST**auf /Patient/[id]/Condition/, /Patient/[id]/Procedure/ oder /Patient/[id]/AllergyIntolerance/ aus und übermittelt die neue Ressource an die e-Diagnose Fachanwendung.
1. Die**Fachanwendung**validiert die übermittelte Ressource.
1. Ist die Validierung erfolgreich, wird die neue Ressource gespeichert und dem GDA eine erfolgreiche Erstellung mittels**HTTP 201 Created**bestätigt. Ist die Validierung nicht erfolgreich, wird die Ressource nicht gespeichert. Die Fachanwendung liefert ein**OperationOutcome**mit den aufgetretenen Validierungsfehlern zurück.

#### Sequenzdiagramm Eintrag erfassen

### Sub_UC_eDiag_06_10 - Diagnosen, Prozeduren sowie Allergien und Intoleranzen stornieren

Der GDA kann einen oder mehrere Diagnosen aufgrund einer falschen Eingabe stornieren. Dabei ist es irrelevant, ob eine zu stornierende Diagnose als relevant gekennzeichnet ist oder nicht.

Sollte die Diagnose als relevant gekennzeichnet gewesen sein und will sie der GDA nach der Stornierung nicht mehr in der Liste der relevanten Einträge haben, muss die Diagnose aus der Liste der relevanten Einträge entfernt werden (siehe [Sub_UC_eDiag_06_05 - Einträge aus einer Liste entfernen](uc_ediag_06_int_list.md#sub_uc_ediag_06_05---einträge-aus-einer-liste-entfernen)).

#### Ablauf

* Um einen Eintrag zu stornieren, führt der GDA ein `$list-read` oder ein `GET` auf die Gesamtmenge der Diagnosen aus (siehe [Read/Search von Diagnosen, Prozeduren sowie Allergien und Intoleranzen](uc_ediag_06_int_list.md#read-search-von-diagnosen-prozeduren-sowie-allergien-und-intoleranzen)) und markiert die zu stornierenden Einträge.
* Durch Bestätigung wird die `$storno`-Operation ausgeführt.
* Die Fachanwendung bearbeitet die zu stornierende Diagnose folgendermaßen: 
* `AllergyIntolerance.verificationStatus = entered-in-error`
* `Condition.verificationStatus = entered-in-error`
* `Procedure.status = entered-in-error`
 

