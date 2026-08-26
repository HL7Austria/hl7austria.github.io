# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\AT PreNUDGE Observation Physical Activity Minutes - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT PreNUDGE Observation Physical Activity Minutes**

## Resource Profile: AT PreNUDGE Observation Physical Activity Minutes 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-physical-activity-minutes-observation | *Version*:0.1.0 | |
| Draft as of 2026-08-26 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:AtPrenudgeObservationPhysicalActivity |

 
Observation profile for recording physical activity duration as a panel (moderate, vigorous, and two alternative aggregate components) derived from either a wearable device or the EHIS-PAQ/ATHIS questionnaire (Q7/PE7). 
Two aggregate flavors may be sent independently of each other: 
* aggregateActivity — plain/unweighted total: moderateActivity (or 0) + vigorousActivity (or 0). Also used standalone when moderate/vigorous cannot be distinguished at all (e.g. a single questionnaire total). See pa-agg-02.
* aggregateActivityWeighted — WHO/IPAQ moderate-equivalent total: moderateActivity (or 0) + (vigorousActivity × 2, or 0). See pa-agg-01.
 
Both, either, or neither aggregate MAY be present; pa-panel-01 only requires that at least one component (of any kind) exists. Sending only an aggregate (without moderateActivity/vigorousActivity) is valid and expected whenever the source cannot distinguish intensity levels at all (e.g. a single questionnaire total). However, whenever a source CAN distinguish moderate from vigorous activity, it SHOULD send moderateActivity and vigorousActivity individually (in addition to any aggregate) — sending only a pre-computed aggregate discards information a consumer might need. This cannot be enforced by an invariant (an instance cannot express "the source could have distinguished this but chose not to"), so it is stated here as implementation guidance rather than a machine-checkable rule. 
Example component combinations (not exhaustive): (a) aggregateActivity only — questionnaire source, no intensity split (Q7/PE7) (b) moderate only — manual source; vigorous implicitly 0, aggregates SHOULD equal moderateActivity (pa-agg-01/pa-agg-02 warning if absent) (c) moderate + aggregateActivityWeighted — partial wearable or manual source (d) vigorous + aggregateActivityWeighted — partial wearable source (e) moderate + vigorous + aggregateActivityWeighted — full wearable source (g) moderate + vigorous + aggregateActivity + aggregateActivityWeighted — full wearable source reporting both aggregate flavors side by side 

**Usages:**

* Examples for this Profile: [Observation/physical-activity-minutes-aggregate-only-example](Observation-physical-activity-minutes-aggregate-only-example.md), [Observation/physical-activity-minutes-all-components-example](Observation-physical-activity-minutes-all-components-example.md), [Observation/physical-activity-minutes-both-aggregates-example](Observation-physical-activity-minutes-both-aggregates-example.md), [Observation/physical-activity-minutes-ehispaq-q7-mapped-example](Observation-physical-activity-minutes-ehispaq-q7-mapped-example.md)... Show 3 more, [Observation/physical-activity-minutes-moderate-aggregate-example](Observation-physical-activity-minutes-moderate-aggregate-example.md), [Observation/physical-activity-minutes-moderate-only-example](Observation-physical-activity-minutes-moderate-only-example.md) and [Observation/physical-activity-minutes-vigorous-aggregate-example](Observation-physical-activity-minutes-vigorous-aggregate-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.prenudge.appdata.r4|current/StructureDefinition/StructureDefinition-at-prenudge-physical-activity-minutes-observation.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-prenudge-physical-activity-minutes-observation.csv), [Excel](StructureDefinition-at-prenudge-physical-activity-minutes-observation.xlsx), [Schematron](StructureDefinition-at-prenudge-physical-activity-minutes-observation.sch) 

