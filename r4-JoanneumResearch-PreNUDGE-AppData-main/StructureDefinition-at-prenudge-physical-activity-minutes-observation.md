# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\AT PreNUDGE Observation Physical Activity Minutes - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT PreNUDGE Observation Physical Activity Minutes**

## Resource Profile: AT PreNUDGE Observation Physical Activity Minutes 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-physical-activity-minutes-observation | *Version*:0.1.0 | |
| Draft as of 2026-08-05 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:AtPrenudgeObservationPhysicalActivity |

 
Observation profile for recording physical activity duration as a panel (moderate, vigorous, aggregate components) derived from either a wearable device or the EHIS-PAQ/ATHIS questionnaire (Q7/PE7). Supports four valid component combinations: (a) aggregate only — questionnaire source (Q7/PE7 → aggregateActivity) (b) moderate only — manual source; vigorous implicitly 0, aggregate = moderateActivity (pa-agg-01 warning if aggregateActivity absent) (c) moderate + aggregate — partial wearable or manual source (d) vigorous + aggregate — partial wearable source (e) all three — full wearable source. 

**Usages:**

* Examples for this Profile: [Observation/physical-activity-minutes-aggregate-only-example](Observation-physical-activity-minutes-aggregate-only-example.md), [Observation/physical-activity-minutes-all-components-example](Observation-physical-activity-minutes-all-components-example.md), [Observation/physical-activity-minutes-ehispaq-q7-mapped-example](Observation-physical-activity-minutes-ehispaq-q7-mapped-example.md), [Observation/physical-activity-minutes-moderate-aggregate-example](Observation-physical-activity-minutes-moderate-aggregate-example.md)... Show 2 more, [Observation/physical-activity-minutes-moderate-only-example](Observation-physical-activity-minutes-moderate-only-example.md) and [Observation/physical-activity-minutes-vigorous-aggregate-example](Observation-physical-activity-minutes-vigorous-aggregate-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.prenudge.appdata.r4|current/StructureDefinition/StructureDefinition-at-prenudge-physical-activity-minutes-observation.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-prenudge-physical-activity-minutes-observation.csv), [Excel](StructureDefinition-at-prenudge-physical-activity-minutes-observation.xlsx), [Schematron](StructureDefinition-at-prenudge-physical-activity-minutes-observation.sch) 

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
  "id" : "at-prenudge-physical-activity-minutes-observation",
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-physical-activity-minutes-observation",
  "version" : "0.1.0",
  "name" : "AtPrenudgeObservationPhysicalActivity",
  "title" : "AT PreNUDGE Observation Physical Activity Minutes",
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
  "description" : "Observation profile for recording physical activity duration as a panel\n(moderate, vigorous, aggregate components) derived from either a wearable device or\nthe EHIS-PAQ/ATHIS questionnaire (Q7/PE7). Supports four valid component combinations:\n  (a) aggregate only           — questionnaire source (Q7/PE7 → aggregateActivity)\n  (b) moderate only            — manual source; vigorous implicitly 0,\n                                 aggregate = moderateActivity (pa-agg-01 warning\n                                 if aggregateActivity absent)\n  (c) moderate + aggregate     — partial wearable or manual source\n  (d) vigorous + aggregate     — partial wearable source\n  (e) all three                — full wearable source. ",
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
  "baseDefinition" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation",
      "constraint" : [{
        "key" : "pa-panel-01",
        "severity" : "error",
        "human" : "At least one activity component must be present",
        "expression" : "component.exists()",
        "source" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-physical-activity-minutes-observation"
      },
      {
        "key" : "pa-agg-01",
        "severity" : "warning",
        "human" : "When moderateActivity or vigorousActivity are present, aggregateActivity SHOULD equal moderateActivity (or 0) + (vigorousActivity × 2, or 0)",
        "expression" : "(component.where(code.coding.where(code = '77592-4').exists()).exists()\n or component.where(code.coding.where(code = '77593-2').exists()).exists())\nimplies\ncomponent.where(code.coding.where(code = '101691-4').exists()).value.ofType(Quantity).value =\n  iif(component.where(code.coding.where(code = '77592-4').exists()).exists(),\n      component.where(code.coding.where(code = '77592-4').exists()).value.ofType(Quantity).value,\n      0)\n  + (iif(component.where(code.coding.where(code = '77593-2').exists()).exists(),\n         component.where(code.coding.where(code = '77593-2').exists()).value.ofType(Quantity).value,\n         0) * 2)",
        "source" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-physical-activity-minutes-observation"
      },
      {
        "key" : "pa-wearable-01",
        "severity" : "error",
        "human" : "When method is Automated, aggregateActivity must be present",
        "expression" : "method.coding.exists(system = 'http://snomed.info/sct' and code = '8359006') implies component.where(code.coding.where(code = '101691-4').exists()).exists()",
        "source" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-physical-activity-minutes-observation"
      },
      {
        "key" : "pa-manual-comp-01",
        "severity" : "warning",
        "human" : "When method is Manual, classificationMethod component must be absent or carry only code self-rp",
        "expression" : "method.coding.exists(system = 'http://snomed.info/sct' and code = '87982008')\nimplies (\n  component.where(code.coding.where(code = '246501002').exists()).empty()\n  or component.where(code.coding.where(code = '246501002').exists())\n             .value.ofType(CodeableConcept).coding.where(code = 'self-rp').exists()\n)",
        "source" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-physical-activity-minutes-observation"
      }]
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "101691-4",
          "display" : "Duration of physical activity"
        }]
      }
    },
    {
      "id" : "Observation.method",
      "path" : "Observation.method",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component",
      "path" : "Observation.component",
      "slicing" : {
        "discriminator" : [{
          "type" : "pattern",
          "path" : "code"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "short" : "Physical activity duration components",
      "definition" : "Panel components: moderateActivity, vigorousActivity, aggregateActivity (min/wk) and classificationMethod (CodeableConcept)."
    },
    {
      "id" : "Observation.component:moderateActivity",
      "path" : "Observation.component",
      "sliceName" : "moderateActivity",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:moderateActivity.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "77592-4",
          "display" : "Moderate physical activity [IPAQ]"
        }]
      }
    },
    {
      "id" : "Observation.component:moderateActivity.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:moderateActivity.value[x].unit",
      "path" : "Observation.component.value[x].unit",
      "patternString" : "min/wk"
    },
    {
      "id" : "Observation.component:moderateActivity.value[x].system",
      "path" : "Observation.component.value[x].system",
      "patternUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Observation.component:moderateActivity.value[x].code",
      "path" : "Observation.component.value[x].code",
      "patternCode" : "min/wk"
    },
    {
      "id" : "Observation.component:vigorousActivity",
      "path" : "Observation.component",
      "sliceName" : "vigorousActivity",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:vigorousActivity.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "77593-2",
          "display" : "Vigorous physical activity [IPAQ]"
        }]
      }
    },
    {
      "id" : "Observation.component:vigorousActivity.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:vigorousActivity.value[x].unit",
      "path" : "Observation.component.value[x].unit",
      "patternString" : "min/wk"
    },
    {
      "id" : "Observation.component:vigorousActivity.value[x].system",
      "path" : "Observation.component.value[x].system",
      "patternUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Observation.component:vigorousActivity.value[x].code",
      "path" : "Observation.component.value[x].code",
      "patternCode" : "min/wk"
    },
    {
      "id" : "Observation.component:aggregateActivity",
      "path" : "Observation.component",
      "sliceName" : "aggregateActivity",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:aggregateActivity.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "101691-4",
          "display" : "Duration of physical activity"
        }]
      }
    },
    {
      "id" : "Observation.component:aggregateActivity.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:aggregateActivity.value[x].unit",
      "path" : "Observation.component.value[x].unit",
      "patternString" : "min/wk"
    },
    {
      "id" : "Observation.component:aggregateActivity.value[x].system",
      "path" : "Observation.component.value[x].system",
      "patternUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Observation.component:aggregateActivity.value[x].code",
      "path" : "Observation.component.value[x].code",
      "patternCode" : "min/wk"
    },
    {
      "id" : "Observation.component:classificationMethod",
      "path" : "Observation.component",
      "sliceName" : "classificationMethod",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component:classificationMethod.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "246501002",
          "display" : "Technique"
        }]
      }
    },
    {
      "id" : "Observation.component:classificationMethod.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.hl7.at/prenudge/appdata/r4/ValueSet/prenudge-physical-activity-classification-method-vs"
      }
    }]
  }
}

```
