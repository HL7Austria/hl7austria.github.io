# Artifacts Summary - Austrian Patient Summary (R4) v1.1.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Behavior: Capability Statements 

The following artifacts define the specific capabilities that different types of systems are expected to have in order to comply with this implementation guide. Systems conforming to this implementation guide are expected to declare conformance to one or more of the following capability statements.

| | |
| :--- | :--- |
| [AT APS CapabilityStatement (Server)](CapabilityStatement-at-aps-capabilitystatement-server.md) | Dieser Abschnitt beschreibt die erwarteten Fähigkeiten eines FHIR®-Servers, der die Austrian Patient Summary (APS) unterstützt. Die Liste gibt relevante FHIR®-Profile und -Operationen für diesen Zweck wieder. |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [AT APS AllergyIntolerance](StructureDefinition-at-aps-allergyintolerance.md) | Das AT APS-Profil für die AllergyIntolerance-Ressource berücksichtigt zum einen die österreichischen Vorgaben (z.B. Patient und zu verwendende Value-Sets) und stellt andererseits die Konformität gegenüber dem IPS-Profil sicher, indem die so genannte [`imposeProfile`](http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile)-Erweiterung verwendet wird. |
| [AT APS Bundle](StructureDefinition-at-aps-bundle.md) | Das AT APS-Profil für die Bundle-Ressource berücksichtigt zum einen die österreichischen Vorgaben (z.B. Patient und zu verwendende Value-Sets) und stellt andererseits die Konformität gegenüber dem IPS-Profil sicher, indem die so genannte [`imposeProfile`](http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile)-Erweiterung verwendet wird. |
| [AT APS CarePlan](StructureDefinition-at-aps-careplan.md) | Das AT APS-Profil für die CarePlan-Ressource berücksichtigt die österreichischen Vorgaben (z.B. Patient). |
| [AT APS ClinicalImpression](StructureDefinition-at-aps-clinicalimpression.md) | Das AT APS-Profil für die ClinicalImpression-Ressource berücksichtigt die österreichischen Vorgaben (z.B. Patient). |
| [AT APS Composition](StructureDefinition-at-aps-composition.md) | Das AT APS-Profil für die Composition-Ressource berücksichtigt zum einen die österreichischen Vorgaben (z.B. Patient und zu verwendende Value-Sets) und stellt andererseits die Konformität gegenüber dem IPS-Profil sicher, indem die so genannte [`imposeProfile`](http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile)-Erweiterung verwendet wird. |
| [AT APS Condition](StructureDefinition-at-aps-condition.md) | Das AT APS-Profil für die Condition-Ressource berücksichtigt zum einen die österreichischen Vorgaben (z.B. Patient und zu verwendende Value-Sets) und stellt andererseits die Konformität gegenüber dem IPS-Profil sicher, indem die so genannte [`imposeProfile`](http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile)-Erweiterung verwendet wird. |
| [AT APS Consent](StructureDefinition-at-aps-consent.md) | Das AT APS-Profil für die Consent-Ressource berücksichtigt die österreichischen Vorgaben (z.B. Patient). |
| [AT APS Device](StructureDefinition-at-aps-device.md) | Das AT APS-Profil für die Device-Ressource berücksichtigt zum einen die österreichischen Vorgaben (z.B. Patient und zu verwendende Value-Sets) und stellt andererseits die Konformität gegenüber dem IPS-Profil sicher, indem die so genannte [`imposeProfile`](http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile)-Erweiterung verwendet wird. |
| [AT APS DeviceUseStatement](StructureDefinition-at-aps-deviceusestatement.md) | Das AT APS-Profil für die DeviceUseStatement-Ressource berücksichtigt zum einen die österreichischen Vorgaben (z.B. Patient und zu verwendende Value-Sets) und stellt andererseits die Konformität gegenüber dem IPS-Profil sicher, indem die so genannte [`imposeProfile`](http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile)-Erweiterung verwendet wird. |
| [AT APS DiagnosticReport](StructureDefinition-at-aps-diagnosticreport.md) | Das AT APS-Profil für die DiagnosticReport-Ressource berücksichtigt zum einen die österreichischen Vorgaben (z.B. Patient und zu verwendende Value-Sets) und stellt andererseits die Konformität gegenüber dem IPS-Profil sicher, indem die so genannte [`imposeProfile`](http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile)-Erweiterung verwendet wird. |
| [AT APS DocumentReference](StructureDefinition-at-aps-documentreference.md) | Das AT APS-Profil für die DocumentReference-Ressource berücksichtigt die österreichischen Vorgaben (z.B. Patient). |
| [AT APS Flag Alert](StructureDefinition-at-aps-flagalert.md) | Das AT APS-Profil für die Flag-Ressource berücksichtigt zum einen die österreichischen Vorgaben (z.B. Patient und zu verwendende Value-Sets) und stellt andererseits die Konformität gegenüber dem IPS-Profil sicher, indem die so genannte [`imposeProfile`](http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile)-Erweiterung verwendet wird. |
| [AT APS ImagingStudy](StructureDefinition-at-aps-imagingstudy.md) | Das AT APS-Profil für die ImagingStudy-Ressource berücksichtigt zum einen die österreichischen Vorgaben (z.B. Patient und zu verwendende Value-Sets) und stellt andererseits die Konformität gegenüber dem IPS-Profil sicher, indem die so genannte [`imposeProfile`](http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile)-Erweiterung verwendet wird. |
| [AT APS Immunization](StructureDefinition-at-aps-immunization.md) | Das AT APS-Profil für die Immunization-Ressource berücksichtigt zum einen die österreichischen Vorgaben (z.B. Patient und zu verwendende Value-Sets) und stellt andererseits die Konformität gegenüber dem IPS-Profil sicher, indem die so genannte [`imposeProfile`](http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile)-Erweiterung verwendet wird. |
| [AT APS Immunization](StructureDefinition-at-aps-immunizationrecommendation.md) | Das AT APS-Profil für die ImmunizationRecommendation-Ressource berücksichtigt die österreichischen Vorgaben (z.B. Patient und zu verwendende Value-Sets). |
| [AT APS Medication](StructureDefinition-at-aps-medication.md) | Das AT APS-Profil für die Medication-Ressource berücksichtigt zum einen die österreichischen Vorgaben (z.B. Patient und zu verwendende Value-Sets) und stellt andererseits die Konformität gegenüber dem IPS-Profil sicher, indem die so genannte [`imposeProfile`](http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile)-Erweiterung verwendet wird. |
| [AT APS MedicationAdministration](StructureDefinition-at-aps-medicationadministration.md) | Das AT APS-Profil für die MedicationAdministration-Ressource berücksichtigt die österreichischen Vorgaben (z.B. Patient). |
| [AT APS MedicationDispense](StructureDefinition-at-aps-medicationdispense.md) | Das AT APS-Profil für die MedicationDispense-Ressource berücksichtigt die österreichischen Vorgaben (z.B. Patient). |
| [AT APS MedicationRequest](StructureDefinition-at-aps-medicationrequest.md) | Das AT APS-Profil für die MedicationRequest-Ressource berücksichtigt zum einen die österreichischen Vorgaben (z.B. Patient und zu verwendende Value-Sets) und stellt andererseits die Konformität gegenüber dem IPS-Profil sicher, indem die so genannte [`imposeProfile`](http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile)-Erweiterung verwendet wird. |
| [AT APS MedicationStatement](StructureDefinition-at-aps-medicationstatement.md) | Das AT APS-Profil für die MedicationStatement-Ressource berücksichtigt zum einen die österreichischen Vorgaben (z.B. Patient und zu verwendende Value-Sets) und stellt andererseits die Konformität gegenüber dem IPS-Profil sicher, indem die so genannte [`imposeProfile`](http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile)-Erweiterung verwendet wird. |
| [AT APS Observation](StructureDefinition-at-aps-observation.md) | Das AT APS-Profil für die Observation-Ressource berücksichtigt die österreichischen Vorgaben (z.B. Patient). |
| [AT APS Observation Alcohol Use](StructureDefinition-at-aps-observationalcoholuse.md) | Das AT APS-Profil für die Observation-Ressource berücksichtigt zum einen die österreichischen Vorgaben (z.B. Patient und zu verwendende Value-Sets) und stellt andererseits die Konformität gegenüber dem IPS-Profil sicher, indem die so genannte [`imposeProfile`](http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile)-Erweiterung verwendet wird. |
| [AT APS Observation Pregnancy Expected Delivery Date](StructureDefinition-at-aps-observationpregnancyedd.md) | Das AT APS-Profil für die Observation-Ressource berücksichtigt zum einen die österreichischen Vorgaben (z.B. Patient und zu verwendende Value-Sets) und stellt andererseits die Konformität gegenüber dem IPS-Profil sicher, indem die so genannte [`imposeProfile`](http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile)-Erweiterung verwendet wird. |
| [AT APS Observation Pregnancy Outcome](StructureDefinition-at-aps-observationpregnancyoutcome.md) | Das AT APS-Profil für die Observation-Ressource berücksichtigt zum einen die österreichischen Vorgaben (z.B. Patient und zu verwendende Value-Sets) und stellt andererseits die Konformität gegenüber dem IPS-Profil sicher, indem die so genannte [`imposeProfile`](http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile)-Erweiterung verwendet wird. |
| [AT APS Observation Pregnancy Status](StructureDefinition-at-aps-observationpregnancystatus.md) | Das AT APS-Profil für die Observation-Ressource berücksichtigt zum einen die österreichischen Vorgaben (z.B. Patient und zu verwendende Value-Sets) und stellt andererseits die Konformität gegenüber dem IPS-Profil sicher, indem die so genannte [`imposeProfile`](http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile)-Erweiterung verwendet wird. |
| [AT APS Observation Results Laboratory Pathology](StructureDefinition-at-aps-observationresultslaboratorypathology.md) | Das AT APS-Profil für die Observation-Ressource berücksichtigt zum einen die österreichischen Vorgaben (z.B. Patient und zu verwendende Value-Sets) und stellt andererseits die Konformität gegenüber dem IPS-Profil sicher, indem die so genannte [`imposeProfile`](http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile)-Erweiterung verwendet wird. |
| [AT APS Observation Results Radiology](StructureDefinition-at-aps-observationresultsradiology.md) | Das AT APS-Profil für die Observation-Ressource berücksichtigt zum einen die österreichischen Vorgaben (z.B. Patient und zu verwendende Value-Sets) und stellt andererseits die Konformität gegenüber dem IPS-Profil sicher, indem die so genannte [`imposeProfile`](http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile)-Erweiterung verwendet wird. |
| [AT APS Observation Tobacco Use](StructureDefinition-at-aps-observationtobaccouse.md) | Das AT APS-Profil für die Observation-Ressource berücksichtigt zum einen die österreichischen Vorgaben (z.B. Patient und zu verwendende Value-Sets) und stellt andererseits die Konformität gegenüber dem IPS-Profil sicher, indem die so genannte [`imposeProfile`](http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile)-Erweiterung verwendet wird. |
| [AT APS Observation Vital Signs](StructureDefinition-at-aps-observationvitalsigns.md) | Das AT APS-Profil für die Abbildung der Vitalparameter ist abgeleitet vom allgemeinen ["Vital Signs"-Profil](http://hl7.org/fhir/StructureDefinition/vitalsigns) und berücksichtigt die österreichischen Vorgaben (z.B. Patient und zu verwendende Value-Sets). |
| [AT APS Organization](StructureDefinition-at-aps-organization.md) | Das AT APS-Profil für die Organization-Ressource ist vom entsprechenden Profil aus dem HL7® Austria FHIR® Core IG abgeleitet und stellt zusätzlich die Konformität gegenüber dem IPS-Profil sicher, indem die so genannte [`imposeProfile`](http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile)-Erweiterung verwendet wird. |
| [AT APS Patient](StructureDefinition-at-aps-patient.md) | Patientendaten, inkl. Angabe von Kontaktpersonen, Hausarzt bzw. primäre Ansprechpartner.Um die Vorgaben aus dem Umfeld von MyHealth@EU zu erfüllen, muss ein Vor- und Nachname angegeben werden.Das AT APS-Profil für die Patient-Ressource ist vom entsprechenden Profil aus dem HL7® Austria FHIR® Core IG abgeleitet und stellt zusätzlich die Konformität gegenüber dem IPS-Profil sicher, indem die so genannte [`imposeProfile`](http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile)-Erweiterung verwendet wird. Deshalb ist die Angabe des Geburtsdatums erforderlich. |
| [AT APS Practitioner](StructureDefinition-at-aps-practitioner.md) | Das AT APS-Profil für die Practitioner-Ressource ist vom entsprechenden Profil aus dem HL7® Austria FHIR® Core IG abgeleitet und stellt zusätzlich die Konformität gegenüber dem IPS-Profil sicher, indem die so genannte [`imposeProfile`](http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile)-Erweiterung verwendet wird. |
| [AT APS PractitionerRole](StructureDefinition-at-aps-practitionerrole.md) | Das AT APS-Profil für die PractitionerRole-Ressource ist vom entsprechenden Profil aus dem HL7® Austria FHIR® Core IG abgeleitet und stellt zusätzlich die Konformität gegenüber dem IPS-Profil sicher, indem die so genannte [`imposeProfile`](http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile)-Erweiterung verwendet wird. |
| [AT APS Procedure](StructureDefinition-at-aps-procedure.md) | Das AT APS-Profil für die Procedure-Ressource berücksichtigt zum einen die österreichischen Vorgaben (z.B. Patient und zu verwendende Value-Sets) und stellt andererseits die Konformität gegenüber dem IPS-Profil sicher, indem die so genannte [`imposeProfile`](http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile)-Erweiterung verwendet wird. |
| [AT APS Specimen](StructureDefinition-at-aps-specimen.md) | Das AT APS-Profil für die Specimen-Ressource berücksichtigt zum einen die österreichischen Vorgaben (z.B. Patient und zu verwendende Value-Sets) und stellt andererseits die Konformität gegenüber dem IPS-Profil sicher, indem die so genannte [`imposeProfile`](http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile)-Erweiterung verwendet wird. |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [AtApsAllergyIntolerance-Beispiel](AllergyIntolerance-at-aps-example-allergyintolerance-01.md) | Überwundene Allergie |
| [AtApsBundle-Beispiel 1](Bundle-AtApsExampleBundle01NoProblemsMedicationAllergies.md) | APS ohne Probleme, Medikamente oder Allergien (Minimalbeispiel) |
| [AtApsBundle-Beispiel 2](Bundle-AtApsExampleBundle02PreventiveMedicalCheckup.md) | APS für Vorsorgeuntersuchung |
| [AtApsBundle-Beispiel 3](Bundle-AtApsExample03Diabetes.md) | Diabetes Checklist / Leitdokument |
| [AtApsCarePlan-Beispiel](CarePlan-AtApsExampleCareplan01.md) | Care Plan |
| [AtApsClinicalImpression-Beispiel](ClinicalImpression-AtApsExampleClinicalImpression01.md) | Clinical Impression |
| [AtApsCondition-Beispiel](Condition-AtApsExampleCondition01.md) | Befund |
| [AtApsConsent-Beispiel](Consent-AtApsExampleConsent01.md) | Patientenverfügung |
| [AtApsDevice-Beispiel 1](Device-at-aps-example-device-01.md) | Medizinprodukt |
| [AtApsDevice-Beispiel 2](Device-at-aps-example-device-02-software.md) | Software eines Medizinprodukts |
| [AtApsDeviceUseStatement-Beispiel](DeviceUseStatement-AtApsExampleDeviceUseStatement01.md) | Device Use Statement |
| [AtApsDiagnosticReport-Beispiel](DiagnosticReport-AtApsExampleDiagnosticReport01.md) | Diagnostic Report |
| [AtApsDocumentReference-Beispiel](DocumentReference-AtApsExampleDocumentReference01.md) | Document Reference |
| [AtApsExampleBundle-Journey-1](Bundle-AtApsExampleBundle-Journey-1.md) | APS Patient Journey-1 |
| [AtApsExampleBundle-Journey-2](Bundle-AtApsExampleBundle-Journey-2.md) | APS Patient Journey-2 |
| [AtApsExampleBundle-Journey-3](Bundle-AtApsExampleBundle-Journey-3.md) | APS Patient Journey-3 |
| [AtApsExampleDevice03](Device-at-aps-example-device-03.md) | Medizinprodukt |
| [AtApsExampleDevice04](Device-AtApsExampleDevice04.md) | APS Generator |
| [AtApsExampleOrganization01-Beispiel](Organization-AtApsExampleOrganization01.md) | Organization |
| [AtApsFlagAlert-Beispiel](Flag-AtApsExampleFlagAlert01.md) | Flag Alert |
| [AtApsImagingStudy-Beispiel](ImagingStudy-AtApsExampleImagingStudy01.md) | Imaging Study |
| [AtApsImmunization-Beispiel](Immunization-at-aps-example-immunization-01-unknown.md) | Immunisierung mit unbekanntem Impfstoff |
| [AtApsMedication-Beispiel](Medication-AtApsExampleMedication01.md) | Medication |
| [AtApsMedicationAdministration-Beispiel](MedicationAdministration-AtApsExampleMedicationAdministration01.md) | Medication Administration |
| [AtApsMedicationDispense-Beispiel](MedicationDispense-AtApsExampleMedicationDispense01.md) | Medication Dispense |
| [AtApsMedicationRequest-Beispiel](MedicationRequest-AtApsExampleMedicationRequest01.md) | Medication Request |
| [AtApsMedicationStatement-Beispiel](MedicationStatement-AtApsExampleMedicationStatement01.md) | Medication Statement |
| [AtApsObservation-Beispiel](Observation-AtApsExampleObservation01.md) | Observation |
| [AtApsObservationPregnancyEdd-Beispiel](Observation-AtApsExampleObservationPregnancyEdd01.md) | Observation Pregnancy Expected Delivery Date |
| [AtApsObservationPregnancyOutcome-Beispiel](Observation-AtApsExampleObservationPregnancyOutcome01.md) | Observation Pregnancy Outcome |
| [AtApsObservationPregnancyStatus-Beispiel](Observation-AtApsExampleObservationPregnancyStatus01.md) | Observation Pregnancy Status |
| [AtApsObservationResultsLaboratoryPathology-Beispiel](Observation-AtApsExampleObservationResultsLaboratoryPathology01.md) | Observation Results Laboratory Pathology |
| [AtApsObservationResultsRadiology-Beispiel](Observation-AtApsExampleObservationResultsRadiology01.md) | Observation Results Radiology |
| [AtApsObservationVitalSigns-Beispiel](Observation-AtApsExampleObservationVitalSigns01.md) | Observation Vital Signs |
| [AtApsPatient-Beispiel](Patient-at-aps-example-patient-01.md) | Mimimalbeispiel einer Patientin |
| [AtApsProcedure-Beispiel](Procedure-at-aps-example-procedure-01.md) | Chirurgische Platzierung eines Koronarstents |
| [AtApsSpecimen-Beispiel](Specimen-AtApsExampleSpecimen01.md) | Specimen |
| [Austrian Patient Summary](Composition-AtApsComposition01.md) | Composition |
| [Immunization-Beispiel 1](Immunization-at-aps-example-immunization-01.md) | Impfung Diphtherie, Pertussis, Poliomyelitis und Tetanus |
| [ImmunizationRecommendation-Beispiel 1](ImmunizationRecommendation-AtApsExampleImmunizationRecommendation01.md) | Impfung Diphtherie, Pertussis, Poliomyelitis und Tetanus |
| [Patient Journey Practitioner](Practitioner-at-aps-example-practitioner-01.md) | Beispiel eines behandelnden Arztes in der Patient Journey |
| [Patient Journey Practitioner](PractitionerRole-AtApsExamplePractitionerRole01.md) | Beispiel eines behandelnden Arztes und seiner Organisation |
| [Patient Story-Beispiel](Observation-at-aps-example-observation-01-exercise.md) | Körperliche Aktivität |
| [Social History-Beispiel 1](Observation-at-aps-example-observationalcoholuse-01.md) | Alkoholkonsum |
| [Social History-Beispiel 2](Observation-at-aps-example-observationtobaccouse-01.md) | Ehemalig rauchende Person |

### Other 

These are resources that are used within this implementation guide that do not fit into one of the other categories.

| | |
| :--- | :--- |
| [Parameter für die Terminologieauswahl der SNOMED CT Austrian Extension](Parameters-AtApsExpansionParametersSCT.md) | Mit dieser Parameter-Ressource wird die Systemversion der SNOMED CT Austrian Extension angegeben, die im Terminologiedienst verwendet werden soll. |

