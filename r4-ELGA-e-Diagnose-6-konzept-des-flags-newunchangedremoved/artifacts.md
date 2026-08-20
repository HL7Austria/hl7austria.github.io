# HL7.AT.FHIR.ELGA.EDIAG.R4\Artifacts Summary - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Behavior: Operation Definitions 

These are custom operations that can be supported by and/or invoked by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [e-Diagnose Operation für List-Read](OperationDefinition-at-ediag-operation-listread.md) | Die $list-read Operation wird aufgerufen, wenn eine Liste mit der Intention zu schreiben gelesen wird. |
| [e-Diagnose Operation für List-Write](OperationDefinition-at-ediag-operation-listwrite.md) | Die $list-write Operation wird aufgerufen, wenn eine Liste geschrieben wird. |

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [AT ELGA e-Diagnose AllergyIntolerance](StructureDefinition-at-elga-ediag-allergyintolerance.md) | Das AT e-Diagnose AllergyIntolerance-Profil leitet sich vom AllergyIntolerance-Profil ab und passt dieses für die Anforderungen der e-Diagnose an. |
| [AT ELGA e-Diagnose Condition](StructureDefinition-at-elga-ediag-condition.md) | Das AT e-Diagnose Condition-Profil leitet sich vom Condition-Profil ab und passt dieses für die Anforderungen der e-Diagnose an. |
| [AT ELGA e-Diagnose List](StructureDefinition-at-elga-ediag-list.md) | Das AT e-Diagnose List-Profil leitet sich vom HL7-AT-Core-R4-Profil ab und dient der strukturierten Listung von Einträgen. |
| [AT ELGA e-Diagnose Procedure](StructureDefinition-at-elga-ediag-procedure.md) | Das AT e-Diagnose Procedure-Profil leitet sich vom Procedure-Profil ab und passt dieses für die Anforderungen der e-Diagnose an. |

### Structures: Data Type Profiles 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [AT ELGA e-Diagnose Reference](StructureDefinition-at-elga-ediag-reference.md) | Das AT e-Diagnose AllergyIntolerance-Profil leitet sich vom AllergyIntolerance-Profil ab und passt dieses für die Anforderungen der e-Diagnose an. |

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
| [AT e-Diagnose Diagnosis Type Value Set](ValueSet-at-ediag-diagnosen-type.md) | ValueSet zur Unterscheidung, ob eine Diagnose aktuell relevant oder nicht aktuell relevant ist. |
| [AT e-Diagnose Procedure Status Value Set](ValueSet-at-ediag-procedure-status.md) | ValueSet zur Kennzeichnung, ob eine Prozedur durchgeführt oder irrtümlich dokumentiert wurde. |
| [AT e-Diagnose Procedures Value Set](ValueSet-at-ediag-prozeduren-codes.md) | ValueSet mit SNOMED CT Prozeduren (is-a Procedure). Dient als vollständige Alternative zum eingeschränkten IPS ValueSet. |
| [AT e-Diagnose Reaction Time Value Set](ValueSet-at-ediag-reaction-time-vs.md) | ValueSet mit zulässigen Ausprägungen der Reaktionszeit einer allergischen Reaktion. |
| [ELGA AT e-Diagnose List Entry Code Value Set](ValueSet-at-ediag-list-code-vs.md) | ValueSet mit zulässigen Codes für das Flag eines List-Entries in ELGA. |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [AT e-Diagnose Diagnose Typ](CodeSystem-at-ediag-codesystem-diagnose-type.md) | Kennzeichnet, ob eine Diagnose, Prozedur oder Allergie aktuell klinisch relevant ist |
| [Reaktionszeit Codes](CodeSystem-at-ediag-codesystem-reaction-time-cs.md) | Zeitlicher Verlauf der Manifestation |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [Beispiel Allergie](AllergyIntolerance-AllergyExample.md) | Beispielinstanz einer bestätigten Allergie |
| [Beispiel Device](Device-DeviceExample.md) | Beispielinstanz eines Devices dass die Fachanwendung initial erstellt |
| [Beispiel Diagnose currently relevant](Condition-DiagnoseCurrentlyRelevantExample.md) | Beispielinstanz einer Diagnose - currently relevant |
| [Beispiel Diagnose not currently relevant](Condition-DiagnoseNotCurrentlyRelevantExample.md) | Beispielinstanz einer Diagnose - not currently relevant |
| [Beispiel Patient](Patient-PatientExample.md) | Beispielinstanz eines Patienten |
| [Beispiel Practitioner](Practitioner-PractitionerExample.md) | Beispielinstanz eines Arztes |
| [Beispiel Prozedur](Procedure-ProcedureExample.md) | Beispielinstanz einer Prozedur |
| [Beispiel einer leeren e-Diagnose-Liste](List-ListExample01.md) | Initiale e-Diagnose-Liste ohne Diagnosen, Prozeduren oder Allergien. |
| [e-Diagnose-Liste mit einer relevanten Diagnose](List-ListExample02.md) |  |

