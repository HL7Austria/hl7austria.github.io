# HL7.AT.FHIR.ELGA.EMED.R4\Artifacts Summary - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ELGA e-Med Durchgeführte Abgabe](StructureDefinition-at-emed-md-durchgefuehrte-abgabe.md) | Dokumentiert eine durchgeführte Abgabe eines Arzneimittels ("MedicationDispense"-Ressource). Sofern eine zugehörige geplante Abgabe vorliegt, können Abweichungen hinsichtlich der Dosierung oder einer möglichen Substitution des Medikaments in der durchgeführten Abgabe dokumentiert werden. |
| [ELGA e-Med Geplante Abgabe](StructureDefinition-at-emed-mr-geplante-abgabe.md) | Bildet eine geplante Abgabe eines Arzneimittels aus dem zugrundeliegenden Medikationsplaneintrag des ELGA-Teilnehmers ab ("MedicationRequest"-Ressource). Sie enthält das verordnete Arzneimittel und dessen Dosierung und spielgelt die Inhalte des e-Rezepts wider. Geplante Abgaben dienen somit der Nachvollziehbarkeit der rezeptierten Arzneimittel in der e-Medikation. Als groupIdentifier dient die Geplante-Abgabe-ID (früher eMED-ID), die auch im e-Rezept mitgeführt wird. Werden mehrere Arzneimittel gleichzeitig verordnet, wird für jedes Arzneimittel eine geplante Abgabe mit demselben groupIdentifier erstellt (bildet 'Rezept-Klammer'). Verwendet R5 Backport Extensions. |
| [ELGA e-Med Medikation](StructureDefinition-at-emed-medication.md) | Bildet ein Arzneimittel in der "Medication"-Ressource ab. Wird grundsätzlich verwendet in Planeintrag, geplante Abgabe und durchgeführte Abgabe. Aktuell nur geprüft im Kontext Planeintrag. Unterschieden werden folgende Fälle:1. Arzneimittel besitzt eine PZN und wird über diese identifiziert, die weiteren Informationen werden durch die Fachanwendung angereichert. a. Identifikation nur über PZN: eine Befüllung jener Felder, die über die ASP-Liste angereichert werden können, durch den GDA wird technisch verhindert (Invariante oder eigene Medication Ressource). b. Identifikation über PZN und Handelsname: damit eine Prüfung auf Übereinstimmung durchgeführt werden kann. TODO: Juristisch zu prüfen.
1. Arzneimittel besitzt keine PZN, alle benötigten Informationen sind verpflichtend vom GDA zu befüllen: a. Bei Verschreibung von Wirkstoffen b. Bei magistraler Anwendung, Infusionen
 |
| [ELGA e-Med Medikationsplan](StructureDefinition-at-emed-list-medikationsplan.md) | Bildet den Medikationsplan eines ELGA-Teilnehmers ab ("List"-Ressource). Die Liste beinhaltet Referenzen auf 0..* Medikationsplaneinträge (MedicationRequests), die alle verordneten Arzneimittel und deren Dosierung abbilden. Die Reihenfolge der Listenelemente kann duch den User festgelegt werden. Jedes Listenelement enthält einen Änderungsstatus (weitere Elemente sind noch zu klären).TODO: Invariante, dass überall in der List der gleiche Patient enthalten sein muss |
| [ELGA e-Med Medikationsplan Collection Bundle](StructureDefinition-at-emed-bundle-medikationsplan.md) | Das Bundle vom Typ Collection bestehend aus:* 1..1 Medikationsplan (List): Liste mit Referenzen auf Medikationsplaneinträge und zur Abbildung von Reihenfolge und Änderungsstatus)
* 0..* Medikationsplaneinträge (MedicationRequests): Medikation und Dosierung
 |
| [ELGA e-Med Medikationsplan Transaction Bundle](StructureDefinition-at-emed-bundle-tx-medikationsplan.md) | Das Bundle vom Typ Transaction dient dem schreibenden Zugriff auf den ELGA Medikationsplan bestehend aus:* 1..1 Medikationsplan (List): Liste mit Referenzen auf Medikationsplaneinträge und zur Abbildung von Reihenfolge und Änderungsstatus)
* 0..* Medikationsplaneinträge (MedicationRequests): Medikation und Dosierung
 |
| [ELGA e-Med Planeintrag](StructureDefinition-at-emed-mr-planeintrag.md) | Bildet einen Medikationsplaneintrag im Medikationsplan eines ELGA-Teilnehmers ab ("MedicationRequest"-Ressource). Er enthält genau ein Arzneimittel und dessen Dosierung. Kann in weiterer Folge dazu dienen, eine geplante Abgabe zu erstellen. Verwendet R5 Backport Extensions. |
| [ELGA e-Med Substanz](StructureDefinition-at-emed-substance.md) | Dokumentation der Substanz eines Inhaltsstoffes eines Arzneimittels, sofern es nicht kodiert vorliegt. |

