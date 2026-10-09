# Beispielinstanz einer Diagnose für die Summary-Liste - ELGA e-Diagnose R4 (Draft) v0.1.0

## Example Condition: Beispielinstanz einer Diagnose für die Summary-Liste

Profile: [AT ELGA e-Diagnose Condition](StructureDefinition-at-elga-ediag-condition.md)

**AT ELGA Reported (Fremdangabe)**: true

**identifier**: `https://fhir.hl7.at/elga/ediag/r4/CodeSystem/at-ediag-codesystem-business-identifier`/1234

**clinicalStatus**: Active

**code**: Hypertensive disorder, systemic arterial

**subject**: [Max Mustermann Male, DoB: 1970-01-01 ( Social Security number: 1234010100)](Patient-PatientExample.md)

**onset**: 2022-06-01

**recordedDate**: 2026-03-03 00:00:00+0000

**recorder**: [Melanie Musterärztin (OID:1.2.40.0.34.99.4613.4)](Practitioner-PractitionerExample.md)

**asserter**: [Max Mustermann Male, DoB: 1970-01-01 ( Social Security number: 1234010100)](Patient-PatientExample.md)

**note**: 

> 

Patient berichtet über bekannte Hypertonie seit 2022, Lisinopril 10mg 1-0-0.




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "ConditionEntry01",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-condition"]
  },
  "extension" : [{
    "url" : "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-reported",
    "valueBoolean" : true
  }],
  "identifier" : [{
    "system" : "https://fhir.hl7.at/elga/ediag/r4/CodeSystem/at-ediag-codesystem-business-identifier",
    "value" : "1234"
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
      "code" : "38341003",
      "display" : "Hypertensive disorder, systemic arterial"
    }]
  },
  "subject" : {
    "reference" : "Patient/PatientExample"
  },
  "onsetDateTime" : "2022-06-01",
  "recordedDate" : "2026-03-03T00:00:00+00:00",
  "recorder" : {
    "reference" : "Practitioner/PractitionerExample"
  },
  "asserter" : {
    "reference" : "Patient/PatientExample"
  },
  "note" : [{
    "text" : "Patient berichtet über bekannte Hypertonie seit 2022, Lisinopril 10mg 1-0-0."
  }]
}

```
