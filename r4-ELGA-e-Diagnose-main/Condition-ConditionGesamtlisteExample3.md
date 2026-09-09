# HL7.AT.FHIR.ELGA.EDIAG.R4\Beispielinstanz einer Diagnose für die Gesamtliste - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispielinstanz einer Diagnose für die Gesamtliste**

## Example Condition: Beispielinstanz einer Diagnose für die Gesamtliste

Profile: [AT ELGA e-Diagnose Condition](StructureDefinition-at-elga-ediag-condition.md)

**AT ELGA Reported (Fremdangabe)**: true

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**code**: Diarrhea caused by drug

**subject**: [Max Mustermann Male, DoB: 1900-01-01 ( Social Security number: 1234010100)](Patient-PatientExample.md)

**onset**: 2026-03-06

**recordedDate**: 2026-03-06 00:00:00+0000

**recorder**: [Practitioner Melanie Musterärztin ](Practitioner-PractitionerExample.md)

**asserter**: [Practitioner Melanie Musterärztin ](Practitioner-PractitionerExample.md)

**note**: 

> 

Wässrige Durchfälle bei bestehender AB-Therapie




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "ConditionGesamtlisteExample3",
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
      "code" : "428867008",
      "display" : "Diarrhea caused by drug"
    }]
  },
  "subject" : {
    "reference" : "Patient/PatientExample"
  },
  "onsetDateTime" : "2026-03-06",
  "recordedDate" : "2026-03-06T00:00:00+00:00",
  "recorder" : {
    "reference" : "Practitioner/PractitionerExample"
  },
  "asserter" : {
    "reference" : "Practitioner/PractitionerExample"
  },
  "note" : [{
    "text" : "Wässrige Durchfälle bei bestehender AB-Therapie"
  }]
}

```
