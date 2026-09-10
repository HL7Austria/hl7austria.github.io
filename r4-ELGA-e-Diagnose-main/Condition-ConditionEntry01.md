# HL7.AT.FHIR.ELGA.EDIAG.R4\Beispielinstanz einer Diagnose für die Summary-Liste - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispielinstanz einer Diagnose für die Summary-Liste**

## Example Condition: Beispielinstanz einer Diagnose für die Summary-Liste

Profile: [AT ELGA e-Diagnose Condition](StructureDefinition-at-elga-ediag-condition.md)

**AT ELGA Reported (Fremdangabe)**: true

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**code**: Hypertensive disorder, systemic arterial

**subject**: `PatientExample`

**onset**: 2024-06-01

**recordedDate**: 2026-03-03 00:00:00+0000

**recorder**: `PractitionerExample`

**asserter**: `PractitionerExample`

**note**: 

> 

Patient berichtet über bekannte Hypertonie seit 2024, Lisinopril 10mg 1-0-0.




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "ConditionEntry01",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-condition"]
  },
  "extension" : [{
    "url" : "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-reported",
    "valueBoolean" : true
  }],
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
      "code" : "active"
    }]
  },
  "verificationStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
      "code" : "confirmed"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "38341003",
      "display" : "Hypertensive disorder, systemic arterial"
    }]
  },
  "subject" : {
    "reference" : "PatientExample"
  },
  "onsetDateTime" : "2024-06-01",
  "recordedDate" : "2026-03-03T00:00:00+00:00",
  "recorder" : {
    "reference" : "PractitionerExample"
  },
  "asserter" : {
    "reference" : "PractitionerExample"
  },
  "note" : [{
    "text" : "Patient berichtet über bekannte Hypertonie seit 2024, Lisinopril 10mg 1-0-0."
  }]
}

```
