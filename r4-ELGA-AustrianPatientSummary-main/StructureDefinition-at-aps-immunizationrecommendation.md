# AT APS Immunization - Austrian Patient Summary (R4) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT APS Immunization**

## Resource Profile: AT APS Immunization 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-immunizationrecommendation | *Version*:1.1.0 |
| Active as of 2026-09-01 | *Computable Name*:AtApsImmunizationRecommendation |

 
Das AT APS-Profil für die ImmunizationRecommendation-Ressource berücksichtigt die österreichischen Vorgaben (z.B. Patient und zu verwendende Value-Sets). 

**Usages:**

* Refer to this Profile: [AT APS Composition](StructureDefinition-at-aps-composition.md)
* Examples for this Profile: [ImmunizationRecommendation/AtApsExampleImmunizationRecommendation01](ImmunizationRecommendation-AtApsExampleImmunizationRecommendation01.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.elga.aps.r4|current/StructureDefinition/StructureDefinition-at-aps-immunizationrecommendation.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-aps-immunizationrecommendation.csv), [Excel](StructureDefinition-at-aps-immunizationrecommendation.xlsx), [Schematron](StructureDefinition-at-aps-immunizationrecommendation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-aps-immunizationrecommendation",
  "url" : "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-immunizationrecommendation",
  "version" : "1.1.0",
  "name" : "AtApsImmunizationRecommendation",
  "title" : "AT APS Immunization",
  "status" : "active",
  "date" : "2026-09-01T07:40:12+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  },
  {
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at",
      "use" : "work"
    }]
  }],
  "description" : "Das AT APS-Profil für die ImmunizationRecommendation-Ressource berücksichtigt die österreichischen Vorgaben (z.B. Patient und zu verwendende Value-Sets).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "AT"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "ImmunizationRecommendation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ImmunizationRecommendation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ImmunizationRecommendation",
      "path" : "ImmunizationRecommendation",
      "short" : "AT APS Immunization"
    },
    {
      "id" : "ImmunizationRecommendation.patient",
      "path" : "ImmunizationRecommendation.patient",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-patient"]
      }]
    },
    {
      "id" : "ImmunizationRecommendation.authority",
      "path" : "ImmunizationRecommendation.authority",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-organization"]
      }]
    },
    {
      "id" : "ImmunizationRecommendation.recommendation.forecastStatus",
      "path" : "ImmunizationRecommendation.recommendation.forecastStatus",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://termgit.elga.gv.at/ValueSet/eimpf-specialcasevaccination"
      }
    },
    {
      "id" : "ImmunizationRecommendation.recommendation.supportingImmunization",
      "path" : "ImmunizationRecommendation.recommendation.supportingImmunization",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-immunization",
        "http://hl7.org/fhir/StructureDefinition/ImmunizationEvaluation"]
      }]
    }]
  }
}

```
