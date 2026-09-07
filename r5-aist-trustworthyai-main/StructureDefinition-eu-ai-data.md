# EU AI Data - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EU AI Data**

## Resource Profile: EU AI Data 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-data | *Version*:0.1.0 |
| Draft as of 2026-09-07 | *Computable Name*:EUAIData |

 
A resource-independent profile indicating that an AI system was involved in generating, reporting, assisting with, or asserting the content of a FHIR resource. 
This profile is intended as a common validation and documentation pattern across different FHIR resource types. 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir.ig.eu.aitransparency|current/StructureDefinition/StructureDefinition-eu-ai-data.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-eu-ai-data.csv), [Excel](StructureDefinition-eu-ai-data.xlsx), [Schematron](StructureDefinition-eu-ai-data.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "eu-ai-data",
  "url" : "http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-data",
  "version" : "0.1.0",
  "name" : "EUAIData",
  "title" : "EU AI Data",
  "status" : "draft",
  "date" : "2026-09-07T08:39:53+00:00",
  "publisher" : "Selina Adlberger",
  "description" : "A resource-independent profile indicating that an AI system was\ninvolved in generating, reporting, assisting with, or asserting\nthe content of a FHIR resource.\n\nThis profile is intended as a common validation and documentation\npattern across different FHIR resource types.",
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Resource",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Resource",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Resource",
      "path" : "Resource"
    },
    {
      "id" : "Resource.meta.security",
      "path" : "Resource.meta.security",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "rules" : "open"
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Resource.meta.security:aiInvolvement",
      "path" : "Resource.meta.security",
      "sliceName" : "aiInvolvement",
      "short" : "Indicates how an AI system was involved in the resource content",
      "min" : 1,
      "max" : "*",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://example.org/fhir/eu-ai-transparency/ValueSet/eu-ai-involvement-vs"
      }
    },
    {
      "id" : "Resource.meta.security:aiInvolvement.system",
      "path" : "Resource.meta.security.system",
      "min" : 1,
      "patternUri" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/eu-ai-involvement-cs"
    }]
  }
}

```
