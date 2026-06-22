# HL7.AT.FHIR.ELGA.EMED.R4\Artifacts Summary - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Medikationsplan 

Medikationsplan

| | |
| :--- | :--- |
| [AT ELGA e-Medikation Collection Bundle Medikationsplan](StructureDefinition-at-elga-emed-bundle-medikationsplan.md) | Das Bundle vom Typ Collection bestehend aus:* 1..1 Medikationsplan (List): Liste mit Referenzen auf Medikationsplaneinträge und zur Abbildung von Reihenfolge und Änderungsstatus
* 0..* Medikationsplaneinträge (MedicationRequests): Medikation und Dosierung
 |
| [AT ELGA e-Medikation List Medikationsplan](StructureDefinition-at-elga-emed-list-medikationsplan.md) | Der Medikationsplan eines ELGA-Teilnehmers bzw. einer ELGA-Teilnehmerin wird durch eine List-Ressource abgebildet. Diese enthält 0..* Einträge (List.entry), wobei jedes Entry genau eine Referenz auf einen Medikationsplaneintrag (MedicationRequest) in List.entry.item beinhaltet. Die Reihenfolge der Einträge kann durch den GDA festgelegt werden. Jeder Listeneintrag enthält im Element List.entry.flag den Änderungsstatus des jeweiligen Medikationsplaneintrags. |
| [AT ELGA e-Medikation Medication Medikation](StructureDefinition-at-elga-emed-medication-medikation.md) | Bildet ein Arzneimittel in der "Medication"-Ressource ab. Wird grundsätzlich verwendet in Planeintrag, Geplanter Abgabe und Durchgeführter Abgabe. |
| [At ELGA e-Medikation MedicationRequest Planeintrag](StructureDefinition-at-elga-emed-medicationrequest-planeintrag.md) | Ein Medikationsplaneintrag im Medikationsplan eines ELGA-Teilnehmers bzw. einer ELGA-Teilnehmerin wird durch eine "MedicationRequest"-Ressource abgebildet. Die Ressource enthält genau ein Medikament mit der zugehörigen Dosierung, wobei das Medikament verpflichtend in einer contained Medication-Ressource (inline, d.h. innerhalb der Ressource), dokumentiert wird. Der Medikationsplaneintrag kann in weiterer Folge als Grundlage für die Erstellung einer "Geplanten Abgabe" dienen. Es werden R5-Backport-Extensions verwendet. |
| [At ELGA e-Medikation Substance Wirkstoff](StructureDefinition-at-elga-emed-substance-wirkstoff.md) | Dokumentation des Wirkstoffs eines Arzneimittels in der ELGA e-Medikation, sofern es nicht kodiert vorliegt. |
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

### Behavior: Operation Definitions 

These are custom operations that can be supported by and/or invoked by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [e-Med Operation für Plan-Read](OperationDefinition-AtEmed.List.PlanRead.md) | Die $plan-read Operation wird aufgerufen, wenn ein Medikationsplan mit der Intention zu schreiben gelesen wird. |
| [e-Med Operation für Plan-Write](OperationDefinition-AtEmed.List.PlanWrite.md) | Die $plan-write Operation wird aufgerufen, wenn ein Medikationsplan geschrieben wird. |

