# HL7.AT.FHIR.ELGA.EDIAG.R4\Teilnehmerrechte ausüben - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* **Teilnehmerrechte ausüben**

## Teilnehmerrechte ausüben

# Teilnehmerrechte ausüben

### Eine Summary-Listenversion löschen

> Sub:UC_03_01 

ToDo: Es wird nur diese eine Ansicht der Liste gelöscht und nicht die Diagnosen.

Sofern eine gesamte Version einer Summary-Liste von einem:einer ELGA-Teilnehmer:in gelöscht wurde, wird diese nicht mehr in der Historie angezeigt. Sobald alle Summary-Listversionen gelöscht sind, ist die Summary-Liste beim nächsten Abrtuf leer und emptyReason:nilknown gesetzt.

### Einträge löschen

> Sub:UC_02_08 

Ein:e ELGA-Teilnehmer:in kann via ELGA-Portal einzelne oder alle Einträge unwiderruflich löschen. Dabei ist es irrelevant, ob ein zu löschender Eintrag Teil der Summary-Liste ist oder nicht. Die Inhalte des zu löschenden Eintrags werden durch die Fachanwendung entfernt und der Eintrag als "gelöscht" markiert. Sollte der Eintrag in der aktuellen Summary-Liste referenziert sein, erstellt die Fachanwendung eine neue Version der Summary-Liste ohne den gelöschten Eintrag.

#### Ablauf

* Um einen Eintrag zu löschen, führt die ELGA:Teilnehmerin oder der ELGA-Teilnehmer über das Portal ein `$list-read` oder ein `GET` auf die Gesamtmenge der Diagnosen aus (siehe [Einträge als Einzelressource abrufen](uc_ediag_01_lesen.md#einträge-als-einzelressource-abrufen)) und markiert die zu löschenden Einträge.
* Durch Bestätigung wird die `$delete`-Operation ausgeführt.
* Die Fachanwendung bearbeitet den zu löschenden Eintrag folgendermaßen: 
* Alle optionalen Felder `0..` werden geleert.
* Alle verpflichtenden Felder `1..` werden 
* mit der [data-absent-reason-Extension](http://hl7.org/fhir/StructureDefinition/data-absent-reason) und dem Wert `unknown` versehen
* im Fall von den folgenden codierten Elementen mit `required` Bindings auf folgende Werte gesetzt 
* `AllergyIntolerance.clinicalStatus = inactive`
* `AllergyIntolerance.verificationStatus = unconfirmed`
* `Condition.clinicalStatus = inactive`
* `Condition.verificationStatus = unconfirmed`
* `Procedure.status = completed`
 
 
 
* Die Fachanwendung erstellt eine neue Version der Summary-Liste, sollte der zu löschende Eintrag Teil der aktuellen Summary-Liste gewesen sein.

![](patient_delete.drawio.svg)

