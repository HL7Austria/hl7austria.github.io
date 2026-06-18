# EU AI Consent and Processing Context - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EU AI Consent and Processing Context**

## Resource Profile: EU AI Consent and Processing Context 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-consent | *Version*:0.1.0 |
| Draft as of 2026-06-18 | *Computable Name*:EU_AIConsent |

 
A Consent profile documenting patient-facing information, permission status, and opt-out preferences for AI-supported processing where applicable. 

**Usages:**

* Examples for this Profile: [Consent/sc-02-validation-consent-ai-use-001](Consent-sc-02-validation-consent-ai-use-001.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir.ig.eu.aitransparency|current/StructureDefinition/StructureDefinition-eu-ai-consent.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-eu-ai-consent.csv), [Excel](StructureDefinition-eu-ai-consent.xlsx), [Schematron](StructureDefinition-eu-ai-consent.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "eu-ai-consent",
  "url" : "http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-consent",
  "version" : "0.1.0",
  "name" : "EU_AIConsent",
  "title" : "EU AI Consent and Processing Context",
  "status" : "draft",
  "date" : "2026-06-18T11:52:19+00:00",
  "publisher" : "Selina Adlberger",
  "description" : "A Consent profile documenting patient-facing information, permission status, and opt-out preferences for AI-supported processing where applicable.",
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 V2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Consent",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Consent",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Consent",
      "path" : "Consent"
    },
    {
      "id" : "Consent.extension",
      "path" : "Consent.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Consent.extension:aiInfoProvided",
      "path" : "Consent.extension",
      "sliceName" : "aiInfoProvided",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/patient-ai-info-provided"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Consent.status",
      "path" : "Consent.status",
      "patternCode" : "active"
    },
    {
      "id" : "Consent.category",
      "path" : "Consent.category",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/consentcategorycodes",
          "code" : "npp",
          "display" : "Notice of Privacy Practices"
        }]
      }
    },
    {
      "id" : "Consent.subject",
      "path" : "Consent.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Consent.decision",
      "path" : "Consent.decision",
      "short" : "deny (Opt-out) | permit (Consent)",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Consent.provision",
      "path" : "Consent.provision",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    }]
  }
}

```
