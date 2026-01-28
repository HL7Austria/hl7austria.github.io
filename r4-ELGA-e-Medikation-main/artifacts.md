# HL7.AT.FHIR.ELGA.EMED.R4\Artifacts Summary - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ELGA e-Medikation Bundle vom Typ Collection Medikationsplan](StructureDefinition-at-emed-collection-medikationsplan.md) | **Beschreibung:** ELGA e-Medikation Bundle vom Typ Collection zur Speicherung und Auslieferung eines Medikationsplans mit Medikationsplaneinträgen. Beinhaltet:* Medikationsplan 1..1 (List)
* Medikationsplaneinträge 0..* (MedicationRequest)
 |
| [ELGA e-Medikation Durchgeführte Abgabe](StructureDefinition-at-emed-md-durchgefuehrte-abgabe.md) | ELGA e-Medikation Durchgeführte Abgabe |
| [ELGA e-Medikation Geplante Abgabe](StructureDefinition-at-emed-mr-geplante-abgabe.md) | **Beschreibung:** Bildet eine geplante Abgabe eines Arzneimittels aus dem zugrundeliegenden Medikationsplaneintrag des ELGA-Teilnehmers ab. Sie enthält das verordnete Arzneimittel und dessen Dosierung und spielgelt die Inhalte des e-Rezepts wider. Geplante Abgaben dienen somit der Nachvollziehbarkeit der rezeptierten Arzneimittel in der e-Medikation. Als groupIdentifier dient die Geplante-Abgabe-ID (früher eMED-ID), die auch im e-Rezept mitgeführt wird. Werden mehrere Arzneimittel gleichzeitig verordnet, wird für jedes Arzneimittel eine geplante Abgabe mit demselben groupIdentifier erstellt (bildet 'Rezept-Klammer'). Verwendet R5 Backport Extensions. |
| [ELGA e-Medikation Medication](StructureDefinition-at-emed-medication.md) | Arzneimittel |
| [ELGA e-Medikation Medikationsplan](StructureDefinition-at-emed-list-medikationsplan.md) | **Beschreibung:** Bildet den Medikationsplan eines ELGA Teilnehmers ab. Enthält verordnete Arzneimittel und deren Dosierung in Form von 0..* Medikationsplaneinträgen (AtEmedMRPlaneintrag). Die Reihenfolge der Einträge ist fachlich relevant. |
| [ELGA e-Medikation Planeintrag](StructureDefinition-at-emed-mr-planeintrag.md) | **Beschreibung:** Bildet einen Medikationsplaneintrag im Medikationsplan eines ELGA Teilnehmers ab. Er enthält genau ein Arzneimittel und dessen Dosierung. Kann in weiterer Folge dazu dienen, eine geplante Abgabe zu erstellen (AtEmedMRGeplanteAbgabe). |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ELGA e-Medikation MedicationRequest Kategorie ValueSet](ValueSet-MedicationRequestCategoryVS.md) | ValueSet für Zulässige Ausprägungen der MedicationRequest Kategorie. Dient der Unterscheidung von geplanten Abgaben und Medikationsplaneinträgen |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ELGA e-Medikation MedicationRequest Kategorie CodeSystem](CodeSystem-MedicationRequestCategoryCS.md) | Zulässige Ausprägungen der MedicationRequest Kategorie. Dient der Unterscheidung von geplanten Abgaben und Medikationsplaneinträgen. |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [AtEmedExamplePatient01](Patient-AtEmedExamplePatient01.md) |  |
| [Beispiel Durchgeführte Abgabe 1](MedicationDispense-AtEmedExampleDurchgefuehrteAbgabe01.md) | Beispiel Durchgeführte Abgabe 1 |
| [Beispiel Geplante Abgabe 1](MedicationRequest-AtEmedExampleGeplanteAbgabe01.md) | Beispiel Geplante Abgabe 1 |
| [Beispiel Medication Cefuroxime](Medication-ExampleMedicationCefuroxime.md) | Beispiel Medication Cefuroxime |
| [Example Bundle Medikationsplan 02](Bundle-AtEmedJourneyBundleMedikationsplan02.md) | Example Bundle Medikationsplan 02 |
| [Example Bundle Medikationsplan leer 01](Bundle-AtEmedJourneyBundleMedikationsplanLeer01.md) | Example Bundle Medikationsplan leer 01 |
| [Example List Medikationsplan 02](List-AtEmedJourneyListMedikationsplan02.md) | Example List Medikationsplan 02 |
| [Example List Medikationsplan leer 01](List-AtEmedJourneyListMedikationsplanLeer01.md) | Example List Medikationsplan leer 01 |
| [Example Medikationsplaneintrag 02](MedicationRequest-AtEmedJourneyMrPlaneintrag02.md) | Example Medikationsplaneintrag 02 |
| [HL7ATCorePractitioner](Practitioner-at-emed-example-practitioner-01.md) | Beispiel eines behandelnden Arztes |

