# HL7.AT.FHIR.ELGA.EMED.R4\Artifacts Summary - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ELGA e-Med Durchgeführte Abgabe](StructureDefinition-at-emed-md-durchgefuehrte-abgabe.md) | **Beschreibung:** Dokumentiert eine durchgeführte Abgabe eines Arzneimittels ("MedicationDispense"-Ressource). Sofern eine zugehörige geplante Abgabe vorliegt, können Abweichungen hinsichtlich der Dosierung oder einer möglichen Substitution des Medikaments in der durchgeführten Abgabe dokumentiert werden. |
| [ELGA e-Med Geplante Abgabe](StructureDefinition-at-emed-mr-geplante-abgabe.md) | **Beschreibung:** Bildet eine geplante Abgabe eines Arzneimittels aus dem zugrundeliegenden Medikationsplaneintrag des ELGA-Teilnehmers ab ("MedicationRequest"-Ressource). Sie enthält das verordnete Arzneimittel und dessen Dosierung und spielgelt die Inhalte des e-Rezepts wider. Geplante Abgaben dienen somit der Nachvollziehbarkeit der rezeptierten Arzneimittel in der e-Medikation. Als groupIdentifier dient die Geplante-Abgabe-ID (früher eMED-ID), die auch im e-Rezept mitgeführt wird. Werden mehrere Arzneimittel gleichzeitig verordnet, wird für jedes Arzneimittel eine geplante Abgabe mit demselben groupIdentifier erstellt (bildet 'Rezept-Klammer'). Verwendet R5 Backport Extensions. |
| [ELGA e-Med Medikation](StructureDefinition-at-emed-medication.md) | **Beschreibung:** Bildet ein Arzneimittel ab, das nicht über eine PZN verfügt, z.B. magistrale Zubereitungen ("Medication"-Ressource). |
| [ELGA e-Med Medikationsplan](StructureDefinition-at-emed-list-medikationsplan.md) | **Beschreibung:** Bildet den Medikationsplan eines ELGA-Teilnehmers ab ("List"-Ressource). Die Liste beinhaltet Referenzen auf 0..* Medikationsplaneinträge (MedicationRequests), die alle verordneten Arzneimittel und deren Dosierung abbilden. Die Reihenfolge der Listenelemente kann duch den User festgelegt werden. Jedes Listenelement enthält einen Änderungsstatus (weitere Elemente sind noch zu klären). |
| [ELGA e-Med Medikationsplan Collection Bundle](StructureDefinition-at-emed-bundle-medikationsplan.md) | **Beschreibung:** Das Bundle vom Typ Collection bestehend aus:* 1..1 Medikationsplan (List): Liste mit Referenzen auf Medikationsplaneinträge und zur Abbildung von Reihenfolge und Änderungsstatus)
* 0..* Medikationsplaneinträge (MedicationRequests): Medikation und Dosierung
 |
| [ELGA e-Med Medikationsplan Transaction Bundle](StructureDefinition-at-emed-bundle-tx-medikationsplan.md) | **Beschreibung:** Das Bundle vom Typ Transaction dient dem schreibenden Zugriff auf den ELGA Medikationsplan bestehend aus:* 1..1 Medikationsplan (List): Liste mit Referenzen auf Medikationsplaneinträge und zur Abbildung von Reihenfolge und Änderungsstatus)
* 0..* Medikationsplaneinträge (MedicationRequests): Medikation und Dosierung
 |