### Structures: Data Type Profiles 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ELGA e-Med Dosage](StructureDefinition-at-emed-dosage.md) | Dosage |
| [ELGA e-Med Timing](StructureDefinition-at-emed-timing.md) | ELGA e-Med Timing |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [ELGA e-Med Geplante Abgabe Status ValueSet](ValueSet-GeplanteAbgabeStatusVS.md) | ValueSet für zulässige Ausprägungen eines Status einer geplanten Abgabe (MedicationRequest). |
| [ELGA e-Med MedicationRequest Kategorie ValueSet](ValueSet-MedicationRequestCategoryVS.md) | ValueSet für zulässige Ausprägungen der MedicationRequest Kategorie. Dient der Unterscheidung von geplanten Abgaben und Medikationsplaneinträgen |
| [ELGA e-Med Medikationsplan Empty Reason Value Set](ValueSet-MedikationsplanEmptyReasonVS.md) | ValueSet für zulässige Ausprägungen des elements emptyReason Status eines Medikationsplaneintrags (MedicationRequest). |
| [ELGA e-Med Medikationsplaneintrag Status Value Set](ValueSet-MedikationsplaneintragStatusVS.md) | ValueSet für zulässige Ausprägungen eines Status eines Medikationsplaneintrags (MedicationRequest). |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
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
| [Beispiel Journey 02: Medikationsplan](List-At-Emed-Journey-02-List-Medikationsplan.md) | Beispiel eines Medikationsplans (List), der 2 Planeinträge (MedicationReqeusts) referenziert und Informationen über Reihenfolge und Änderungsstatus speichert. |
| [Beispiel Journey 02: Medikationsplaneintrag 1](MedicationRequest-At-Emed-Journey-02-Mr-Planeintrag-01.md) | Bildet einen Medikationsplaneintrag mit dem Medikament EBETREXAT und zugehörigen Dosierungsanweisungen ab (MedicationRequest). |
| [Beispiel Journey 02: Medikationsplaneintrag 2](MedicationRequest-At-Emed-Journey-02-Mr-Planeintrag-02.md) | Bildet einen Medikationsplaneintrag mit einer Referenz auf eine magistrale Zubereitung und zugehörigen Dosierungsanweisungen ab (MedicationRequest). |
| [Beispiel Journey 02: Transaction Bundle](Bundle-At-Emed-Journey-02-Bundle-Tx-Medikationsplan.md) | Beispiel eines Transaction Bundles, das einen Mediaktionsplan (List) mit 2 Planeinträgen (MedicationRequests) beinhaltet. |
| [Beispiel Journey 03: Geplante Abgabe](MedicationRequest-At-Emed-Journey-03-Mr-Geplante-Abgabe.md) | Bildet eine geplante Abgabe des Medikaments EBETREXAT und zugehörigen Dosierungsanweisungen ab (MedicationRequest). |
| [Beispiel Journey 05-a: Collection Bundle mit geänderter Reihenfolge der Planeinträge.](Bundle-At-Emed-Journey-05-a-Bundle-Medikationsplan.md) | Beispiel eines Collection Bundles, mit geänderter Reihenfolge der Medikationsplaneinträge. |
| [Beispiel Journey 05-a: Reihenfolge der Planeinträge ändern](List-At-Emed-Journey-05-a-List-Reihenfolge.md) | Beispiel Änderung der Reihenfolge der Medikationsplaneinträge (MedicationReqeusts) durch den Patienten. |
| [Beispiel Journey 05-a: Transaction Bundle zur Änderung der Reihenfolge der Medikationsplaneinträge.](Bundle-At-Emed-Journey-05-a-Bundle-Medikationsplan-Tx.md) | Beispiel eines Transaction Bundles, zur Änderung der Reihenfolge der Medikationsplaneinträge. |
| [Beispiel Journey 05-b: Collection Bundles mit geändertem und abgesetztem Medikationsplaneintrag](Bundle-At-Emed-Journey-05-b-Bundle-Medikationsplan.md) | Beispiel eines Collection Bundles mit geändertem und abgesetztem Medikationsplaneintrag. |
| [Beispiel Journey 05-b: Mediationsplan ändern (Einträge absetzen und ändern).](List-At-Emed-Journey-05-b-List-Aenderung.md) | Beispiel: Mediationsplan ändern (Einträge absetzen und ändern). |
| [Beispiel Journey 05-b: Transaction Bundle zur Änderung von bestehenden Medikationsplaneinträgen (absetzen und ändern).](Bundle-At-Emed-Journey-05-b-Bundle-Tx-Medikationsplan.md) | Beispiel eines Transaction Bundles, zur Änderung von bestehenden Medikationsplaneinträgen (absetzen und ändern). |
| [Beispiel Journey 05-b: Änderung Dosierung des Medikationsplaneintrags](MedicationRequest-At-Emed-Journey-05-b-Mr-Planeintrag-01.md) | Änderung der Dosierung eines Medikationsplaneintrags (EBETREXAT). |
| [Beispiel Medikationsplaneintrag mit Dosierung im Tageszeitenschema](MedicationRequest-At-Emed-Example-Mr-Dosierung-1010.md) | Medikationsplaneintrag mit Dosierung im Tageszeitenschema (morgens, mittags, abends, nachts): 1-0-1-0. |
| [Beispiel Medikationsplaneintrag mit Dosierung im Tageszeitenschema](MedicationRequest-At-Emed-Example-Mr-Dosierung-Zeit-1tg.md) | Medikationsplaneintrag mit Dosierung im Tageszeitenschema (morgens, mittags, abends, nachts): 1-0-1-0. |
| [Beispiel Organisation Apotheke 01](Organization-At-Emed-Example-Organization-Apo-01.md) | Beispiel einer Apotheke als Organisation. |
| [Beispiel Patient 01](Patient-At-Emed-Example-Patient-01.md) | Beispiel eines Patienten. |
| [Beispiel Ärztin 01](Practitioner-At-Emed-Example-Practitioner-01.md) | Beispiel einer behandelnden Ärztin. |
| [Beispiel Ärztin 02](Practitioner-At-Emed-Example-Practitioner-02.md) | Beispiel einer ursprünglich eine Medikation verordnenden Ärztin (Fremdmedikation). |
| [Medikationsplaneintrag mit Freitext-Dosierung](MedicationRequest-At-Emed-Example-Mr-Dosierung-Freitext.md) | Medikationsplaneintrag mit Dosierung im Tageszeitenschema (morgens, mittags, abends, nachts): 1-0-1-0. |