### Structures: Data Type Profiles 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [AT ELGA e-Medikation Dosage Dosierung](StructureDefinition-at-elga-emed-dosage-dosierung.md) | AT ELGA e-Medikation Dosage Dosierung |
| [AT ELGA e-Medikation Timing](StructureDefinition-at-elga-emed-timing.md) | AT ELGA e-Medikation Timing |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ELGA List Empty Reason Value Set](ValueSet-ElgaListEmptyReasonVS.md) | ValueSet für zulässige Ausprägungen des Elements emptyReason einer Liste. |
| [ELGA List Status ValueSet](ValueSet-ElgaListStatusVS.md) | Zulässige Ausprägungen des Status einer List-Ressource in ELGA. |
| [ELGA List.entry.flag Value Set](ValueSet-ElgaListEntryFlagVS.md) | ValueSet für zulässige Ausprägungen Ausprägungen des Flags eines List.Entries in ELGA. |
| [ELGA e-Med Durchgeführte Abgabe Status Value Set](ValueSet-DurchgefuehrteAbgabeStatusVS.md) | ValueSet für zulässige Ausprägungen eines Status einer Durchgeführten Abgabe (MedicationDispense). |
| [ELGA e-Med Durchgeführte Abgabe Typ Value Set](ValueSet-DurchgefuehrteAbgabeTypVS.md) | ValueSet für zulässige Ausprägungen eines Typs einer Durchgeführten Abgabe (MedicationDispense). |
| [ELGA e-Med Geplante Abgabe Status ValueSet](ValueSet-GeplanteAbgabeStatusVS.md) | ValueSet für zulässige Ausprägungen eines Status einer geplanten Abgabe (MedicationRequest). |
| [ELGA e-Med MedicationRequest Kategorie ValueSet](ValueSet-MedicationRequestCategoryVS.md) | ValueSet für zulässige Ausprägungen der MedicationRequest Kategorie. Dient der Unterscheidung von geplanten Abgaben und Medikationsplaneinträgen |
| [ELGA e-Med Medikationsplaneintrag Status Value Set](ValueSet-MedikationsplaneintragStatusVS.md) | ValueSet für zulässige Ausprägungen eines Status eines Medikationsplaneintrags (MedicationRequest). |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ELGA List.entry.flag CodeSystem](CodeSystem-ElgaListEntryFlagCS.md) | CodeSystem für zulässige Ausprägungen des Flags eines List.Entries in ELGA. |
| [ELGA e-Med MedicationRequest Kategorie CodeSystem](CodeSystem-MedicationRequestCategoryCS.md) | Codesystem für zulässige Ausprägungen der MedicationRequest Kategorie. Dient der Unterscheidung von geplanten Abgaben und Medikationsplaneinträgen. |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [Beispiel Durchgeführte Abgabe 1](MedicationDispense-At-Emed-Example-Durchgefuehrte-Abgabe-01.md) | Beispiel Durchgeführte Abgabe 1 |
| [Beispiel Example Medikationsplaneintrag](MedicationRequest-At-Emed-Example-Mr-Planeintrag.md) | Bildet einen Medikationsplaneintrag mit dem Medikament EBETREXAT und zugehörigen Dosierungsanweisungen ab (MedicationRequest). |
| [Beispiel Example: Substance Clotrimazol](Substance-At-Emed-Example-Substance-Clotrimazol.md) | Beispiel einer Substance Clotrimazol. |
| [Beispiel Example: Substance Hydrocortison](Substance-At-Emed-Example-Substance-Hydrocortison.md) | Beispiel einer Substance Hydrocortison. |
| [Beispiel Journey 01: Collection Bundle](Bundle-At-Emed-Journey-01-Bundle-Medikationsplan.md) | Beispiel eines Collection Bundles, mit leerem Mediaktionsplan (referenziert List-Ressource ohne Einträge). |
| [Beispiel Journey 01: Leerer Medikationsplan](List-At-Emed-Journey-01-List-Medikationsplan.md) | Beispiel eines leeren Mediaktionsplans (List-Ressource ohne Einträge) |
| [Beispiel Journey 01: Transaction Bundle](Bundle-At-Emed-Journey-01-Bundle-Tx-Medikationsplan.md) | Beispiel eines Transaction Bundles, mit leerem Mediaktionsplan (referenziert List-Ressource ohne Einträge). |
| [Beispiel Journey 01: e-Med Fachanwendung](Device-At-Emed-Example-Device-01.md) | Beispiel der e-Med Fachanwendung, die den Mediaktionsplan initial erstellt. |
| [Beispiel Journey 02: Collection Bundle](Bundle-At-Emed-Journey-02-Bundle-Medikationsplan.md) | Beispiel eines Collection Bundles, das einen Mediaktionsplan (List) mit 2 Planeinträgen (MedicationRequests) referenziert. |
| [Beispiel Journey 02: Magistrale Zubereitung](Medication-At-Emed-Example-Medication-Magistral-01.md) | Beispiel einer magistralen Zubereitung (Medication) - Salbe. |
| [Beispiel Journey 02: Medikationsplan](List-At-Emed-Journey-02-List-Medikationsplan.md) | Beispiel eines Medikationsplans (List), der 2 Planeinträge (MedicationRequests) referenziert und Informationen über Reihenfolge und Änderungsstatus speichert. |
| [Beispiel Journey 02: Medikationsplaneintrag 1](MedicationRequest-At-Emed-Journey-02-Mr-Planeintrag-01.md) | Bildet einen Medikationsplaneintrag mit dem Medikament EBETREXAT und zugehörigen Dosierungsanweisungen ab (MedicationRequest). |
| [Beispiel Journey 02: Medikationsplaneintrag 2](MedicationRequest-At-Emed-Journey-02-Mr-Planeintrag-02.md) | Bildet einen Medikationsplaneintrag mit einer Referenz auf eine magistrale Zubereitung und zugehörigen Dosierungsanweisungen ab (MedicationRequest). |
| [Beispiel Journey 02: Transaction Bundle](Bundle-At-Emed-Journey-02-Bundle-Tx-Medikationsplan.md) | Beispiel eines Transaction Bundles, das einen Mediaktionsplan (List) mit 2 Planeinträgen (MedicationRequests) beinhaltet. |
| [Beispiel Journey 03: Geplante Abgabe](MedicationRequest-At-Emed-Journey-03-Mr-Geplante-Abgabe.md) | Bildet eine Geplante Abgabe des Medikaments EBETREXAT und zugehörigen Dosierungsanweisungen ab (MedicationRequest). |
| [Beispiel Journey 05-a: Collection Bundle mit geänderter Reihenfolge der Planeinträge.](Bundle-At-Emed-Journey-05-a-Bundle-Medikationsplan.md) | Beispiel eines Collection Bundles, mit geänderter Reihenfolge der Medikationsplaneinträge. |
| [Beispiel Journey 05-a: Reihenfolge der Planeinträge ändern](List-At-Emed-Journey-05-a-List-Reihenfolge.md) | Beispiel Änderung der Reihenfolge der Medikationsplaneinträge (MedicationRequests) durch den Patienten. |
| [Beispiel Journey 05-a: Transaction Bundle zur Änderung der Reihenfolge der Medikationsplaneinträge.](Bundle-At-Emed-Journey-05-a-Bundle-Medikationsplan-Tx.md) | Beispiel eines Transaction Bundles, zur Änderung der Reihenfolge der Medikationsplaneinträge. |
| [Beispiel Journey 05-b: Collection Bundles mit geändertem und abgesetztem Medikationsplaneintrag](Bundle-At-Emed-Journey-05-b-Bundle-Medikationsplan.md) | Beispiel eines Collection Bundles mit geändertem und abgesetztem Medikationsplaneintrag. |
| [Beispiel Journey 05-b: Mediationsplan ändern (Einträge absetzen und ändern).](List-At-Emed-Journey-05-b-List-Aenderung.md) | Beispiel: Mediationsplan ändern (Einträge absetzen und ändern). |
| [Beispiel Journey 05-b: Transaction Bundle zur Änderung von bestehenden Medikationsplaneinträgen (absetzen und ändern).](Bundle-At-Emed-Journey-05-b-Bundle-Tx-Medikationsplan.md) | Beispiel eines Transaction Bundles, zur Änderung von bestehenden Medikationsplaneinträgen (absetzen und ändern). |
| [Beispiel Journey 05-b: Änderung Dosierung des Medikationsplaneintrags](MedicationRequest-At-Emed-Journey-05-b-Mr-Planeintrag-01.md) | Änderung der Dosierung eines Medikationsplaneintrags (EBETREXAT). |
| [Beispiel Organisation Apotheke 01](Organization-At-Emed-Example-Organization-Apo-01.md) | Beispiel einer Apotheke als Organisation. |
| [Beispiel Patient 01](Patient-At-Emed-Example-Patient-01.md) | Beispiel eines Patienten. |
| [Beispiel Ärztin 01](Practitioner-At-Emed-Example-Practitioner-01.md) | Beispiel einer behandelnden Ärztin. |
| [Beispiel Ärztin 02](Practitioner-At-Emed-Example-Practitioner-02.md) | Beispiel einer ursprünglich eine Medikation verordnenden Ärztin (Fremdmedikation). |
| [Beispiel: Geplante Abgabe](MedicationRequest-At-Emed-Example-Mr-Geplante-Abgabe.md) | Bildet eine Geplante Abgabe des Medikaments EBETREXAT und zugehörigen Dosierungsanweisungen ab (MedicationRequest). |

