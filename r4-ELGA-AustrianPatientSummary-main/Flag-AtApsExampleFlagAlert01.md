# AtApsFlagAlert-Beispiel - Austrian Patient Summary (R4) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AtApsFlagAlert-Beispiel**

## Example Flag: AtApsFlagAlert-Beispiel

Profile: [AT APS Flag Alert](StructureDefinition-at-aps-flagalert.md)

**identifier**: 12345

**status**: Active

**category**: Sicherheit

**code**: Der Patient zeigt eine erhöhte Sturzgefährdung.

**subject**: [Maria Musterfrau](Patient-at-aps-example-patient-01.md)

**author**: [Hanna Hausärztin](Practitioner-at-aps-example-practitioner-01.md)



## Resource Content

```json
{
  "resourceType" : "Flag",
  "id" : "AtApsExampleFlagAlert01",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-flagalert"]
  },
  "identifier" : [{
    "value" : "12345"
  }],
  "status" : "active",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/flag-category",
      "code" : "safety",
      "display" : "Safety"
    }],
    "text" : "Sicherheit"
  }],
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "165002",
      "display" : "Accident-prone"
    }],
    "text" : "Der Patient zeigt eine erhöhte Sturzgefährdung."
  },
  "subject" : {
    "reference" : "Patient/at-aps-example-patient-01",
    "display" : "Maria Musterfrau"
  },
  "author" : {
    "reference" : "Practitioner/at-aps-example-practitioner-01",
    "display" : "Hanna Hausärztin"
  }
}

```
