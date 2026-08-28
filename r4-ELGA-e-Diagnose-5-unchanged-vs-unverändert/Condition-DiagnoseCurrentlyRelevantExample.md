# HL7.AT.FHIR.ELGA.EDIAG.R4\Beispiel Diagnose currently relevant - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel Diagnose currently relevant**

## Example Condition: Beispiel Diagnose currently relevant

Profile: [AT ELGA e-Diagnose Condition](StructureDefinition-at-elga-ediag-condition.md)

**AT ELGA Reported (Fremdangabe)**: false

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**code**: Hypothyroidism

**subject**: [Max Mustermann Male, DoB: 1900-01-01 ( Social Security number: 1234010100)](Patient-PatientExample.md)

**onset**: 2024-06-01

**recordedDate**: 2026-03-01 00:00:00+0000

**recorder**: [Practitioner Melanie Musterärztin ](Practitioner-PractitionerExample.md)

**asserter**: [Practitioner Melanie Musterärztin ](Practitioner-PractitionerExample.md)

**note**: 

> 

Patient berichtet über bekannte Schilddrüsenerkrankung seit 2024, aktuell gut eingestellt.




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "DiagnoseCurrentlyRelevantExample",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-condition"]
  },
  "extension" : [{
    "url" : "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-reported",
    "valueBoolean" : false
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
      "code" : "40930008",
      "display" : "Hypothyroidism"
    }]
  },
  "subject" : {
    "reference" : "Patient/PatientExample"
  },
  "onsetDateTime" : "2024-06-01",
  "recordedDate" : "2026-03-01T00:00:00+00:00",
  "recorder" : {
    "reference" : "Practitioner/PractitionerExample"
  },
  "asserter" : {
    "reference" : "Practitioner/PractitionerExample"
  },
  "note" : [{
    "text" : "Patient berichtet über bekannte Schilddrüsenerkrankung seit 2024, aktuell gut eingestellt."
  }]
}

```
