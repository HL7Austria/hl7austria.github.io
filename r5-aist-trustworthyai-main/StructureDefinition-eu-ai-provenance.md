# EU AI Provenance - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EU AI Provenance**

## Resource Profile: EU AI Provenance 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-provenance | *Version*:0.1.0 |
| Draft as of 2026-07-31 | *Computable Name*:EU_AIProvenance |

 
A Provenance profile linking an AI-generated output to the contributing AI system, source data, and relevant processing or governance context. 

**Usages:**

* Examples for this Profile: [Provenance/example-secondary-use-provenance](Provenance-example-secondary-use-provenance.md), [Provenance/sc-01-ai-only-provenance-ai-output-001](Provenance-sc-01-ai-only-provenance-ai-output-001.md), [Provenance/sc-02-validation-provenance-ai-output-001](Provenance-sc-02-validation-provenance-ai-output-001.md), [Provenance/sc-03-override-provenance-ai-output-001](Provenance-sc-03-override-provenance-ai-output-001.md) and [Provenance/sc-04-correction-exp-provenance-ai-output-001](Provenance-sc-04-correction-exp-provenance-ai-output-001.md)

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
  "date" : "2026-07-31T11:07:29+00:00",
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
      "short" : "Primary or secondary use category",
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
      "short" : "Purpose of secondary use, where applicable",
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
      "short" : "EHDS data permit, where applicable",
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
      "short" : "Execution period of the AI processing activity",
      "min" : 1,
      "type" : [{
        "code" : "Period"
      }],
      "mustSupport" : true
    },
    {
      "id" : "Provenance.occurred[x].start",
      "path" : "Provenance.occurred[x].start",
      "short" : "Start of the AI processing activity",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Provenance.occurred[x].end",
      "path" : "Provenance.occurred[x].end",
      "short" : "End of the AI processing activity",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Provenance.recorded",
      "path" : "Provenance.recorded",
      "short" : "Time when the provenance record was created",
      "min" : 1,
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
      "id" : "Provenance.authorization:gdprArt6Basis",
      "path" : "Provenance.authorization",
      "sliceName" : "gdprArt6Basis",
      "short" : "Legal basis under GDPR Article 6",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://example.org/fhir/eu-ai-transparency/ValueSet/gdpr-art6-legal-basis-vs"
      }
    },
    {
      "id" : "Provenance.authorization:gdprArt6Basis.concept",
      "path" : "Provenance.authorization.concept",
      "min" : 1
    },
    {
      "id" : "Provenance.authorization:gdprArt6Basis.concept.coding",
      "path" : "Provenance.authorization.concept.coding",
      "min" : 1
    },
    {
      "id" : "Provenance.authorization:gdprArt6Basis.concept.coding.system",
      "path" : "Provenance.authorization.concept.coding.system",
      "min" : 1,
      "patternUri" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/gdpr-art6-codesystem"
    },
    {
      "id" : "Provenance.authorization:gdprArt6Basis.reference",
      "path" : "Provenance.authorization.reference",
      "max" : "0"
    },
    {
      "id" : "Provenance.authorization:gdprArt9Condition",
      "path" : "Provenance.authorization",
      "sliceName" : "gdprArt9Condition",
      "short" : "Condition under GDPR Article 9 for processing health data",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://example.org/fhir/eu-ai-transparency/ValueSet/gdpr-art9-condition-vs"
      }
    },
    {
      "id" : "Provenance.authorization:gdprArt9Condition.concept",
      "path" : "Provenance.authorization.concept",
      "min" : 1
    },
    {
      "id" : "Provenance.authorization:gdprArt9Condition.concept.coding",
      "path" : "Provenance.authorization.concept.coding",
      "min" : 1
    },
    {
      "id" : "Provenance.authorization:gdprArt9Condition.concept.coding.system",
      "path" : "Provenance.authorization.concept.coding.system",
      "min" : 1,
      "patternUri" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/gdpr-art9-codesystem"
    },
    {
      "id" : "Provenance.authorization:gdprArt9Condition.reference",
      "path" : "Provenance.authorization.reference",
      "max" : "0"
    },
    {
      "id" : "Provenance.agent",
      "path" : "Provenance.agent",
      "mustSupport" : true
    },
    {
      "id" : "Provenance.agent.who",
      "path" : "Provenance.agent.who",
      "short" : "AI system that performed the processing activity",
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
