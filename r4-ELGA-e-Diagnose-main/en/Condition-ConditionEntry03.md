# Beispielinstanz einer Diagnose für die Summary - ELGA e-Diagnose R4 v0.1.0

## Example Condition: Beispielinstanz einer Diagnose für die Summary

version: 1

Profile: [AT ELGA e-Diagnose Condition](StructureDefinition-at-elga-ediag-condition.md)

**AT ELGA Reported (Fremdangabe)**: true

**identifier**: `https://fhir.hl7.at/elga/ediag/r4/CodeSystem/at-ediag-codesystem-business-identifier`/1236

**clinicalStatus**: Active

**code**: Hyperthyroidism

**subject**: [Max Mustermann Male, DoB: 1970-01-01 ( Social Security number: 1234010100)](Patient-PatientExample.md)

**onset**: 2010-01-01

**recordedDate**: 2026-03-09 00:00:00+0000

**recorder**: [Melanie Musterärztin (OID:1.2.40.0.34.99.4613.4)](Practitioner-PractitionerExample.md)

**asserter**: [Max Mustermann Male, DoB: 1970-01-01 ( Social Security number: 1234010100)](Patient-PatientExample.md)

**note**: 

> 

Seit 2010




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "ConditionEntry03",
  "meta" : {
    "versionId" : "1",
    "profile" : ["https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-condition"]
  },
  "extension" : [{
    "url" : "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-reported",
    "valueBoolean" : true
  }],
  "identifier" : [{
    "system" : "https://fhir.hl7.at/elga/ediag/r4/CodeSystem/at-ediag-codesystem-business-identifier",
    "value" : "1236"
  }],
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
      "code" : "active"
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
    "reference" : "Patient/PatientExample"
  },
  "onsetDateTime" : "2010-01-01",
  "recordedDate" : "2026-03-09T00:00:00+00:00",
  "recorder" : {
    "reference" : "Practitioner/PractitionerExample"
  },
  "asserter" : {
    "reference" : "Patient/PatientExample"
  },
  "note" : [{
    "text" : "Seit 2010"
  }]
}

```
