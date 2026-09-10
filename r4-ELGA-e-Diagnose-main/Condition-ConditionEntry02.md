# HL7.AT.FHIR.ELGA.EDIAG.R4\Beispielinstanz einer Diagnose für die Gesamtliste - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispielinstanz einer Diagnose für die Gesamtliste**

## Example Condition: Beispielinstanz einer Diagnose für die Gesamtliste

Profile: [AT ELGA e-Diagnose Condition](StructureDefinition-at-elga-ediag-condition.md)

**AT ELGA Reported (Fremdangabe)**: true

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**code**: Suppurative tonsillitis

**subject**: `PatientExample`

**onset**: 2026-02-28

**recordedDate**: 2026-03-03 00:00:00+0000

**recorder**: `PractitionerExample`

**asserter**: `PractitionerExample`

**note**: 

> 

Temperatur >38.5, Schmerzen beim Schlucken




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "ConditionEntry02",
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
      "code" : "10351008",
      "display" : "Suppurative tonsillitis"
    }]
  },
  "subject" : {
    "reference" : "PatientExample"
  },
  "onsetDateTime" : "2026-02-28",
  "recordedDate" : "2026-03-03T00:00:00+00:00",
  "recorder" : {
    "reference" : "PractitionerExample"
  },
  "asserter" : {
    "reference" : "PractitionerExample"
  },
  "note" : [{
    "text" : "Temperatur >38.5, Schmerzen beim Schlucken"
  }]
}

```
