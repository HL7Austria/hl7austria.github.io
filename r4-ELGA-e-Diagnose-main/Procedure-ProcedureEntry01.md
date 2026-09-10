# HL7.AT.FHIR.ELGA.EDIAG.R4\Beispielinstanz einer Prozedur für die Summary-Liste - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispielinstanz einer Prozedur für die Summary-Liste**

## Example Procedure: Beispielinstanz einer Prozedur für die Summary-Liste

Profile: [AT ELGA e-Diagnose Procedure](StructureDefinition-at-elga-ediag-procedure.md)

**AT ELGA Reported (Fremdangabe)**: false

**status**: Completed

**code**: Colonoscopy

**subject**: `PatientExample`

**performed**: 2025-09-23 09:30:00+0200

**recorder**: `PractitionerExample`

**asserter**: `PractitionerExample`



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "ProcedureEntry01",
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
      "display" : "Colonoscopy"
    }]
  },
  "subject" : {
    "reference" : "PatientExample"
  },
  "performedDateTime" : "2025-09-23T09:30:00+02:00",
  "recorder" : {
    "reference" : "PractitionerExample"
  },
  "asserter" : {
    "reference" : "PractitionerExample"
  }
}

```
