# Beispielinstanz einer Diagnose für die Gesamtliste - ELGA e-Diagnose R4 v0.1.0

## Example Condition: Beispielinstanz einer Diagnose für die Gesamtliste

Profile: [AT ELGA e-Diagnose Condition](StructureDefinition-at-elga-ediag-condition.md)

**AT ELGA Reported (Fremdangabe)**: false

**identifier**: `https://fhir.hl7.at/elga/ediag/r4/CodeSystem/at-ediag-codesystem-business-identifier`/1237

**clinicalStatus**: Active

**code**: Diarrhea caused by drug

**subject**: [Max Mustermann Male, DoB: 1970-01-01 ( Social Security number: 1234010100)](Patient-PatientExample.md)

**onset**: 2026-03-09

**recordedDate**: 2026-03-09 00:00:00+0000

**recorder**: [Melanie Musterärztin (OID:1.2.40.0.34.99.4613.4)](Practitioner-PractitionerExample.md)

**asserter**: [Melanie Musterärztin (OID:1.2.40.0.34.99.4613.4)](Practitioner-PractitionerExample.md)

**note**: 

> 

Wässrige Durchfälle bei bestehender AB-Therapie




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "ConditionEntry04",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-condition"]
  },
  "extension" : [{
    "url" : "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-reported",
    "valueBoolean" : false
  }],
  "identifier" : [{
    "system" : "https://fhir.hl7.at/elga/ediag/r4/CodeSystem/at-ediag-codesystem-business-identifier",
    "value" : "1237"
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
      "code" : "428867008",
      "display" : "Diarrhea caused by drug"
    }]
  },
  "subject" : {
    "reference" : "Patient/PatientExample"
  },
  "onsetDateTime" : "2026-03-09",
  "recordedDate" : "2026-03-09T00:00:00+00:00",
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