IG © 2026+
[The PreNUDGE Consortium](https://prenudge.at). Package hl7.at.fhir.prenudge.appdata.r4#0.1.0 based on
[FHIR® 4.0.1](http://hl7.org/fhir/R4/). Generated
2026-08-26

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
  "date" : "2026-08-26T07:22:28+00:00",
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
  "description" : "Observation profile for recording physical activity duration as a panel\n(moderate, vigorous, and two alternative aggregate components) derived from either a\nwearable device or the EHIS-PAQ/ATHIS questionnaire (Q7/PE7).\n\nTwo aggregate flavors may be sent independently of each other:\n  - aggregateActivity          — plain/unweighted total: moderateActivity (or 0) +\n                                  vigorousActivity (or 0). Also used standalone when\n                                  moderate/vigorous cannot be distinguished at all\n                                  (e.g. a single questionnaire total). See pa-agg-02.\n  - aggregateActivityWeighted  — WHO/IPAQ moderate-equivalent total: moderateActivity\n                                  (or 0) + (vigorousActivity × 2, or 0). See pa-agg-01.\n\nBoth, either, or neither aggregate MAY be present; pa-panel-01 only requires that at\nleast one component (of any kind) exists. Sending only an aggregate (without\nmoderateActivity/vigorousActivity) is valid and expected whenever the source cannot\ndistinguish intensity levels at all (e.g. a single questionnaire total). However,\nwhenever a source CAN distinguish moderate from vigorous activity, it SHOULD send\nmoderateActivity and vigorousActivity individually (in addition to any aggregate) —\nsending only a pre-computed aggregate discards information a consumer might need.\nThis cannot be enforced by an invariant (an instance cannot express \"the source\ncould have distinguished this but chose not to\"), so it is stated here as\nimplementation guidance rather than a machine-checkable rule.\n\nExample component combinations (not exhaustive):\n  (a) aggregateActivity only              — questionnaire source, no intensity split (Q7/PE7)\n  (b) moderate only                       — manual source; vigorous implicitly 0,\n                                             aggregates SHOULD equal moderateActivity\n                                             (pa-agg-01/pa-agg-02 warning if absent)\n  (c) moderate + aggregateActivityWeighted — partial wearable or manual source\n  (d) vigorous + aggregateActivityWeighted — partial wearable source\n  (e) moderate + vigorous + aggregateActivityWeighted            — full wearable source\n  (g) moderate + vigorous + aggregateActivity + aggregateActivityWeighted — full wearable\n      source reporting both aggregate flavors side by side",
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
        "human" : "When moderateActivity or vigorousActivity are present, aggregateActivityWeighted SHOULD equal moderateActivity (or 0) + (vigorousActivity × 2, or 0)",
        "expression" : "(component.where(code.coding.where(code = '77592-4').exists()).exists()\n or component.where(code.coding.where(code = '77593-2').exists()).exists())\nimplies\ncomponent.where(code.coding.where(code = '68130003').exists()).value.ofType(Quantity).value =\n  iif(component.where(code.coding.where(code = '77592-4').exists()).exists(),\n      component.where(code.coding.where(code = '77592-4').exists()).value.ofType(Quantity).value,\n      0)\n  + (iif(component.where(code.coding.where(code = '77593-2').exists()).exists(),\n         component.where(code.coding.where(code = '77593-2').exists()).value.ofType(Quantity).value,\n         0) * 2)",
        "source" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-physical-activity-minutes-observation"
      },
      {
        "key" : "pa-agg-02",
        "severity" : "warning",
        "human" : "When moderateActivity or vigorousActivity are present, aggregateActivity SHOULD equal moderateActivity (or 0) + vigorousActivity (or 0), with no intensity weighting",
        "expression" : "(component.where(code.coding.where(code = '77592-4').exists()).exists()\n or component.where(code.coding.where(code = '77593-2').exists()).exists())\nimplies\ncomponent.where(code.coding.where(code = '101691-4').exists()).value.ofType(Quantity).value =\n  iif(component.where(code.coding.where(code = '77592-4').exists()).exists(),\n      component.where(code.coding.where(code = '77592-4').exists()).value.ofType(Quantity).value,\n      0)\n  + iif(component.where(code.coding.where(code = '77593-2').exists()).exists(),\n        component.where(code.coding.where(code = '77593-2').exists()).value.ofType(Quantity).value,\n        0)",
        "source" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-physical-activity-minutes-observation"
      },
      {
        "key" : "pa-wearable-01",
        "severity" : "error",
        "human" : "When method is Automated, aggregateActivityWeighted must be present",
        "expression" : "method.coding.exists(system = 'http://snomed.info/sct' and code = '8359006') implies component.where(code.coding.where(code = '68130003').exists()).exists()",
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
      "definition" : "Panel components: moderateActivity, vigorousActivity, aggregateActivity (unweighted, min/wk), aggregateActivityWeighted (WHO/IPAQ weighted, min/wk) and classificationMethod (CodeableConcept)."
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
      "id" : "Observation.component:aggregateActivityWeighted",
      "path" : "Observation.component",
      "sliceName" : "aggregateActivityWeighted",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Observation.component:aggregateActivityWeighted.code",
      "path" : "Observation.component.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "68130003",
          "display" : "Physical activity"
        }]
      }
    },
    {
      "id" : "Observation.component:aggregateActivityWeighted.value[x]",
      "path" : "Observation.component.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Observation.component:aggregateActivityWeighted.value[x].unit",
      "path" : "Observation.component.value[x].unit",
      "patternString" : "min/wk"
    },
    {
      "id" : "Observation.component:aggregateActivityWeighted.value[x].system",
      "path" : "Observation.component.value[x].system",
      "patternUri" : "http://unitsofmeasure.org"
    },
    {
      "id" : "Observation.component:aggregateActivityWeighted.value[x].code",
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
