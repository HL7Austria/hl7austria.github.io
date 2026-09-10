# HL7.AT.FHIR.ELGA.EDIAG.R4\Beispielinstanz einer Diagnose für die Gesamtliste - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispielinstanz einer Diagnose für die Gesamtliste**

## Example Condition: Beispielinstanz einer Diagnose für die Gesamtliste

Profile: [AT ELGA e-Diagnose Condition](StructureDefinition-at-elga-ediag-condition.md)

**AT ELGA Reported (Fremdangabe)**: true

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**code**: Candidal balanitis

**subject**: `PatientExample`

**onset**: 2026-03-09

**recordedDate**: 2026-03-09 00:00:00+0000

**recorder**: `PractitionerExample`

**asserter**: `PractitionerExample`

**note**: 

> 

Juckreiz im Genitalbereich bei bestehender AB-Therapie




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
      "code" : "52643007",
      "display" : "Candidal balanitis"
    }]
  },
  "subject" : {
    "reference" : "PatientExample"
  },
  "onsetDateTime" : "2026-03-09",
  "recordedDate" : "2026-03-09T00:00:00+00:00",
  "recorder" : {
    "reference" : "PractitionerExample"
  },
  "asserter" : {
    "reference" : "PractitionerExample"
  },
  "note" : [{
    "text" : "Juckreiz im Genitalbereich bei bestehender AB-Therapie"
  }]
}

```
