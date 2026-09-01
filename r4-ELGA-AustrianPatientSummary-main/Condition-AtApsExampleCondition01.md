# AtApsCondition-Beispiel - Austrian Patient Summary (R4) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AtApsCondition-Beispiel**

## Example Condition: AtApsCondition-Beispiel

Profile: [AT APS Condition](StructureDefinition-at-aps-condition.md)

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**category**: Befund

**severity**: mittel

**code**: Verbranntes Ohr

**bodySite**: Entire ear

**subject**: [Maria Musterfrau](Patient-at-aps-example-patient-01.md)

**onset**: 2025-05-24



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "AtApsExampleCondition01",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-condition"]
  },
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
  "category" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "404684003",
      "display" : "Befund"
    }]
  }],
  "severity" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "6736007",
      "display" : "mittel"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "39065001",
      "display" : "Burn of ear"
    }],
    "text" : "Verbranntes Ohr"
  },
  "bodySite" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "1910005",
      "display" : "Entire ear"
    }],
    "text" : "Entire ear"
  }],
  "subject" : {
    "reference" : "Patient/at-aps-example-patient-01",
    "display" : "Maria Musterfrau"
  },
  "onsetDateTime" : "2025-05-24"
}

```
