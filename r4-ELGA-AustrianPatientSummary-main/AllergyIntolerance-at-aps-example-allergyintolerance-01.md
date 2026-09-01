# AtApsAllergyIntolerance-Beispiel - Austrian Patient Summary (R4) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AtApsAllergyIntolerance-Beispiel**

## Example AllergyIntolerance: AtApsAllergyIntolerance-Beispiel

Profile: [AT APS AllergyIntolerance](StructureDefinition-at-aps-allergyintolerance.md)

**clinicalStatus**: Resolved

**verificationStatus**: Confirmed

**code**: Ambrosiapollen

**patient**: [Maria Musterfrau](Patient-at-aps-example-patient-01.md)

**onset**: Absent because : unknown



## Resource Content

```json
{
  "resourceType" : "AllergyIntolerance",
  "id" : "at-aps-example-allergyintolerance-01",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-allergyintolerance"]
  },
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical",
      "code" : "resolved"
    }]
  },
  "verificationStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification",
      "code" : "confirmed"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "256303006",
      "display" : "Ambrosiapollen"
    }]
  },
  "patient" : {
    "reference" : "Patient/at-aps-example-patient-01",
    "display" : "Maria Musterfrau"
  },
  "_onsetDateTime" : {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
      "valueCode" : "unknown"
    }]
  }
}

```
