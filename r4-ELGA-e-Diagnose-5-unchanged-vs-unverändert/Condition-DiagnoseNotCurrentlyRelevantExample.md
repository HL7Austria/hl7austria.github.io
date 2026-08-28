# HL7.AT.FHIR.ELGA.EDIAG.R4\Beispiel Diagnose not currently relevant - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel Diagnose not currently relevant**

## Example Condition: Beispiel Diagnose not currently relevant

Profile: [AT ELGA e-Diagnose Condition](StructureDefinition-at-elga-ediag-condition.md)

**AT ELGA Reported (Fremdangabe)**: true

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**code**: Saisonale Grippe

**subject**: [Max Mustermann Male, DoB: 1900-01-01 ( Social Security number: 1234010100)](Patient-PatientExample.md)

**onset**: 2026-02-28

**recordedDate**: 2026-03-01 00:00:00+0000

**recorder**: [Practitioner Melanie Musterärztin ](Practitioner-PractitionerExample.md)

**asserter**: [Practitioner Melanie Musterärztin ](Practitioner-PractitionerExample.md)

**note**: 

> 

Temperatur >38.5, Gliederschmerzen




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "DiagnoseNotCurrentlyRelevantExample",
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
      "code" : "719590007",
      "display" : "Saisonale Grippe"
    }]
  },
  "subject" : {
    "reference" : "Patient/PatientExample"
  },
  "onsetDateTime" : "2026-02-28",
  "recordedDate" : "2026-03-01T00:00:00+00:00",
  "recorder" : {
    "reference" : "Practitioner/PractitionerExample"
  },
  "asserter" : {
    "reference" : "Practitioner/PractitionerExample"
  },
  "note" : [{
    "text" : "Temperatur >38.5, Gliederschmerzen"
  }]
}

```
