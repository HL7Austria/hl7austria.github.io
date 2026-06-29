# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\AT PreNUDGE Observation Alcohol Use - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT PreNUDGE Observation Alcohol Use**

## Resource Profile: AT PreNUDGE Observation Alcohol Use 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-alcoholuse-observation | *Version*:0.1.0 | |
| Draft as of 2026-06-29 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:AtPrenudgeObservationAlcoholUse |

 
This FHIR profile is derived from the APS Observation Alcohol Use profile. Additional fields from the PreNUDGE Observation profile are added. 

**Usages:**

* Examples for this Profile: [Observation/alcoholuse-moderate-example](Observation-alcoholuse-moderate-example.md), [Observation/alcoholuse-never-example](Observation-alcoholuse-never-example.md) and [Observation/alcoholuse-occasional-example](Observation-alcoholuse-occasional-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.prenudge.appdata.r4|current/StructureDefinition/StructureDefinition-at-prenudge-alcoholuse-observation.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-prenudge-alcoholuse-observation.csv), [Excel](StructureDefinition-at-prenudge-alcoholuse-observation.xlsx), [Schematron](StructureDefinition-at-prenudge-alcoholuse-observation.sch) 

IG © 2026+
[The PreNUDGE Consortium](https://prenudge.at). Package hl7.at.fhir.prenudge.appdata.r4#0.1.0 based on
[FHIR® 4.0.1](http://hl7.org/fhir/R4/). Generated
2026-06-29

Links:
[Table of Contents](toc.md)|
[QA Report](qa.md)

## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-prenudge-alcoholuse-observation",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile",
    "valueCanonical" : "http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-alcoholuse-uv-ips"
  }],
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-alcoholuse-observation",
  "version" : "0.1.0",
  "name" : "AtPrenudgeObservationAlcoholUse",
  "title" : "AT PreNUDGE Observation Alcohol Use",
  "status" : "draft",
  "date" : "2026-06-29T10:47:49+00:00",
  "publisher" : "The PreNUDGE Consortium",
  "contact" : [{
    "name" : "The PreNUDGE Consortium",
    "telecom" : [{
      "system" : "url",
      "value" : "https://prenudge.at"
    }]
  },
  {
    "name" : "The PreNUDGE Consortium",
    "telecom" : [{
      "system" : "url",
      "value" : "https://prenudge.at",
      "use" : "work"
    }]
  }],
  "description" : "This FHIR profile is derived from the APS Observation Alcohol Use profile. Additional fields from the PreNUDGE Observation profile are added.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observationalcoholuse",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.identifier",
      "path" : "Observation.identifier",
      "short" : "Business Identifier for observation, at least one is assigned by the data provider",
      "min" : 1
    },
    {
      "id" : "Observation.identifier.system",
      "path" : "Observation.identifier.system",
      "short" : "The namespace for the identifier value, if no other specifications are given, use your website url",
      "min" : 1
    },
    {
      "id" : "Observation.identifier.value",
      "path" : "Observation.identifier.value",
      "min" : 1
    },
    {
      "id" : "Observation.effective[x]",
      "path" : "Observation.effective[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Observation.effective[x]:effectiveDateTime",
      "path" : "Observation.effective[x]",
      "sliceName" : "effectiveDateTime",
      "short" : "The mandatory clinically relevant time for observation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Observation.issued",
      "path" : "Observation.issued",
      "short" : "The mandatory date/time this version was made available",
      "min" : 1
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "short" : "Set to Quantity (drinks/day), as recommended in Observation Social History - Alcohol Use (IPS)",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.note",
      "path" : "Observation.note",
      "short" : "Comments about the observation including patient comments have to be possible",
      "mustSupport" : true
    },
    {
      "id" : "Observation.method",
      "path" : "Observation.method",
      "short" : "Manual if derived from a QuestionnaireResponse; Automated only if a plausible automated source is documented",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.hl7.at/prenudge/appdata/r4/ValueSet/prenudge-observation-method"
      }
    },
    {
      "id" : "Observation.device",
      "path" : "Observation.device",
      "short" : "(Measurement) Devices should be documented when used",
      "mustSupport" : true
    },
    {
      "id" : "Observation.derivedFrom",
      "path" : "Observation.derivedFrom",
      "short" : "QuestionnaireResponse or other source this smoking status observation was derived from",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component",
      "path" : "Observation.component",
      "short" : "Components should only be used when multiple values are inseparably connected to a single measurement (e.g., score domains)."
    }]
  }
}

```