| [ELGA e-Med Planeintrag](StructureDefinition-at-emed-mr-planeintrag.md) | **Beschreibung:** Bildet einen Medikationsplaneintrag im Medikationsplan eines ELGA Teilnehmers ab ("MedicationRequest"-Ressource). Er enthält genau ein Arzneimittel und dessen Dosierung. Kann in weiterer Folge dazu dienen, eine geplante Abgabe zu erstellen. Verwendet R5 Backport Extensions. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ELGA e-Med MedicationRequest Kategorie ValueSet](ValueSet-MedicationRequestCategoryVS.md) | **Beschreibung:** ValueSet für zulässige Ausprägungen der MedicationRequest Kategorie. Dient der Unterscheidung von geplanten Abgaben und Medikationsplaneinträgen |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ELGA e-Med MedicationRequest Kategorie CodeSystem](CodeSystem-MedicationRequestCategoryCS.md) | **Beschreibung:** Codesystem für zulässige Ausprägungen der MedicationRequest Kategorie. Dient der Unterscheidung von geplanten Abgaben und Medikationsplaneinträgen. |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [Beispiel Durchgeführte Abgabe 1](MedicationDispense-AtEmedExampleDurchgefuehrteAbgabe01.md) | Beispiel Durchgeführte Abgabe 1 |
| [Beispiel Journey 01: Collection Bundle](Bundle-AtEmedJourneyBundleMedikationsplan01.md) | **Beschreibung:** Beispiel eines Collection Bundles, mit leerem Mediaktionsplan (referenziert List-Ressource ohne Einträge). |
| [Beispiel Journey 01: Leerer Medikationsplan](List-AtEmedJourneyListMedikationsplan01.md) | **Beschreibung:** Beispiel eines leeren Mediaktionsplans (List-Ressource ohne Einträge) |
| [Beispiel Journey 01: Transaction Bundle](Bundle-AtEmedJourneyBundleMedikationsplanTx01.md) | **Beschreibung:** Beispiel eines Transaction Bundles, mit leerem Mediaktionsplan (referenziert List-Ressource ohne Einträge). |
| [Beispiel Journey 02: Collection Bundle](Bundle-AtEmedJourneyBundleMedikationsplan02.md) | **Beschreibung:** Beispiel eines Collection Bundles, das einen Mediaktionsplan (List) mit 2 Planeinträgen (MedicationRequests) referenziert. |
| [Beispiel Journey 02: Magistrale Zubereitung](Medication-AtEmedJourneyMedicationMagistral02.md) | **Beschreibung:** Beispiel einer magistralen Zubereitung (Medication) - Salbe. |
| [Beispiel Journey 02: Medikationsplan](List-AtEmedJourneyListMedikationsplan02.md) | **Beschreibung:** Beispiel eines Medikationsplans (List), der 2 Planeinträge (MedicationReqeusts) referenziert und Informationen über Reihenfolge und Änderungsstatus speichert. |
| [Beispiel Journey 02: Medikationsplaneintrag 1](MedicationRequest-AtEmedJourneyMrPlaneintrag0201.md) | **Beschreibung:** Bildet einen Medikationsplaneintrag mit dem Medikament EBETREXAT und zugehörigen Dosierungsanweisungen ab (MedicationRequest). |
| [Beispiel Journey 02: Medikationsplaneintrag 2](MedicationRequest-AtEmedJourneyMrPlaneintrag0202.md) | **Beschreibung:** Bildet einen Medikationsplaneintrag mit einer Referenz auf eine magistrale Zubereitung und zugehörigen Dosierungsanweisungen ab (MedicationRequest). |
| [Beispiel Journey 02: Substance Clotrimazol](Substance-AtEmedJourneySubstanceClotrimazol.md) | **Beschreibung:** Beispiel einer Substance Clotrimazol. |
| [Beispiel Journey 02: Substance Hydrocortison](Substance-AtEmedJourneySubstanceHydrocortison.md) | **Beschreibung:** Beispiel einer Substance Hydrocortison. |
| [Beispiel Journey 02: Transaction Bundle](Bundle-AtEmedJourneyBundleMedikationsplanTx02.md) | **Beschreibung:** Beispiel eines Transaction Bundles, das einen Mediaktionsplan (List) mit 2 Planeinträgen (MedicationRequests) beinhaltet. |
| [Beispiel Journey 03: Geplante Abgabe](MedicationRequest-AtEmedJourneyMrGeplanteAbgabe03.md) | **Beschreibung:** Bildet eine geplante Abgabe des Medikaments EBETREXAT und zugehörigen Dosierungsanweisungen ab (MedicationRequest). |
| [Beispiel Organisation Apotheke 01](Organization-AtEmedExampleOrganizationApo01.md) | **Beschreibung:** Beispiel einer Apotheke als Organisation. |
| [Beispiel Patient 01](Patient-AtEmedExamplePatient01.md) | **Beschreibung:** Beispiel eines Patienten. |
| [Beispiel Ärztin 01](Practitioner-AtEmedExamplePractitioner01.md) | **Beschreibung:** Beispiel einer behandelnden Ärztin. |

