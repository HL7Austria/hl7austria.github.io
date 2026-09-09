# HL7.AT.FHIR.ELGA.EDIAG.R4\Beispielinstanz einer Diagnose für die Summary - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispielinstanz einer Diagnose für die Summary**

## Example Condition: Beispielinstanz einer Diagnose für die Summary

Profile: [AT ELGA e-Diagnose Condition](StructureDefinition-at-elga-ediag-condition.md)

**AT ELGA Reported (Fremdangabe)**: true

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**code**: Crohn's disease

**subject**: [Max Mustermann Male, DoB: 1900-01-01 ( Social Security number: 1234010100)](Patient-PatientExample.md)

**onset**: 2010-01-01

**recordedDate**: 2026-03-09 00:00:00+0000

**recorder**: [Practitioner Melanie Musterärztin ](Practitioner-PractitionerExample.md)

**asserter**: [Practitioner Melanie Musterärztin ](Practitioner-PractitionerExample.md)

**note**: 

> 

Seit 2010




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "ConditionGesamtlisteExample4",
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
      "code" : "34000006",
      "display" : "Crohn's disease"
    }]
  },
  "subject" : {
    "reference" : "Patient/PatientExample"
  },
  "onsetDateTime" : "2010-01-01",
  "recordedDate" : "2026-03-09T00:00:00+00:00",
  "recorder" : {
    "reference" : "Practitioner/PractitionerExample"
  },
  "asserter" : {
    "reference" : "Practitioner/PractitionerExample"
  },
  "note" : [{
    "text" : "Seit 2010"
  }]
}

```
