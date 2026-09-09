# HL7.AT.FHIR.ELGA.EDIAG.R4\Artifacts Summary - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Behavior: Operation Definitions 

These are custom operations that can be supported by and/or invoked by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [e-Diagnose Operation $delete](OperationDefinition-at-ediag-operation-diagnose-delete.md) | Die `$delete`-Operation löscht eine bestimmte Diagnose aus der e-Diagnose Fachanwendung. |
| [e-Diagnose Operation $entered-in-error](OperationDefinition-at-ediag-operation-diagnose-entered-in-error.md) | Die `$entered-in-error`-Operation storniert eine bestimmte Diagnose in der e-Diagnose Fachanwendung. |
| [e-Diagnose Operation $write](OperationDefinition-at-ediag-operation-list-write.md) | Die `$write`-Operation wird aufgerufen, wenn eine Summary-Liste geschrieben wird. |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [AT ELGA e-Diagnose AllergyIntolerance](StructureDefinition-at-elga-ediag-allergyintolerance.md) | Das AT e-Diagnose AllergyIntolerance-Profil leitet sich vom AllergyIntolerance-Profil ab und passt dieses für die Anforderungen der e-Diagnose an. |
| [AT ELGA e-Diagnose Condition](StructureDefinition-at-elga-ediag-condition.md) | Das AT e-Diagnose Condition-Profil leitet sich vom Condition-Profil ab und passt dieses für die Anforderungen der e-Diagnose an. |
| [AT ELGA e-Diagnose List](StructureDefinition-at-elga-ediag-list.md) | Das AT e-Diagnose List-Profil dient der strukturierten Listung von Einträgen. |
| [AT ELGA e-Diagnose Procedure](StructureDefinition-at-elga-ediag-procedure.md) | Das AT e-Diagnose Procedure-Profil leitet sich vom Procedure-Profil ab und passt dieses für die Anforderungen der e-Diagnose an. |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [AT ELGA Entered In Error](StructureDefinition-at-elga-ediag-ext-entered-in-error.md) | Kennzeichnet, ob eine Information fehlerhaft eingegeben wurde. |
| [AT ELGA Reaktionszeit](StructureDefinition-at-elga-ediag-reaction-time.md) | Zeitlicher Verlauf der Manifestation (<6h, 6-24h, >24h, unknown) |
| [AT ELGA Reported (Fremdangabe)](StructureDefinition-at-elga-ediag-reported.md) | Kennzeichnet, ob eine Information fremdberichtet ist (z. B. vom Patienten oder Dritten). |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [AT e-Diagnose AllergyIntolerance Value Set](ValueSet-at-ediag-allergyintolerance-codes.md) | ValueSet mit Codes für Substanzen und Stoffe, die als Auslöser von Allergien oder Intoleranzen erfasst werden. |
| [AT e-Diagnose Diagnosen Value Set](ValueSet-at-ediag-diagnosen-codes.md) | Value-Set für die Codierung von Diagnosen. |
| [AT e-Diagnose Procedure Status Value Set](ValueSet-at-ediag-procedure-status.md) | ValueSet zur Kennzeichnung, ob eine Prozedur durchgeführt oder irrtümlich dokumentiert wurde. |
| [AT e-Diagnose Procedures Value Set](ValueSet-at-ediag-prozeduren-codes.md) | ValueSet mit SNOMED CT Prozeduren (is-a Procedure). Dient als vollständige Alternative zum eingeschränkten IPS ValueSet. |
| [AT e-Diagnose Reaction Time Value Set](ValueSet-at-ediag-reaction-time-vs.md) | ValueSet mit zulässigen Ausprägungen der Reaktionszeit einer allergischen Reaktion. |
| [ELGA AT e-Diagnose List Entry Code Value Set](ValueSet-at-ediag-list-code-vs.md) | ValueSet mit zulässigen Codes für das Flag eines List-Entries in ELGA. |
| [ELGA List Empty Reason Value Set](ValueSet-at-ediag-list-emptyreason-vs.md) | ValueSet für zulässige Ausprägungen des Elements emptyReason einer Liste. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Reaktionszeit Codes](CodeSystem-at-ediag-codesystem-reaction-time-cs.md) | Zeitlicher Verlauf der Manifestation |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [Allergie Summary-Liste mit einem Summary-Eintrag](List-ListAllergyExample.md) | Beispiel einer Summary-Liste mit einem Eintrag, der auf eine Allergie verweist. |
| [Beispiel Device](Device-DeviceExample.md) | Beispielinstanz eines Devices dass die Fachanwendung initial erstellt |
| [Beispiel Patient](Patient-PatientExample.md) | Beispielinstanz eines Patienten |
| [Beispiel Practitioner](Practitioner-PractitionerExample.md) | Beispielinstanz eines Arztes |
| [Beispiel Prozedur](Procedure-ProcedureExample.md) | Beispielinstanz einer Prozedur |
| [Beispiel einer leeren Summary-Liste](List-ListExample01.md) | Initiale Summary-Liste ohne Summary-Einträge. |
| [Beispiel stornierte Diagnose](Condition-DiagnoseEnteredInErrorExample.md) | Beispielinstanz einer stornierten Diagnose |
| [Beispielinstanz einer Allergie für die Summary-Liste](AllergyIntolerance-AllergySummaryExample.md) | Beispiel einer bestätigten Allergie |
| [Beispielinstanz einer Diagnose für die Gesamtliste](Condition-ConditionGesamtlisteExample.md) | Beispiel Diagnose, aktuelle Beschwerden des Patienten |
| [Beispielinstanz einer Diagnose für die Summary-Liste](Condition-ConditionSummaryExample.md) | Beispiel einer dauerhaften Diagnose |
| [Condition Summary-Liste mit einem Summary-Eintrag](List-ListConditionExample.md) | Beispiel einer Summary-Liste mit einem Eintrag, der auf eine Diagnose verweist. |

