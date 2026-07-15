# HL7.AT.FHIR.ELGA.EDIAG.R4\Beispiel Prozedur - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel Prozedur**

## Example Procedure: Beispiel Prozedur

Profile: [AT ELGA e-Diagnose Procedure](StructureDefinition-at-elga-ediag-procedure.md)

Tag: [currently relevant (Details: AT e-Diagnose Diagnose Typ code relevant = 'currently relevant')](CodeSystem-at-ediag-codesystem-diagnose-type.md)

**AT ELGA Reported (Fremdangabe)**: false

**status**: Completed

**code**: Coloskopie

**subject**: [Max Mustermann Male, DoB: 1900-01-01 ( Social Security number: 1234010100)](Patient-PatientExample.md)

**performed**: 2026-04-20 09:30:00+0200

**recorder**: [Practitioner Melanie Musterärztin ](Practitioner-PractitionerExample.md)

**asserter**: [Practitioner Melanie Musterärztin ](Practitioner-PractitionerExample.md)

**note**: 

> 

Diagnostische Coloskopie. Histologiebefund ausständig




## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "ProcedureExample",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-procedure"],
    "tag" : [{
      "system" : "https://fhir.hl7.at/elga/ediag/r4/CodeSystem/at-ediag-codesystem-diagnose-type",
      "code" : "relevant",
      "display" : "currently relevant"
    }]
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
  "performedDateTime" : "2026-04-20T09:30:00+02:00",
  "recorder" : {
    "reference" : "Practitioner/PractitionerExample"
  },
  "asserter" : {
    "reference" : "Practitioner/PractitionerExample"
  },
  "note" : [{
    "text" : "Diagnostische Coloskopie. Histologiebefund ausständig"
  }]
}

```
