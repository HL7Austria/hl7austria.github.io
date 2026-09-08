# HL7.AT.FHIR.ELGA.EDIAG.R4\Beispiel stornierte Diagnose - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel stornierte Diagnose**

## Example Condition: Beispiel stornierte Diagnose

Profile: [AT ELGA e-Diagnose Condition](StructureDefinition-at-elga-ediag-condition.md)

**AT ELGA Reported (Fremdangabe)**: false

> **AT ELGA Entered In Error**
* practitioner: [Practitioner Melanie Musterärztin ](Practitioner-PractitionerExample.md)
* datetime: 2026-09-02
* reason: Fehlerhafte Eingabe

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
  "id" : "DiagnoseEnteredInErrorExample",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-condition"]
  },
  "extension" : [{
    "url" : "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-reported",
    "valueBoolean" : false
  },
  {
    "extension" : [{
      "url" : "practitioner",
      "valueReference" : {
        "reference" : "Practitioner/PractitionerExample"
      }
    },
    {
      "url" : "datetime",
      "valueDateTime" : "2026-09-02"
    },
    {
      "url" : "reason",
      "valueString" : "Fehlerhafte Eingabe"
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
