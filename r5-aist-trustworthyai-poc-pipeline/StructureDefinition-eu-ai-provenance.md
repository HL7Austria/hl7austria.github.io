# EU AI Provenance - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EU AI Provenance**

## Resource Profile: EU AI Provenance 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-provenance | *Version*:0.1.0 |
| Draft as of 2026-06-18 | *Computable Name*:EU_AIProvenance |

 
A Provenance profile linking an AI-generated output to the contributing AI system, source data, and relevant processing or governance context. 

**Usages:**

* Examples for this Profile: [Provenance/sc-02-validation-provenance-ai-output-001](Provenance-sc-02-validation-provenance-ai-output-001.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir.ig.eu.aitransparency|current/StructureDefinition/StructureDefinition-eu-ai-provenance.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-eu-ai-provenance.csv), [Excel](StructureDefinition-eu-ai-provenance.xlsx), [Schematron](StructureDefinition-eu-ai-provenance.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "eu-ai-provenance",
  "url" : "http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-provenance",
  "version" : "0.1.0",
  "name" : "EU_AIProvenance",
  "title" : "EU AI Provenance",
  "status" : "draft",
  "date" : "2026-06-18T11:52:19+00:00",
  "publisher" : "Selina Adlberger",
  "description" : "A Provenance profile linking an AI-generated output to the contributing AI system, source data, and relevant processing or governance context.",
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
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w3c.prov",
    "uri" : "http://www.w3.org/ns/prov",
    "name" : "W3C PROV"
  },
  {
    "identity" : "fhirauditevent",
    "uri" : "http://hl7.org/fhir/auditevent",
    "name" : "FHIR AuditEvent Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Provenance",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Provenance",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Provenance",
      "path" : "Provenance"
    },
    {
      "id" : "Provenance.extension",
      "path" : "Provenance.extension",
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
      "id" : "Provenance.extension:usageCategory",
      "path" : "Provenance.extension",
      "sliceName" : "usageCategory",
      "short" : "Primary vs. Secondary Use Category",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/ehds-usage-category"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Provenance.extension:secondaryUsePurpose",
      "path" : "Provenance.extension",
      "sliceName" : "secondaryUsePurpose",
      "min" : 0,
      "max" : "*",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/ehds-secondary-use-purpose"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Provenance.extension:dataPermit",
      "path" : "Provenance.extension",
      "sliceName" : "dataPermit",
      "short" : "Reference to the EHDS Data Access Permit",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/ehds-data-permit"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Provenance.target",
      "path" : "Provenance.target",
      "short" : "Link to the generated AI clinical result",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-observation"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Provenance.occurred[x]",
      "path" : "Provenance.occurred[x]",
      "short" : "Exact execution period (Start/End) of the AI model",
      "min" : 1,
      "type" : [{
        "code" : "Period"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Provenance.authorization",
      "path" : "Provenance.authorization",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "concept.coding.system"
        }],
        "rules" : "open"
      },
      "min" : 2,
      "mustSupport" : true
    },
    {
      "id" : "Provenance.authorization:gdprBasis",
      "path" : "Provenance.authorization",
      "sliceName" : "gdprBasis",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://example.org/fhir/eu-ai-transparency/ValueSet/gdpr-art6-legal-basis-vs"
      }
    },
    {
      "id" : "Provenance.authorization:gdprBasis.concept",
      "path" : "Provenance.authorization.concept",
      "min" : 1
    },
    {
      "id" : "Provenance.authorization:gdprBasis.concept.coding.system",
      "path" : "Provenance.authorization.concept.coding.system",
      "min" : 1,
      "patternUri" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/gdpr-art6-codesystem"
    },
    {
      "id" : "Provenance.authorization:gdprException",
      "path" : "Provenance.authorization",
      "sliceName" : "gdprException",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://example.org/fhir/eu-ai-transparency/ValueSet/gdpr-art9-exception-vs"
      }
    },
    {
      "id" : "Provenance.authorization:gdprException.concept",
      "path" : "Provenance.authorization.concept",
      "min" : 1
    },
    {
      "id" : "Provenance.authorization:gdprException.concept.coding.system",
      "path" : "Provenance.authorization.concept.coding.system",
      "min" : 1,
      "patternUri" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/gdpr-art9-codesystem"
    },
    {
      "id" : "Provenance.agent",
      "path" : "Provenance.agent",
      "mustSupport" : true
    },
    {
      "id" : "Provenance.agent.who",
      "path" : "Provenance.agent.who",
      "short" : "Link to the AI Device that executed the action",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-device"]
      }]
    },
    {
      "id" : "Provenance.entity",
      "path" : "Provenance.entity",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Provenance.entity.role",
      "path" : "Provenance.entity.role",
      "patternCode" : "source"
    },
    {
      "id" : "Provenance.entity.what",
      "path" : "Provenance.entity.what",
      "short" : "Source data processed by the AI",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Observation",
        "http://hl7.org/fhir/StructureDefinition/ImagingStudy",
        "http://hl7.org/fhir/StructureDefinition/DocumentReference"]
      }]
    }]
  }
}

```
