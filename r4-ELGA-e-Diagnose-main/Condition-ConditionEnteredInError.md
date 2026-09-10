# HL7.AT.FHIR.ELGA.EDIAG.R4\Beispielinstanz einer stornierten Diagnose - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispielinstanz einer stornierten Diagnose**

## Example Condition: Beispielinstanz einer stornierten Diagnose

Profile: [AT ELGA e-Diagnose Condition](StructureDefinition-at-elga-ediag-condition.md)

**AT ELGA Reported (Fremdangabe)**: true

> **AT ELGA Entered In Error**
* practitioner: `PractitionerExample`
* datetime: 2026-09-09 10:30:00+0100
* reason: Diagnose irrtümlich erfasst

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**code**: Hyperthyroidism

**subject**: `PatientExample`

**onset**: 2026-02-28

**recordedDate**: 2026-03-09 00:00:00+0000

**recorder**: `PractitionerExample`

**asserter**: `PractitionerExample`



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "ConditionEnteredInError",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-condition"]
  },
  "extension" : [{
    "url" : "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-reported",
    "valueBoolean" : true
  },
  {
    "extension" : [{
      "url" : "practitioner",
      "valueReference" : {
        "reference" : "PractitionerExample"
      }
    },
    {
      "url" : "datetime",
      "valueDateTime" : "2026-09-09T10:30:00+01:00"
    },
    {
      "url" : "reason",
      "valueString" : "Diagnose irrtümlich erfasst"
    }],
    "url" : "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-ext-entered-in-error"
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
      "code" : "34486009",
      "display" : "Hyperthyroidism"
    }]
  },
  "subject" : {
    "reference" : "PatientExample"
  },
  "onsetDateTime" : "2026-02-28",
  "recordedDate" : "2026-03-09T00:00:00+00:00",
  "recorder" : {
    "reference" : "PractitionerExample"
  },
  "asserter" : {
    "reference" : "PractitionerExample"
  }
}

```
