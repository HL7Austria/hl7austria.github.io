# HL7.AT.FHIR.ELGA.EDIAG.R4\Allergie Summary-Liste mit einem Summary-Eintrag - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Allergie Summary-Liste mit einem Summary-Eintrag**

## Example List: Allergie Summary-Liste mit einem Summary-Eintrag

Profile: [AT ELGA e-Diagnose List](StructureDefinition-at-elga-ediag-list.md)

| | | | |
| :--- | :--- | :--- | :--- |
| Date: 2026-03-03 00:00:00+0000 | Mode: Working List | Status: Current | Code: Allergies and adverse reactions Document |
| Subject:`PatientExample`Source: | | | |

* **Items**: `AllergySummaryExample1`



## Resource Content

```json
{
  "resourceType" : "List",
  "id" : "AllergyList01",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-list"]
  },
  "status" : "current",
  "mode" : "working",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "48765-2"
    }]
  },
  "subject" : {
    "reference" : "PatientExample"
  },
  "date" : "2026-03-03T00:00:00+00:00",
  "source" : {
    "reference" : "PractitionerExample"
  },
  "entry" : [{
    "item" : {
      "reference" : "AllergySummaryExample1"
    }
  }]
}

```
