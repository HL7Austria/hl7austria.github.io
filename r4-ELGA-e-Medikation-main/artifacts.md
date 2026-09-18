# HL7.AT.FHIR.ELGA.EMED.R4\Artifacts Summary - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Medikationsplan 

Medikationsplan

| | |
| :--- | :--- |
| [AT ELGA e-Medikation List Medikationsplan](StructureDefinition-at-elga-emed-list-medikationsplan.md) | Der Medikationsplan wird durch eine List-Ressource abgebildet. Diese enthält 0..* Einträge (List.entry), wobei jedes List.entry.item genau eine Referenz auf einen Medikationsplaneintrag (MedicationRequest) beinhaltet. Die Reihung der List.entries bestimmt die Reihenfolge der Medikationsplaneinträge. Jeder Listeneintrag enthält im Element List.entry.flag den Änderungsstatus des jeweiligen Medikationsplaneintrags. |
| [At ELGA e-Medikation MedicationRequest Planeintrag](StructureDefinition-at-elga-emed-medicationrequest-planeintrag.md) | Ein Planeintrag im Medikationsplan wird durch eine "MedicationRequest"-Ressource abgebildet. Sie enthält genau ein Arzneimittel mit dessen Dosierung, wobei das Arzneimittel verpflichtend mit einer contained Medication-Ressource dokumentiert wird. Der Planeintrag kann in weiterer Folge als Grundlage für die Erstellung einer "Geplanten Abgabe" dienen. Es werden R5-Backport-Extensions verwendet. |
| [AT ELGA e-Medikation Medikationsplan-Bundle Medikationsplan](StructureDefinition-at-elga-emed-bundle-medikationsplan.md) | Das Bundle vom Typ Searchset bestehend aus:* 1..1 Medikationsplan (List): Liste mit Referenzen auf Medikationsplaneinträge und zur Abbildung von Reihenfolge und Änderungsstatus
* 0..* Medikationsplaneinträge (MedicationRequests): Medikation und Dosierung
 |
| [AT ELGA e-Medikation Transaction Bundle Medikationsplan](StructureDefinition-at-elga-emed-bundle-medikationsplantx.md) | Das Bundle vom Typ Transaction dient dem schreibenden Zugriff auf den ELGA Medikationsplan (Aktualisierung aller enthaltenen Ressourcen) und besteht aus:* 1..1 Medikationsplan (List): Liste mit Referenzen auf Medikationsplaneinträge und zur Abbildung von Reihenfolge und Änderungsstatus
* 0..* Medikationsplaneinträge (MedicationRequests): Medikation und Dosierung
Alle neuen bzw. geänderten und zu entfernenden Medikationsplaneinträge müssen inline im Bundle enthalten sein, alle unveränderten Ressourcen werden referenziert. |

### Geplante Abgabe 

Geplante Abgabe

| | |
| :--- | :--- |
| [At ELGA e-Medikation MedicationRequest Geplante Abgabe](StructureDefinition-at-elga-emed-medicationrequest-geplanteabgabe.md) | Bildet eine "Geplante Abgabe" eines Arzneimittels aus dem zugrundeliegenden Medikationsplaneintrag des ELGA-Teilnehmers ab ("MedicationRequest"-Ressource mit Kategorie "Geplante Abgabe"): Sie enthält die verordnete Medikation und deren Dosierung und spielgelt die Inhalte des e-Rezepts wider. Geplante Abgaben dienen somit der Nachvollziehbarkeit der rezeptierten Arzneimittel in der e-Medikation. Werden mehrere Medikamente gleichzeitig verordnet und sollen demselben e-Rezept zugeordnet sein, wird für jedes Medikament eine "Geplante Abgabe" mit demselben "e-Med GroupIdentifier" erstellt (bildet 'Rezept-Klammer'). Es werden R5-Backport-Extensions verwendet. |

### Durchgeführte Abgabe 

Durchgeführte Abgabe

