# HL7.AT.FHIR.ELGA.EDIAG.R4\Beispielinstanz einer Prozedur für die Summary-Liste - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispielinstanz einer Prozedur für die Summary-Liste**

## Example Procedure: Beispielinstanz einer Prozedur für die Summary-Liste

Profile: [AT ELGA e-Diagnose Procedure](StructureDefinition-at-elga-ediag-procedure.md)

**AT ELGA Reported (Fremdangabe)**: false

**status**: Completed

**code**: Coloskopie

**subject**: [Max Mustermann Male, DoB: 1900-01-01 ( Social Security number: 1234010100)](Patient-PatientExample.md)

**performed**: 2025-09-23 09:30:00+0200

**recorder**: [Practitioner Melanie Musterärztin ](Practitioner-PractitionerExample.md)

**asserter**: [Practitioner Melanie Musterärztin ](Practitioner-PractitionerExample.md)



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "ProcedureSummaryExample1",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-procedure"]
  },
  "extension" : [{
    "url" : "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-reported",
    "valueBoolean" : false
  }],
  "status" : "completed",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "73761001",
      "display" : "Coloskopie"
    }]
  },
  "subject" : {
    "reference" : "Patient/PatientExample"
  },
  "performedDateTime" : "2025-09-23T09:30:00+02:00",
  "recorder" : {
    "reference" : "Practitioner/PractitionerExample"
  },
  "asserter" : {
    "reference" : "Practitioner/PractitionerExample"
  }
}

```
