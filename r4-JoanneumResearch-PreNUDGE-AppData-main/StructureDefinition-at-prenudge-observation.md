# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\AT PreNUDGE Observation - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT PreNUDGE Observation**

## Resource Profile: AT PreNUDGE Observation ( Abstract ) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-observation | *Version*:0.1.0 | |
| Draft as of 2026-08-05 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:AtPrenudgeObservation |

 
This FHIR profile is defining the overall Observation for PreNUDGE. It is abstract, so no instances of this profile directly are allowed. Be aware that if the user enters values from a device into a questionnaire, it is still considered a manual input. Please keep in mind that all observations must comply with the qualification matrix on https://prenudge.at/qualificationmatrix/. 

**Usages:**

* Derived from this Profile: [AT PreNUDGE Observation Blood Glucose (only in mg/dL)](StructureDefinition-at-prenudge-bloodglucose-observation.md), [AT PreNUDGE Observation Body Mass Index](StructureDefinition-at-prenudge-bmi-observation.md), [AT PreNUDGE Observation Body Height](StructureDefinition-at-prenudge-bodyheight-observation.md), [AT PreNUDGE Observation Body Weight](StructureDefinition-at-prenudge-bodyweight-observation.md)... Show 17 more, [AT PreNUDGE Observation Highest Completed Education](StructureDefinition-at-prenudge-education-observation.md), [AT PreNUDGE Observation Muscle Strengthening Sessions](StructureDefinition-at-prenudge-muscle-strengthening-observation.md), [AT PreNUDGE Observation Nutrition Fruit Portions](StructureDefinition-at-prenudge-nutrition-fruitportions-observation.md), [AT PreNUDGE Observation Nutrition Sugar Salty Frequency](StructureDefinition-at-prenudge-nutrition-sugarsalty-observation.md), [AT PreNUDGE Observation Nutrition Vegetable Portions](StructureDefinition-at-prenudge-nutrition-vegetableportions-observation.md), [AT PreNUDGE Observation Other not Quantities](StructureDefinition-at-prenudge-observation-other-not-quantities.md), [AT PreNUDGE Observation Other Quantities](StructureDefinition-at-prenudge-observation-other-quantities.md), [AT PreNUDGE Observation Physical Activity Minutes](StructureDefinition-at-prenudge-physical-activity-minutes-observation.md), [AT PreNUDGE Observation PSS-10 Score](StructureDefinition-at-prenudge-pss10-score-observation.md), [AT PreNUDGE Observation PSS-4 Score](StructureDefinition-at-prenudge-pss4-score-observation.md), [AT PreNUDGE Observation Sitting Hours](StructureDefinition-at-prenudge-sitting-hours-observation.md), [AT PreNUDGE Observation Sleep Duration](StructureDefinition-at-prenudge-sleep-duration-observation.md), [AT PreNUDGE Observation Sleep Quality](StructureDefinition-at-prenudge-sleep-quality-observation.md), [AT PreNUDGE Observation Step Count](StructureDefinition-at-prenudge-stepcount-observation.md), [AT PreNUDGE Observation Whooley Depression Screening](StructureDefinition-at-prenudge-whooley-observation.md), [AT PreNUDGE Observation WHOQOL-BREF Score](StructureDefinition-at-prenudge-whoqol-bref-score-observation.md) and [AT PreNUDGE Observation Work-SoC Category Score](StructureDefinition-at-prenudge-work-soc-score-observation.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.prenudge.appdata.r4|current/StructureDefinition/StructureDefinition-at-prenudge-observation.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-prenudge-observation.csv), [Excel](StructureDefinition-at-prenudge-observation.xlsx), [Schematron](StructureDefinition-at-prenudge-observation.sch) 

IG © 2026+
[The PreNUDGE Consortium](https://prenudge.at). Package hl7.at.fhir.prenudge.appdata.r4#0.1.0 based on
[FHIR® 4.0.1](http://hl7.org/fhir/R4/). Generated
2026-08-05

Links:
[Table of Contents](toc.md)|
[QA Report](qa.md)

## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-prenudge-observation",
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-observation",
  "version" : "0.1.0",
  "name" : "AtPrenudgeObservation",
  "title" : "AT PreNUDGE Observation",
  "status" : "draft",
  "date" : "2026-08-05T12:30:06+00:00",
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
  "description" : "This FHIR profile is defining the overall Observation for PreNUDGE. It is abstract, so no instances of this profile directly are allowed. Be aware that if the user enters values from a device into a questionnaire, it is still considered a manual input. Please keep in mind that all observations must comply with the qualification matrix on https://prenudge.at/qualificationmatrix/.",
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
  "abstract" : true,
  "type" : "Observation",
  "baseDefinition" : "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observation",
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
      "id" : "Observation.note",
      "path" : "Observation.note",
      "short" : "Comments about the observation including patient comments have to be possible",
      "mustSupport" : true
    },
    {
      "id" : "Observation.method",
      "path" : "Observation.method",
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
      "id" : "Observation.component",
      "path" : "Observation.component",
      "short" : "Components should only be used when multiple values are inseparably connected to a single measurement (e.g., score domains)."
    }]
  }
}

```