| | |
| :--- | :--- |
| [AT ELGA e-Medikation MedicationDispense Durchgeführte Abgabe](StructureDefinition-at-elga-emed-medicationdispense-durchgefuehrteabgabe.md) | Dokumentiert eine "Durchgeführte Abgabe" eines Arzneimittels ("MedicationDispense"-Ressource). Die "Durchgeführte Abgabe" enthält die abgegebene Medikation und deren Dosierung und dient somit der Nachvollziehbarkeit der abgegebenen Arzneimittel in der e-Medikation. Es können Abweichungen zur "Geplanten Abgabe" hinsichtlich des Medikaments und dessen Dosierung dokumentiert werden. Sofern eine zugehörige "Geplanten Abgabe" vorliegt, muss diese mit dem zugehörigen Planeintrag referenziert werden. Eine mögliche Substitution des Medikaments ist implizit, durch die Referenz auf die zugehörige "Geplante Abgabe", ersichtlich. Der aktuelle Status einer "Durchgeführten Abgabe" wird mittels "status"- und "type"-Element dokumentiert. Es werden R5-Backport-Extensions verwendet. |

### Medikation 

Medikation

| | |
| :--- | :--- |
| [AT ELGA e-Medikation Medication Medikation](StructureDefinition-at-elga-emed-medication-medikation.md) | Bildet ein Arzneimittel in der "Medication"-Ressource ab. Wird grundsätzlich verwendet in Planeintrag, Geplanter Abgabe und Durchgeführter Abgabe. |
| [At ELGA e-Medikation Substance Wirkstoff](StructureDefinition-at-elga-emed-substance-wirkstoff.md) | Dokumentation des Wirkstoffs eines Arzneimittels in der ELGA e-Medikation, sofern es nicht kodiert vorliegt. |

### Dosierungen 

Dosierungsvarianten

| | |
| :--- | :--- |
| [AT ELGA e-Medikation Dosage Dosierung](StructureDefinition-at-elga-emed-dosage-dosierung.md) | AT ELGA e-Medikation Dosage Dosierung |
| [AtElgaEmedDosageFreeTextAdministration](StructureDefinition-at-elga-emed-dosage-freetext-administration.md) |  |
| [AtElgaEmedDosageFrequencyAdministration](StructureDefinition-at-elga-emed-dosage-frequency-administration.md) |  |
| [AtElgaEmedDosageStandardAdministration](StructureDefinition-at-elga-emed-dosage-standard-administration.md) |  |
| [AtElgaEmedDosageTimedAdministration](StructureDefinition-at-elga-emed-dosage-timed-administration.md) |  |

### Behavior: Operation Definitions 

These are custom operations that can be supported by and/or invoked by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [e-Med Operation für Plan-Read](OperationDefinition-AtElgaEmed.List.PlanRead.md) | Die $plan-read Operation wird aufgerufen, wenn ein Medikationsplan mit der Intention zu schreiben gelesen wird. |
| [e-Med Operation für Plan-Write](OperationDefinition-AtElgaEmed.List.PlanWrite.md) | Die $plan-write Operation wird aufgerufen, wenn ein Medikationsplan geschrieben wird. |
| [eMed Operation für GroupIdentifier Prescription Search](OperationDefinition-at-emed-operation-groupidentifier-prescription-search.md) | Die $groupidentifier-prescription-search Operation wird aufgerufen, wenn ein Zugriff auf geplante Abgaben mittels e-Med GroupIdentifier erfolgen soll. |
| [eMed Operation für GroupIdentifier-Create](OperationDefinition-at-emed-operation-groupidentifier-create.md) | Die $groupidentifier-create Operation wird aufgerufen, wenn ein neuer GroupIdentifer (ohne Patientenbezug) vom Server angefordert werden soll. |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [AT ELGA e-Medikation Transaction Bundle durchgeführte Abgaben](StructureDefinition-at-elga-emed-bundle-durchgefuehrteabgaben-tx.md) | Das Bundle vom Typ Transaction dient dem schreibenden Zugriff und besteht aus allen Durchgeführten Abgaben, die gemeinsam geschrieben werden sollen. |
| [AT ELGA e-Medikation Transaction Bundle geplante Abgaben](StructureDefinition-at-elga-emed-bundle-geplanteabgaben-tx.md) | Das Bundle vom Typ Transaction dient dem schreibenden Zugriff und besteht aus allen geplanten Abgaben, die gemeinsam geschrieben werden sollen. Es müssen entweder alle oder keine der geplanten Abgaben einen groupIdentifier enthalten. Ist kein groupIdentifier enthalten so erhalten alle geplanten Abgaben im Transaction Bundle einen neuen gemeinsamen groupIdentifier. |
| [At ELGA e-Medikation Device Fachanwendung](StructureDefinition-at-elga-emed-device-fachanwendung.md) | Das Device welches die eMed Fachanwendung abbildet |
| [At ELGA e-Medikation MedicationRequest Base](StructureDefinition-at-elga-emed-medicationrequest-base.md) | Die Basis für alle in eMed verwendeten MedicationRequests |

### Structures: Data Type Profiles 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [AT ELGA e-Medikation Timing](StructureDefinition-at-elga-emed-timing.md) | AT ELGA e-Medikation Timing |
| [AtElgaEmedDosageOtherAdministration](StructureDefinition-at-elga-emed-dosage-other-administration.md) |  |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [AT ELGA e-Medikation Extension Dosierungskategorie](StructureDefinition-at-elga-emed-extension-dosage-category.md) | AT ELGA e-Medikation Extension Dosierungskategorie |
| [AT ELGA e-Medikation Extension Group Identifier](StructureDefinition-at-elga-emed-extension-group-identifier.md) | AT ELGA e-Medikation Extension, die den e-Med GroupIdentifier beinhaltet. |
| [AT ELGA e-Medikation Extension Patient Modified](StructureDefinition-at-elga-emed-extension-patient-modified.md) | AT ELGA e-Medikation Extension, die Angibt, ob in einer Ressource eine Änderung vom Patienten veranlasst wurde. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ELGA Dosage Category Status ValueSet](ValueSet-AtElgaEmedValueSetDosageCategory.md) | Zulässige Ausprägungen der Kategorie einer Dosierung in ELGA. |
| [ELGA Dosierung Timing When ValueSet für Tageszeitenschema](ValueSet-ElgaTimingWhenStandardAdministrationVS.md) | ValueSet für zulässige Ausprägungen des Elements when eines Timings für eine Dosierung mit Tageszeitenschema. |
| [ELGA List Empty Reason Value Set](ValueSet-ElgaListEmptyReasonVS.md) | ValueSet für zulässige Ausprägungen des Elements emptyReason einer Liste. |
| [ELGA List Status ValueSet](ValueSet-ElgaListStatusVS.md) | Zulässige Ausprägungen des Status einer List-Ressource in ELGA. |
| [ELGA List.entry.flag Value Set](ValueSet-ElgaListEntryFlagVS.md) | ValueSet für zulässige Ausprägungen Ausprägungen des Flags eines List.Entries in ELGA. |
| [ELGA e-Med Durchgeführte Abgabe Status Value Set](ValueSet-DurchgefuehrteAbgabeStatusVS.md) | ValueSet für zulässige Ausprägungen eines Status einer Durchgeführten Abgabe (MedicationDispense). |
| [ELGA e-Med Durchgeführte Abgabe Typ Value Set](ValueSet-DurchgefuehrteAbgabeTypVS.md) | ValueSet für zulässige Ausprägungen eines Typs einer Durchgeführten Abgabe (MedicationDispense). |
| [ELGA e-Med Geplante Abgabe Status ValueSet](ValueSet-GeplanteAbgabeStatusVS.md) | ValueSet für zulässige Ausprägungen eines Status einer geplanten Abgabe (MedicationRequest). |
| [ELGA e-Med MedicationRequest Kategorie ValueSet](ValueSet-MedicationRequestCategoryVS.md) | ValueSet für zulässige Ausprägungen der MedicationRequest Kategorie. Dient der Unterscheidung von geplanten Abgaben und Medikationsplaneinträgen |
| [ELGA e-Med Medikationsplaneintrag Status Value Set](ValueSet-PlaneintragStatusVS.md) | ValueSet für zulässige Ausprägungen eines Status eines Medikationsplaneintrags (MedicationRequest). |
| [ELGA e-Med Medikationsplaneintrag StatusReason Value Set](ValueSet-AtElgaEmedValueSetPlaneintragStatusReasonVS.md) | ValueSet für zulässige Ausprägungen des StatusReason eines Medikationsplaneintrags (MedicationRequest). |
| [ELGA_MedikationRezeptart](ValueSet-elga-medikationrezeptart.md) | **Description:** ELGA ValueSet for Prescription type**Beschreibung:** ELGA ValueSet für RezeptArt |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ELGA Dosage Category Status CodeSystem](CodeSystem-AtElgaEmedCodeSystemDosageCategory.md) | Zulässige Ausprägungen der Kategorie einer Dosierung in ELGA. |
| [ELGA List.entry.flag CodeSystem](CodeSystem-ElgaListEntryFlagCS.md) | CodeSystem für zulässige Ausprägungen des Flags eines List.Entries in ELGA. |
| [ELGA e-Med MedicationRequest Kategorie CodeSystem](CodeSystem-MedicationRequestCategoryCS.md) | Codesystem für zulässige Ausprägungen der MedicationRequest Kategorie. Dient der Unterscheidung von geplanten Abgaben und Medikationsplaneinträgen. |
| [ELGA e-Med MedicationRequest Planeintrag StatusReason CodeSystem](CodeSystem-AtElgaEmedCodeSystemPlaneintragStatusReasonCS.md) | Codesystem für zulässige Ausprägungen des StatusReason eines Medikationsplaneintrags (MedicationRequest). |
| [MedikationRezeptart](CodeSystem-medikationrezeptart.md) | **Description:** ELGA Codelist for Prescription type**Beschreibung:** ELGA Codeliste für RezeptArt |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [Beispiel Allgemeinmedizinerin 01](Practitioner-At-Emed-Example-Practitioner-01.md) | Beispiel einer behandelnden Allgemeinmedizinerin. |
| [Beispiel Example Medikationsplaneintrag](MedicationRequest-At-Emed-Example-Mr-Planeintrag.md) | Bildet einen Medikationsplaneintrag mit dem Medikament EBETREXAT und zugehörigen Dosierungsanweisungen ab (MedicationRequest). |
| [Beispiel Example: Substance Clotrimazol](Substance-At-Emed-Example-Substance-Clotrimazol.md) | Beispiel einer Substance Clotrimazol. |
| [Beispiel Example: Substance Hydrocortison](Substance-At-Emed-Example-Substance-Hydrocortison.md) | Beispiel einer Substance Hydrocortison. |
| [Beispiel Journey 01-01: Medikationsplan-Bundle](Bundle-At-Emed-Journey-01-01-01-Bundle-Medikationsplan.md) | Beispiel eines Medikationsplan-Bundles, mit leerem Mediaktionsplan (referenziert List-Ressource ohne Einträge). |
| [Beispiel Journey 01-02: Mediaktionsplan-Transaction-Bundle](Bundle-At-Emed-Journey-01-02-Bundle-Medikationsplan-Tx.md) | Beispiel eines Transaction Bundles, das einen Mediaktionsplan (List) mit 2 Planeinträgen (MedicationRequests) beinhaltet. |
| [Beispiel Journey 01-02: Medikationsplan](List-At-Emed-Journey-01-02-List-Medikationsplan.md) | Beispiel eines Medikationsplans (List), der 2 Planeinträge (MedicationRequests) referenziert und Informationen über Reihenfolge und Änderungsstatus speichert. |
| [Beispiel Journey 01-02: Medikationsplan-Bundle](Bundle-At-Emed-Journey-01-02-Bundle-Medikationsplan.md) | Beispiel eines Medikationsplan-Bundles, das einen Mediaktionsplan (List) mit 2 Planeinträgen (MedicationRequests) referenziert. |
| [Beispiel Journey 01-02: Medikationsplaneintrag 1](MedicationRequest-At-Emed-Journey-01-02-Mr-Planeintrag-01.md) | Bildet einen Medikationsplaneintrag mit dem Arzneimittel Ramipril und zugehörigen Dosierungsanweisungen ab. |
| [Beispiel Journey 01-02: Medikationsplaneintrag 1](MedicationRequest-At-Emed-Journey-05-01-Mr-Planeintrag-01.md) | Bildet einen Medikationsplaneintrag mit dem Arzneimittel Ramipril und zugehörigen Dosierungsanweisungen ab. |
| [Beispiel Journey 01-02: Medikationsplaneintrag 2](MedicationRequest-At-Emed-Journey-01-02-Mr-Planeintrag-02.md) | Bildet einen Medikationsplaneintrag mit einer magistralen Zubereitung (Dexpanthenol-Salbe)und zugehörigen Dosierungsanweisungen ab. |
| [Beispiel Journey 01-03: Geplante Abgabe 1](MedicationRequest-At-Emed-Journey-01-03-Mr-Geplante-Abgabe-01.md) | Bildet eine Geplante Abgabe des Arzneimittels Ramipril mit den Dosierungsanweisungen des zugehörigen Planeintrags ab. |
| [Beispiel Journey 01-03: Geplante Abgabe 2](MedicationRequest-At-Emed-Journey-01-03-Mr-Geplante-Abgabe-02.md) | Bildet eine Geplante Abgabe mit einer magistralen Zubereitung (Dexpanthenol-Salbe) mit den Dosierungsanweisungen des zugehörigen Planeintrags ab. |
| [Beispiel Journey 01-03: Geplante-Abgaben-Transaction-Bundle](Bundle-At-Emed-Journey-01-03-Bundle-Geplante-Abgaben-Tx.md) | Beispiel eines Transaction Bundles mit Geplanten Abgaben. |
| [Beispiel Journey 01: e-Med Fachanwendung](Device-At-Emed-Example-Device-01.md) | Beispiel der e-Med Fachanwendung, die den Mediaktionsplan initial erstellt. |
| [Beispiel Journey 02-01: Durchgefuehrte-Abgaben-Transaction-Bundle](Bundle-At-Emed-Journey-02-01-Bundle-Durchgefuehrte-Abgaben-Tx.md) | Beispiel eines Transaction Bundles mit Durchgeführten Abgaben. |
| [Beispiel Journey 02-01: Durchgeführte Abgabe 1](MedicationDispense-At-Emed-Journey-02-01-Md-Durchgefuehrte-Abgabe-01.md) | Bildet eine durchgeführte Abgabe mit dem Arzneimittel Ramipril gemäß Geplanter Abgabe. |
| [Beispiel Journey 02-01: Durchgeführte Abgabe 1](MedicationDispense-At-Emed-Journey-02-01-Md-Durchgefuehrte-Abgabe-02.md) | Bildet eine durchgeführte Abgabe mit dem Arzneimittel Ramipril gemäß Geplanter Abgabe. |
| [Beispiel Journey 02: Magistrale Zubereitung](Medication-At-Emed-Example-Medication-Magistral-01.md) | Beispiel einer magistralen Zubereitung (Dexpanthenol-Salbe). |
| [Beispiel Journey 03-01: Transaction Bundle](Bundle-At-Emed-Journey-03-01-Bundle-Durchgefuehrte-Abgaben-Tx.md) | Beispiel eines Transaction Bundles mit Durchgeführten Abgaben. |
| [Beispiel Journey 05-01: Medikationsplan](List-At-Emed-Journey-05-01-List-Medikationsplan.md) | Beispiel eines Medikationsplans (List), der 2 Planeinträge (MedicationRequests) referenziert und Informationen über Reihenfolge und Änderungsstatus speichert. |
| [Beispiel Journey 05: Durchgeführte Abgabe 1](MedicationDispense-At-Emed-Journey-03-01-Md-Durchgefuehrte-Abgabe-02.md) | Bildet eine durchgeführte Abgabe mit dem Arzneimittel Ramipril gemäß Geplanter Abgabe. |
| [Beispiel Medikationsplaneintrag mit Dosierung im Tageszeitenschema 1](MedicationRequest-AtEmedExampleDosageStandardAdministration1.md) | Medikationsplaneintrag mit Dosierung im Tageszeitenschema (morgens, mittags, abends, nachts): 1-0-1-0. |
| [Beispiel Medikationsplaneintrag mit Dosierung im Tageszeitenschema 2](MedicationRequest-AtEmedExampleDosageStandardAdministration2.md) | Medikationsplaneintrag mit Dosierung im Tageszeitenschema |
| [Beispiel Medikationsplaneintrag mit Dosierung im Tageszeitenschema 3](MedicationRequest-AtEmedExampleDosageStandardAdministration3.md) | Medikationsplaneintrag mit Dosierung im Tageszeitenschema |
| [Beispiel Medikationsplaneintrag mit Dosierung mit Timed Administration](MedicationRequest-At-Emed-Example-Mr-Dosierung-Timed.md) | Medikationsplaneintrag mit Dosierung mit Timed Administration |
| [Beispiel Organisation Apotheke 01](Organization-At-Emed-Example-Organization-Apo-01.md) | Beispiel einer Apotheke als Organisation. |
| [Beispiel Patient 01](Patient-At-Emed-Example-Patient-01.md) | Beispiel eines Patienten. |
| [Beispiel Ärztin 02](Practitioner-At-Emed-Example-Practitioner-02.md) | Beispiel einer ursprünglich eine Medikation verordnenden Ärztin (Fremdmedikation). |
| [TBD](Parameters-Journey-01-01-Request-Body-01.md) | TBD |
| [at-emed-journey-01-01-02-bundle-geplanteAbgaben](Bundle-at-emed-journey-01-01-02-bundle-geplanteAbgaben.md) |  |
| [at-emed-journey-01-01-03-bundle-durchgefuehrte-abgaben](Bundle-at-emed-journey-01-01-03-bundle-durchgefuehrte-abgaben.md) |  |

