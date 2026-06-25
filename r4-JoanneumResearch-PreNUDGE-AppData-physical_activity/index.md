# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\Home - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* **Home**

## Home

PreNUDGE is an Austrian research project designed to strengthen citizens' personal responsibility for their health. The project aims to increase the number of **healthy life years** through the **digitalization of self-reported health data**.

The core concept is to create a **modular platform** that collects and structures health data from various sources. **Qualified health apps** serve as the interface between citizens and the platform. The project combines nudging strategies with evidence-based health promotion to subtly motivate people to live healthier lives.

PreNUDGE focuses on the **prevention of four diseases**: diabetes, colorectal cancer, depression, and COPD, targeting specific groups such as children, adolescents, and working adults. The FHIR Implementation Guide (IG) is called “PreNUDGE”, which is the agreed English spelling, while the project’s German name is “PräNUDGE.”

For more, see [Background](background.md).

### PreNUDGE FHIR® IG for Data Provider / Data from Apps

This Implementation Guide (IG) explains how application providers can use the **PreNUDGE FHIR API** to deliver **health indicators**.

We focus on narrow standardization of the following **PreNUDGE measurements**:

* **Physical Activity**: 
* ⏳Minutes of moderate and vigorous/intense physical activity (per week) (from [**EHIS-PAQ Q4–Q7 / ATHIS PE4–PE7 questionnaire**](Questionnaire-EhisPaqPhysicalActivityQuestionnaire.md) and (from a wearable device) as an [**observation**](StructureDefinition-at-prenudge-physical-activity-minutes-observation.md))
* Daily activity as Steps per day (from a [**EHIS-PAQ Q2–Q3 / ATHIS PE2–PE3 questionnaire**](Questionnaire-StepCountEhisPaqQuestionnaire.md), [**quantity questionnaire**](Questionnaire-StepCountQuantityQuestionnaire.md) and (from a wearable device) as an [**observation**](StructureDefinition-at-prenudge-stepcount-observation.md))
* ⏳Number of muscle-strengthening exercise sessions (per week) (from [**EHIS-PAQ Q8 / ATHIS PE8 questionnaire**](Questionnaire-EhisPaqMuscleStrengtheningQuestionnaire.md), [**quantity questionnaire**](Questionnaire-MuscleStrengtheningQuantityQuestionnaire.md) and (from a wearable device) as an [**observation**](StructureDefinition-at-prenudge-muscle-strengthening-observation.md))
* ⏳Sitting hours (per day) (from [**EHIS-PAQ Q9 / ATHIS PE9 questionnaire**](Questionnaire-EhisPaqSittingHoursQuestionnaire.md) and (from wearable device) as an [**observation**](StructureDefinition-at-prenudge-sitting-hours-observation.md))
 
* **Alcohol consumption** as number of drinks (from a [**questionnaire**](Questionnaire-AlcoholUseQuestionnaire.md) and from an [**observation**](StructureDefinition-at-prenudge-alcoholuse-observation.md))
* **Quality of life** (from a [**questionnaire**](Questionnaire-WhoQolBrefQuestionnaire.md) with a calculated [**score as an observation**](StructureDefinition-at-prenudge-whoqol-bref-score-observation.md))
* **Smoking**: Current smoking/tobacco use status (from a [**questionnaire**](Questionnaire-SmokingStatusQuestionnaire.md) and from an [**observation IPS style**](StructureDefinition-at-prenudge-smokingstatus-observation.md))
* **Sleep** duration and quality 
* Duration - from [**questionnaire**](Questionnaire-SleepDurationQuestionnaire.md) or as an [**observation**](StructureDefinition-at-prenudge-sleep-duration-observation.md)
* Quality - question 16 from the [**WHOQOL-BRE questionnaire**](Questionnaire-WhoQolBrefQuestionnaire.md) or same question 16 from a [**single quesion questionnaire**](Questionnaire-SleepQualityQuestionnaire.md) or as an [**observation**](StructureDefinition-at-prenudge-sleep-quality-observation.md)
 
* Sociodemographic Data: **Highest completed education** (ISCED level) (from a [**questionnaire**](Questionnaire-EducationQuestionnaire.md) and from an [**observation**](StructureDefinition-at-prenudge-education-observation.md))
* **Workability** 
* Work-related Sense of Coherence (Work-SoC) - [**questionnaire**](Questionnaire-WorkSocQuestionnaire.md) with a calculated score as an [**observation**](StructureDefinition-at-prenudge-work-soc-score-observation.md)
* Work Ability Index (WAI) - [**questionnaire**](Questionnaire-WorkAbilityIndexQuestionnaire.md) only
 
* Anthropometry: **Body Mass Index** (BMI) in kg/m² (from a [**questionnaire**](Questionnaire-BmiQuestionnaire.md) and from an [**observation**](StructureDefinition-at-prenudge-bmi-observation.md))
* For Demo Purposes: **Blood glucose** in mg/dL (from a [**questionnaire**](Questionnaire-BloodGlucoseQuestionnaire.md) and from a [**device as an observation**](StructureDefinition-at-prenudge-bloodglucose-observation.md))

For viewing the full questionnaires use tools like [lhcforms](https://lhcfhirtools.nlm.nih.gov/lhcforms).

Each **questionnaire variant** maps **one-way** to its corresponding **observation variant**. The mappings can be found at [StructureMaps](artifacts.md#terminology-structure-maps) and can be executed with [MaLaC-HD](https://gitlab.com/cdehealth/malac-hd). These transformations will be performed on the server side.

Additional PreNUDGE measurements, also narrow standardized, will be specified analogously to the ones mentioned above, based on feedback from the informative ballot. The following are to be specified:

* Nutrition: Portions of fruit and vegetables (per day) (from a questionnaire)
* Nutrition: Consumption frequency of sugary and salty foods (per week) (from a questionnaire)
* Psychosocial Factors: Self reported emotional burden (from a questionnaire)
* Psychosocial Factors: Self reported stress (from a questionnaire with a calculated score as an observation)

The following sociodemographic data are provided as patient demographic data, preferably from ID Austria. They are not collected using PreNUDGE questionnaires and are not represented as observations.

* **Date of birth / age**: The date of birth is represented using the mandatory `Patient.birthDate` element in the AT APS Patient profile. Age is derived from `Patient.birthDate` at the relevant point in time and is not stored as a separate PreNUDGE observation. The corresponding ID Austria attribute is `birthdate` (`urn:oid:1.2.40.0.10.2.1.1.55`).
* **Gender**: Administrative gender is represented using the mandatory `Patient.gender` element in the AT APS Patient profile. The corresponding ID Austria attribute is `gender` (`urn:eidgvat:attributes.gender`).

Besides these narrow standardized measurements, **broad standardized measurements** called [**other quantities observations**](StructureDefinition-at-prenudge-observation-other-quantities.md) and [**other not quantities observations**](StructureDefinition-at-prenudge-observation-other-not-quantities.md) are also supported. Please be aware that such broad standardized measurements do not have a corresponding questionnaire.

### Observation values and missing data

PreNUDGE Observations SHOULD contain `value[x]` when a clinically or analytically meaningful value can be derived. If no such value can be derived, `value[x]` SHALL be absent and `dataAbsentReason` SHALL be provided.

This applies especially to observations derived from questionnaires. The original `QuestionnaireResponse` remains the source record for the submitted answer, including answers such as "unknown" or "not stated". The derived `Observation` represents the clinically or analytically usable result.

If neither `value[x]` nor `dataAbsentReason` is present, the Observation is incomplete and does not conform to the PreNUDGE data quality expectation.

IG © 2026+
[The PreNUDGE Consortium](https://prenudge.at). Package hl7.at.fhir.prenudge.appdata.r4#0.1.0 based on
[FHIR® 4.0.1](http://hl7.org/fhir/R4/). Generated
2026-06-25

Links:
[Table of Contents](toc.md)|
[QA Report](qa.md)

## Resource Content

```json
{
  "resourceType" : "ImplementationGuide",
  "id" : "hl7.at.fhir.prenudge.appdata.r4",
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/ImplementationGuide/hl7.at.fhir.prenudge.appdata.r4",
  "version" : "0.1.0",
  "name" : "PreNUDGEAppdataR4",
  "title" : "PreNUDGE FHIR® IG for Data Provider / Data from Apps (R4)",
  "status" : "draft",
  "date" : "2026-06-25T12:51:02+00:00",
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
  "description" : "The FHIR® implementation guide for the delivery of data from apps and other providers to the PreNUDGE platform. Authored by the PreNUDGE platform provider.",
  "packageId" : "hl7.at.fhir.prenudge.appdata.r4",
  "license" : "CC0-1.0",
  "fhirVersion" : ["4.0.1"],
  "dependsOn" : [{
    "id" : "hl7tx",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on HL7 Terminology"
    }],
    "uri" : "http://terminology.hl7.org/ImplementationGuide/hl7.terminology",
    "packageId" : "hl7.terminology.r4",
    "version" : "7.2.0"
  },
  {
    "id" : "hl7ext",
    "extension" : [{
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/implementationguide-dependency-comment",
      "valueMarkdown" : "Automatically added as a dependency - all IGs depend on the HL7 Extension Pack"
    }],
    "uri" : "http://hl7.org/fhir/extensions/ImplementationGuide/hl7.fhir.uv.extensions",
    "packageId" : "hl7.fhir.uv.extensions.r4",
    "version" : "5.3.0"
  },
  {
    "id" : "hl7_at_fhir_elga_aps_r4",
    "uri" : "https://fhir.hl7.at/elga/aps/r4/ImplementationGuide/hl7.at.fhir.elga.aps.r4",
    "packageId" : "hl7.at.fhir.elga.aps.r4",
    "version" : "1.0.0"
  },
  {
    "id" : "hl7_fhir_uv_sdc",
    "uri" : "http://hl7.org/fhir/uv/sdc/ImplementationGuide/hl7.fhir.uv.sdc",
    "packageId" : "hl7.fhir.uv.sdc",
    "version" : "3.0.0"
  }],
  "definition" : {
    "extension" : [{
      "extension" : [{
        "url" : "code",
        "valueString" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2026+"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "releaselabel"
      },
      {
        "url" : "value",
        "valueString" : "ci-build"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "autoload-resources"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "template/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "input/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-qa"
      },
      {
        "url" : "value",
        "valueString" : "temp/qa"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-temp"
      },
      {
        "url" : "value",
        "valueString" : "temp/pages"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-output"
      },
      {
        "url" : "value",
        "valueString" : "output"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-suppressed-warnings"
      },
      {
        "url" : "value",
        "valueString" : "input/ignoreWarnings.txt"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "path-history"
      },
      {
        "url" : "value",
        "valueString" : "https://fhir.hl7.at/prenudge/appdata/r4/history.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "template-html"
      },
      {
        "url" : "value",
        "valueString" : "template-page.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "template-md"
      },
      {
        "url" : "value",
        "valueString" : "template-page-md.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-contact"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-context"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-copyright"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-jurisdiction"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-license"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-publisher"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-version"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "apply-wg"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "active-tables"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "fmm-definition"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/versions.html#maturity"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "propagate-status"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "excludelogbinaryformat"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueString" : "tabbed-snapshots"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-internal-dependency",
      "valueCode" : "hl7.fhir.uv.tools.r4#1.1.2"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "copyrightyear"
      },
      {
        "url" : "value",
        "valueString" : "2026+"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "releaselabel"
      },
      {
        "url" : "value",
        "valueString" : "ci-build"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "autoload-resources"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "template/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-liquid"
      },
      {
        "url" : "value",
        "valueString" : "input/liquid"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-qa"
      },
      {
        "url" : "value",
        "valueString" : "temp/qa"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-temp"
      },
      {
        "url" : "value",
        "valueString" : "temp/pages"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-output"
      },
      {
        "url" : "value",
        "valueString" : "output"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-suppressed-warnings"
      },
      {
        "url" : "value",
        "valueString" : "input/ignoreWarnings.txt"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "path-history"
      },
      {
        "url" : "value",
        "valueString" : "https://fhir.hl7.at/prenudge/appdata/r4/history.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-html"
      },
      {
        "url" : "value",
        "valueString" : "template-page.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "template-md"
      },
      {
        "url" : "value",
        "valueString" : "template-page-md.html"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-contact"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-context"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-copyright"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-jurisdiction"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-license"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-publisher"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-version"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "apply-wg"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "active-tables"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "fmm-definition"
      },
      {
        "url" : "value",
        "valueString" : "http://hl7.org/fhir/versions.html#maturity"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "propagate-status"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "excludelogbinaryformat"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    },
    {
      "extension" : [{
        "url" : "code",
        "valueCode" : "tabbed-snapshots"
      },
      {
        "url" : "value",
        "valueString" : "true"
      }],
      "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-parameter"
    }],
    "resource" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/alcoholuse-moderate-example"
      },
      "name" : "Alcohol Use O - Moderate (3-4 times weekly)",
      "description" : "Example of an alcohol use observation for a moderate drinker consuming alcohol 3-4 times per week (0.5 drinks per day).",
      "exampleCanonical" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-alcoholuse-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/alcoholuse-occasional-example"
      },
      "name" : "Alcohol Use O mapped from Q - Daily",
      "description" : "Example of an alcohol use observation for a daily drinker (1 drink per day).",
      "exampleCanonical" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-alcoholuse-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/alcoholuse-never-example"
      },
      "name" : "Alcohol Use O mapped from Q - Non-Drinker",
      "description" : "Example of an alcohol use observation for a lifetime non-drinker (0 drinks per day).",
      "exampleCanonical" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-alcoholuse-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/AlcoholResponseDaily"
      },
      "name" : "Alcohol Use Q - Daily",
      "description" : "Example  of an alcohol use observation for a daily drinker.",
      "exampleCanonical" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-questionnaireresponse"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/AlcoholResponseNever"
      },
      "name" : "Alcohol Use Q - Non-Drinker",
      "description" : "Example  of an alcohol use observation for a lifetime non-drinker.",
      "exampleCanonical" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-questionnaireresponse"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      }],
      "reference" : {
        "reference" : "Questionnaire/AlcoholUseQuestionnaire"
      },
      "name" : "Alkoholkonsum im letzten Jahr",
      "description" : "Categorical variable for the frequency of alcohol consumption in the last year (IPS compatible).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      }],
      "reference" : {
        "reference" : "Questionnaire/WorkSocQuestionnaire"
      },
      "name" : "Arbeitsbezogenes Kohärenzgefühl (Work-SoC)",
      "description" : "Work-related Sense of Coherence (Work-SoC) questionnaire. The raw item responses are collected in the QuestionnaireResponse. Category scores are defined as SDC calculated expressions and may be mapped to a Work-SoC score Observation.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      }],
      "reference" : {
        "reference" : "Questionnaire/WorkAbilityIndexQuestionnaire"
      },
      "name" : "Arbeitsfähigkeit (WAI Kurzmodul)",
      "description" : "Short Work Ability Index (WAI) questionnaire module based on Tuomi et al. 1998. The raw answers are collected as QuestionnaireResponse.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/prenudge-alcoholuse-frequency"
      },
      "name" : "AT PreNUDGE Alcohol Use Frequency",
      "description" : "Frequencies used in the PreNUDGE alcoholuse questionnaire.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/prenudge-bloodglucose-mealcontext"
      },
      "name" : "AT PreNUDGE Blood Glucose Meal Context",
      "description" : "Meal context used in the PreNUDGE Blood Glucose questionnaire and observation.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ConceptMap"
      }],
      "reference" : {
        "reference" : "ConceptMap/AtPrenudgeCodeUnitMap"
      },
      "name" : "AT PreNUDGE Code-to-Unit Mapping",
      "description" : "Maps observation codes to their expected UCUM units for the 'Other Quantities' observation profile.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/at-prenudge-physicalactivity-codesystem-ehispaq"
      },
      "name" : "AT PreNUDGE EHIS-PAQ Answer Set",
      "description" : "Consolidated CodeSystem for all options from the EHIS-PAQ questionnaires (European Health Interview Survey Physical Activity Questionnaire) used in PreNUDGE. Contains two answer scales: days per week (Q4, Q6 in EhisPaqPhysicalActivityQuestionnaire; also Q2 in StepCountEhisPaqQuestionnaire) and activity duration per day (Q3 in StepCountEhisPaqQuestionnaire, Q5 in EhisPaqPhysicalActivityQuestionnaire). Codes are in English; display values remain in German.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/prenudge-isced-2011-education-level"
      },
      "name" : "AT PreNUDGE ISCED 2011 Education Level Codes",
      "description" : "Local representation of ISCED 2011 education levels for the highest completed education level used in PreNUDGE. Austrian levels are described at https://bildungssystem.oead.at/isced-klassifikation",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/prenudge-isced-2011-education-level"
      },
      "name" : "AT PreNUDGE ISCED 2011 Education Level ValueSet",
      "description" : "Permitted answer values for the highest completed education level according to ISCED 2011.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource:abstract"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-prenudge-observation"
      },
      "name" : "AT PreNUDGE Observation",
      "description" : "This FHIR profile is defining the overall Observation for PreNUDGE. It is abstract, so no instances of this profile directly are allowed. Be aware that if the user enters values from a device into a questionnaire, it is still considered a manual input. Please keep in mind that all observations must comply with the qualification matrix on https://prenudge.at/qualificationmatrix/.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-prenudge-alcoholuse-observation"
      },
      "name" : "AT PreNUDGE Observation Alcohol Use",
      "description" : "This FHIR profile is derived from the APS Observation Alcohol Use profile. Additional fields from the PreNUDGE Observation profile are added.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-prenudge-bloodglucose-observation"
      },
      "name" : "AT PreNUDGE Observation Blood Glucose (only in mg/dL)",
      "description" : "This FHIR profile is defining the Blood Glucose Observation, similar to the Observation Social History - Alcohol Use from the IPS. The blood glucose option only allows values inbetween 0 and 999 mg/dL.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-prenudge-bodyheight-observation"
      },
      "name" : "AT PreNUDGE Observation Body Height",
      "description" : "This FHIR profile defines a body height Observation based on the FHIR R4 Vital Signs body height concept. Body height is represented using LOINC 8302-2 and UCUM cm.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-prenudge-bmi-observation"
      },
      "name" : "AT PreNUDGE Observation Body Mass Index",
      "description" : "This FHIR profile defines a Body Mass Index (BMI) Observation based on the FHIR R4 Vital Signs BMI concept. BMI is represented using LOINC 39156-5 and UCUM kg/m2.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-prenudge-bodyweight-observation"
      },
      "name" : "AT PreNUDGE Observation Body Weight",
      "description" : "This FHIR profile defines a body weight Observation based on the FHIR R4 Vital Signs body weight concept. Body weight is represented using LOINC 29463-7 and UCUM kg.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-prenudge-education-observation"
      },
      "name" : "AT PreNUDGE Observation Highest Completed Education",
      "description" : "This FHIR profile defines the person's highest completed education level using ISCED 2011. It is intended for sociodemographic data collected by a simple questionnaire.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/prenudge-observation-method"
      },
      "name" : "AT PreNUDGE Observation Methods",
      "description" : "ValueSet containing SNOMED CT codes for differentiating methods used in the PreNUDGE observation.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-prenudge-muscle-strengthening-observation"
      },
      "name" : "AT PreNUDGE Observation Muscle Strengthening Sessions",
      "description" : "This FHIR profile defines the Muscle Strengthening Sessions Observation recording the number of muscle-strengthening exercise sessions (e.g. weight training, resistance exercises with weights, resistance bands, or bodyweight) per week. Applicable for both automated wearable measurements (method = Automated) and self-reported values derived from MuscleStrengtheningQuantityQuestionnaire (method = Manual). The value must be 0 or greater.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-prenudge-observation-other-not-quantities"
      },
      "name" : "AT PreNUDGE Observation Other not Quantities",
      "description" : "This FHIR profile can be used for all the other Observations for PreNUDGE, not being an quantity and not fitting the existing narrow standardized observations.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-prenudge-observation-other-quantities"
      },
      "name" : "AT PreNUDGE Observation Other Quantities",
      "description" : "This FHIR profile can be used for all the other Observations for PreNUDGE, beeing quantities and not fitting the existing narrow standardized observations. If some code for specifying a new Observation is missing, please contact prenudge@joanneum.at.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-prenudge-physical-activity-minutes-observation"
      },
      "name" : "AT PreNUDGE Observation Physical Activity Minutes",
      "description" : "Observation profile for recording physical activity duration as a panel\n(moderate, vigorous, aggregate components) derived from either a wearable device or\nthe EHIS-PAQ/ATHIS questionnaire (Q7/PE7). Supports four valid component combinations:\n  (a) aggregate only           — questionnaire source (Q7/PE7 → aggregateActivity)\n  (b) moderate only            — manual source; vigorous implicitly 0,\n                                 aggregate = moderateActivity (pa-agg-01 warning\n                                 if aggregateActivity absent)\n  (c) moderate + aggregate     — partial wearable or manual source\n  (d) vigorous + aggregate     — partial wearable source\n  (e) all three                — full wearable source.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-prenudge-sitting-hours-observation"
      },
      "name" : "AT PreNUDGE Observation Sitting Hours",
      "description" : "This FHIR profile defines the Sitting Hours Observation recording the average number of sitting or resting hours per day (excluding sleep). Applicable for both automated wearable measurements (method = Automated) and self-reported values derived from EhisPaqSittingHoursQuestionnaire via SittingHoursQuestionnaireResponseToObservation (method = Manual). Sleep hours must be subtracted by the originating app before recording the value.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-prenudge-sleep-duration-observation"
      },
      "name" : "AT PreNUDGE Observation Sleep Duration",
      "description" : "This FHIR profile defines the Sleep Duration Observation recording average nightly sleep in hours. Applicable for both automated wearable measurements (method = automated) and self-reported values derived from a questionnaire (method = manual).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-prenudge-sleep-quality-observation"
      },
      "name" : "AT PreNUDGE Observation Sleep Quality",
      "description" : "Records the self-assessed sleep quality from PROMIS (My sleep quality was...in past 7 days). Also used to map WHOQOL-BREF Q16 from standalone SleepQualityQuestionnaire or the full WhoQolBrefQuestionnaire.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-prenudge-smokingstatus-observation"
      },
      "name" : "AT PreNUDGE Observation Smoking Status",
      "description" : "This FHIR profile is defining the current smoking status observation for PreNUDGE. It is derived from the APS Observation Tobacco Use profile, which imposes the IPS Observation Social History - Tobacco Use profile. The value is derived from the ATHIS-based SmokingStatusQuestionnaire, primarily from SK1 and, if SK1 is negative, from the past tobacco smoking question. Additional fields from the PreNUDGE Observation profile are added.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-prenudge-stepcount-observation"
      },
      "name" : "AT PreNUDGE Observation Step Count",
      "description" : "This FHIR profile is defining the Step Count Observation. The step count only allows values inbetween 0 and 150,000 steps per 24 hours.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-prenudge-whoqol-bref-score-observation"
      },
      "name" : "AT PreNUDGE Observation WHOQOL-BREF Score",
      "description" : "Observation profile for recording WHOQOL-BREF domain scores. The overall score is represented in Observation.value, individual domain scores are recorded as components.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-prenudge-work-soc-score-observation"
      },
      "name" : "AT PreNUDGE Observation Work-SoC Category Score",
      "description" : "This FHIR profile defines the calculated work-related sense of coherence (Work-SoC) category score observation. It contains the category scores for comprehensibility, manageability and meaningfulness as Observation components. The raw Work-SoC item answers are represented in the source QuestionnaireResponse.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/prenudge-other-observations-codes"
      },
      "name" : "AT PreNUDGE Other Observations Codes",
      "description" : "Allowed observation codes for the 'Other' observation profile.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/prenudge-other-observations-units"
      },
      "name" : "AT PreNUDGE Other Observations Units",
      "description" : "Allowed UCUM units for the 'Other' observation profile.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/at-prenudge-physical-activity-classification-method-cs"
      },
      "name" : "AT PreNUDGE Physical Activity Classification Method CodeSystem",
      "description" : "Codes for the algorithm or technique used to classify the intensity of a physical activity measurement into moderate / vigorous categories.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/prenudge-physical-activity-classification-method-vs"
      },
      "name" : "AT PreNUDGE Physical Activity Classification Method ValueSet",
      "description" : "ValueSet containing all codes from the AT PreNUDGE Physical Activity Classification Method CodeSystem. Used as the required binding for component[classificationMethod].value[x] in the AT PreNUDGE Observation Physical Activity Minutes profile.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource:abstract"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-prenudge-questionnaire"
      },
      "name" : "AT PreNUDGE Questionnaire",
      "description" : "This FHIR profile is defining the overall Questionnaire for PreNUDGE. Every top level item requires one comment subitem, with the linkId ending or equal 'comment'. Be aware that if the user enters values from a device into a questionnaire, it is still considered a manual input. Please keep in mind that all questionnaires must comply with the qualification matrix on https://prenudge.at/qualificationmatrix/.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureDefinition:resource"
      }],
      "reference" : {
        "reference" : "StructureDefinition/at-prenudge-questionnaireresponse"
      },
      "name" : "AT PreNUDGE Questionnaire Response",
      "description" : "This FHIR profile is defining the overall Questionnaire Response for PreNUDGE. Be aware that if the user enters values from a device into a questionnaire, it is still considered a manual input. Please keep in mind that all questionnaire responses must comply with the qualification matrix on https://prenudge.at/qualificationmatrix/.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/prenudge-wai-answer"
      },
      "name" : "AT PreNUDGE WAI Answer Codes",
      "description" : "Local answer codes for categorical Work Ability Index answer options.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/prenudge-wai-physical-demands-answer"
      },
      "name" : "AT PreNUDGE WAI Physical Demands Answer ValueSet",
      "description" : "Permitted categorical answers for current work ability in relation to physical work demands.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/whoqol-bref-scale"
      },
      "name" : "AT PreNUDGE WHOQOL-BREF Answer Scales",
      "description" : "Consolidated CodeSystem for all answer scales of the WHOQOL-BREF questionnaire.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "ValueSet"
      }],
      "reference" : {
        "reference" : "ValueSet/prenudge-whoqol-bref-score-type"
      },
      "name" : "AT PreNUDGE WHOQOL-BREF Score Type ValueSet",
      "description" : "ValueSet containing SNOMED CT codes for differentiating WHOQOL-BREF overall and domain scores.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/prenudge-workability"
      },
      "name" : "AT PreNUDGE Workability Codes",
      "description" : "Local PreNUDGE codes for workability questionnaires and derived Work-SoC score observations. Work-SoC source DOI: https://doi.org/10.4102/sajip.v39i1.1111",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Patient"
      }],
      "reference" : {
        "reference" : "Patient/example"
      },
      "name" : "AtApsPatient-example",
      "description" : "An example of a patient with a license to krill.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "CodeSystem"
      }],
      "reference" : {
        "reference" : "CodeSystem/athis-answers"
      },
      "name" : "ATHIS – Antwortmöglichkeiten",
      "description" : "Vollständige Antwortmöglichkeiten aus dem ATHIS Fragebogen (Österreichische Gesundheitsbefragung, STATISTIK AUSTRIA, Version 31.03.2025). Codes sind englisch; Display-Werte bleiben deutsch. Gruppiert nach Skalentypen. Hinweis: Bestehende PreNUDGE CodeSystems bleiben gültig – whoqol-bref-scale (LQ16-Zufriedenheitsskala), prenudge-nutrition-consumption-frequency (DH1/DH3 numerische Codes), prenudge-alcoholuse-frequency (AL1 SNOMED-basiert).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/bloodglucose-low-example"
      },
      "name" : "Blood Glucose O - Low Example",
      "description" : "Example of a low fasting blood glucose measurement (62 mg/dL), indicating hypoglycemia.",
      "exampleCanonical" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-bloodglucose-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/bloodglucose-elevated-example"
      },
      "name" : "Blood Glucose O mapped from Q - Elevated Example",
      "description" : "Example of an elevated fasting blood glucose measurement (142 mg/dL), indicating diabetes mellitus.",
      "exampleCanonical" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-bloodglucose-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/bloodglucose-normal-example"
      },
      "name" : "Blood Glucose O mapped from Q - Normal Example",
      "description" : "Example of a normal fasting blood glucose measurement (95 mg/dL).",
      "exampleCanonical" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-bloodglucose-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/bloodglucose-response-elevated-example"
      },
      "name" : "Blood Glucose Q - Elevated Example",
      "description" : "Example of an elevated fasting blood glucose measurement (142 mg/dL), indicating diabetes mellitus.",
      "exampleCanonical" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-questionnaireresponse"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/bloodglucose-response-normal-example"
      },
      "name" : "Blood Glucose Q - Normal Example",
      "description" : "Example of a normal fasting blood glucose measurement (95 mg/dL).",
      "exampleCanonical" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-questionnaireresponse"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      }],
      "reference" : {
        "reference" : "Questionnaire/BloodGlucoseQuestionnaire"
      },
      "name" : "Blutzucker bei der letzten Messung",
      "description" : "A simple questionnaire for asking how high the blood glucose level is right now. The blood glucose option only allows values inbetween 0 and 999 mg/dL.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/bmi-questionnaire-response-example"
      },
      "name" : "BMI Questionnaire Response Example",
      "description" : "Example of a BMI questionnaire response with body height, body weight and a calculated BMI value.",
      "exampleCanonical" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-questionnaireresponse"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/bodyheight-example"
      },
      "name" : "Body Height O - Example",
      "description" : "Example body height Observation derived from a BMI questionnaire response.",
      "exampleCanonical" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-bodyheight-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/bmi-example"
      },
      "name" : "Body Mass Index O - Example",
      "description" : "Example BMI Observation derived from a BMI questionnaire response.",
      "exampleCanonical" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-bmi-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/bodyweight-example"
      },
      "name" : "Body Weight O - Example",
      "description" : "Example body weight Observation derived from a BMI questionnaire response.",
      "exampleCanonical" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-bodyweight-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      }],
      "reference" : {
        "reference" : "Questionnaire/SleepDurationQuestionnaire"
      },
      "name" : "Durchschnittliche Schlafdauer pro Nacht",
      "description" : "A simple questionnaire for self-reporting average sleep duration per night in hours. Only allows values between 0 and 24 hours.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/education-bachelor-example"
      },
      "name" : "Education O mapped from Q - Bachelor's Level Example",
      "description" : "Example of a highest completed education observation mapped from the EducationQuestionnaire.",
      "exampleCanonical" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-education-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/education-upper-secondary-example"
      },
      "name" : "Education O mapped from Q - Upper Secondary Education Example",
      "description" : "Example of a highest completed education observation mapped from the EducationQuestionnaire.",
      "exampleCanonical" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-education-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/education-response-bachelor-example"
      },
      "name" : "Education Q - Bachelor's Level Example",
      "description" : "Example of a highest completed education questionnaire response using ISCED 2011 level 6.",
      "exampleCanonical" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-questionnaireresponse"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/education-response-upper-secondary-example"
      },
      "name" : "Education Q - Upper Secondary Education Example",
      "description" : "Example of a highest completed education questionnaire response using ISCED 2011 level 3.",
      "exampleCanonical" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-questionnaireresponse"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/physical-activity-ehispaq-response-example"
      },
      "name" : "EHIS-PAQ Q7 / ATHIS PE7 Physical Activity - Example Response",
      "description" : "Example EHIS-PAQ Q7 / ATHIS PE7 physical activity questionnaire response:\nQ4 = 3 Tage pro Woche (Fahrrad, Transport),\nQ5 = 30 bis 59 Minuten pro Tag (Fahrrad),\nQ6 = 5 Tage pro Woche (Freizeit-Sport),\nQ7 = 2 Stunden 30 Minuten (= 150 min/Woche).\nQ7 maps to physical-activity-questionnaire-example via the StructureMap.",
      "exampleCanonical" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-questionnaireresponse"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/muscle-strengthening-ehis-paq-response-example"
      },
      "name" : "EHIS-PAQ Q8 / ATHIS PE8 Muscle Strengthening Q - Example Response",
      "description" : "Example QuestionnaireResponse for EhisPaqMuscleStrengtheningQuestionnaire: respondent selects 3 days per week of muscle-strengthening exercise.",
      "exampleCanonical" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-questionnaireresponse"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      }],
      "reference" : {
        "reference" : "Questionnaire/EhisPaqMuscleStrengtheningQuestionnaire"
      },
      "name" : "EHIS-PAQ Q8 / ATHIS PE8: Muskelkräftigungsübungen",
      "description" : "EHIS-PAQ Q8 / ATHIS PE8: number of\ndays per week on which the respondent performs physical activities specifically aimed at\nbuilding or strengthening muscles (e.g. weight training, resistance-band exercises,\nbodyweight exercises, squats, push-ups, sit-ups). Answer options use existing ATHIS\nCodeSystem codes activity-1-day through activity-7-days. Two mapping paths to\nAtPrenudgeObservationMuscleStrengthening are available: (1) directly from this\nquestionnaire via MuscleStrengtheningEhisPaqQuestionnaireResponseToObservation\n(translates coded day-count to numeric sessions/wk: 1 day = 1 session/wk, …, 7 days\n= 7 sessions/wk); (2) via MuscleStrengtheningQuantityQuestionnaire and\nMuscleStrengtheningQuestionnaireResponseToObservation when a numeric quantity answer\nis preferred.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/sitting-hours-ehis-paq-response-example"
      },
      "name" : "EHIS-PAQ Q9 / ATHIS PE9 Sitting Hours Q – Example Response",
      "description" : "Example QuestionnaireResponse for EhisPaqSittingHoursQuestionnaire: respondent reports 6 hours and 0 minutes of sitting or resting per day (sleep excluded). Corresponds to sitting-hours-questionnaire-derived-example (6.0 h) via SittingHoursQuestionnaireResponseToObservation.",
      "exampleCanonical" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-questionnaireresponse"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      }],
      "reference" : {
        "reference" : "Questionnaire/EhisPaqSittingHoursQuestionnaire"
      },
      "name" : "EHIS-PAQ Q9 / ATHIS PE9: Sitzen und Ruhen",
      "description" : "EHIS-PAQ Q9 / ATHIS PE9: total time spent sitting or resting on a\ntypical day (excluding sleep), captured as two integer sub-items (hours 0–23,\nminutes 0–60). Mapped to AtPrenudgeObservationSittingHours via\nSittingHoursQuestionnaireResponseToObservation (hours + minutes/60 → valueQuantity\nin h).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      }],
      "reference" : {
        "reference" : "Questionnaire/EhisPaqPhysicalActivityQuestionnaire"
      },
      "name" : "EHIS-PAQ/ATHIS: Körperliche Aktivität",
      "description" : "Questions Q4–Q7 from the European Health Interview Survey Physical Activity\nQuestionnaire (EHIS-PAQ), equivalent to ATHIS PE4–PE7: cycling for transport\n(Q4/PE4: days per week, Q5/PE5: duration per day), leisure sport and physical\nactivity in leisure time (Q6/PE6: days per week, Q7/PE7: total duration per week).\nQ7 is mapped to Observation via PhysicalActivityMinutesQtoO;\nQ4–Q6 are captured only.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      }],
      "reference" : {
        "reference" : "Questionnaire/StepCountEhisPaqQuestionnaire"
      },
      "name" : "EHIS-PAQ/ATHIS: Zu-Fuß-Gehen",
      "description" : "Questions Q2–Q3 from the European Health Interview Survey Physical Activity\nQuestionnaire (EHIS-PAQ), equivalent to ATHIS PE2–PE3: number of days per week on\nwhich the respondent walks for transport (Q2/PE2, integer 0–7) and the typical\nduration of that walking per day (Q3/PE3, coded using ATHIS group 9 answer set).",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      }],
      "reference" : {
        "reference" : "Questionnaire/EducationQuestionnaire"
      },
      "name" : "Höchster abgeschlossener Bildungsabschluss",
      "description" : "A simple questionnaire asking for the person's highest completed education level using ISCED 2011 levels.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      }],
      "reference" : {
        "reference" : "Questionnaire/BmiQuestionnaire"
      },
      "name" : "Körpergröße, Körpergewicht und Body Mass Index (BMI)",
      "description" : "Questionnaire for self-reporting body height and body weight. The Body Mass Index (BMI) is defined as an SDC calculated expression based on height in cm and weight in kg. The QuestionnaireResponse may be mapped to separate body height, body weight and BMI Observations.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/muscle-strengthening-wearable-derived-example"
      },
      "name" : "Muscle Strengthening Sessions O - Wearable Automated Example",
      "description" : "Example of an automatically detected muscle strengthening sessions count (5 sessions per week) measured by a wearable fitness tracker.",
      "exampleCanonical" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-muscle-strengthening-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/muscle-strengthening-ehis-paq-derived-example"
      },
      "name" : "Muscle Strengthening Sessions O mapped from EHIS-PAQ Q8 / ATHIS PE8 - Example",
      "description" : "Example of a self-reported muscle strengthening sessions count (3 sessions per week) derived from EhisPaqMuscleStrengtheningQuestionnaire via MuscleStrengtheningEhisPaqQuestionnaireResponseToObservation. ATHIS code activity-3-days is translated to the numeric value 3.",
      "exampleCanonical" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-muscle-strengthening-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/muscle-strengthening-questionnaire-derived-example"
      },
      "name" : "Muscle Strengthening Sessions O mapped from Q - Example",
      "description" : "Example of a self-reported muscle strengthening sessions count (3 sessions per week) derived from MuscleStrengtheningQuantityQuestionnaire.",
      "exampleCanonical" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-muscle-strengthening-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/muscle-strengthening-quantity-response-example"
      },
      "name" : "Muscle Strengthening Sessions Q - Example Response",
      "description" : "Example QuestionnaireResponse for MuscleStrengtheningQuantityQuestionnaire: respondent reports 3 muscle-strengthening exercise sessions per week.",
      "exampleCanonical" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-questionnaireresponse"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      }],
      "reference" : {
        "reference" : "Questionnaire/MuscleStrengtheningQuantityQuestionnaire"
      },
      "name" : "Muskelkräftigungs-Trainingseinheiten pro Woche (numerisch)",
      "description" : "A numeric questionnaire for directly entering the number of muscle-strengthening exercise sessions per week. Designed for direct FML mapping to the AT PreNUDGE Observation Muscle Strengthening Sessions profile via MuscleStrengtheningQuestionnaireResponseToObservation. Use EhisPaqMuscleStrengtheningQuestionnaire for the categorical EHIS-PAQ Q8 / ATHIS PE8 representation.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/physical-activity-minutes-aggregate-only-example"
      },
      "name" : "Physical Activity Minutes O - (a) Aggregate Only (Manual)",
      "description" : "Scenario (a): only component[aggregateActivity] is present.\nTypical for a questionnaire-derived observation that asks only for total activity\ntime without splitting moderate and vigorous.  pa-agg-01 passes silently because\nneither moderate nor vigorous is present.",
      "exampleCanonical" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-physical-activity-minutes-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/physical-activity-minutes-moderate-only-example"
      },
      "name" : "Physical Activity Minutes O - (b) Moderate Only (Manual, pa-agg-01 warning)",
      "description" : "Scenario (b): only component[moderateActivity] is present; aggregate absent.\npa-agg-01 fires a WARNING because moderateActivity is present but aggregateActivity\nis not.  The aggregate should equal moderateActivity + (0 × 2) = 150 min/wk;\na sender should add component[aggregateActivity] = 150 min/wk to suppress the warning.\nThis scenario may arise when a source captures moderate activity but omits the aggregate.",
      "exampleCanonical" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-physical-activity-minutes-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/physical-activity-minutes-moderate-aggregate-example"
      },
      "name" : "Physical Activity Minutes O - (c) Moderate + Aggregate (Manual)",
      "description" : "Scenario (c): component[moderateActivity] and component[aggregateActivity] present;\nvigorousActivity absent (implicitly 0).  aggregateActivity = moderateActivity + (0 × 2) = 90 min/wk.\npa-agg-01 is satisfied.  Typical for a structured questionnaire that reports\nmoderate-intensity activity separately and includes the computed aggregate.",
      "exampleCanonical" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-physical-activity-minutes-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/physical-activity-minutes-vigorous-aggregate-example"
      },
      "name" : "Physical Activity Minutes O - (d) Vigorous + Aggregate (Automated, HRZ)",
      "description" : "Scenario (d): component[vigorousActivity] and component[aggregateActivity] present;\nmoderateActivity absent (implicitly 0).  aggregateActivity = 0 + (vigorousActivity × 2) = 150 min/wk.\nclassificationMethod = hrz (Heart Rate Zones, moderate 50–70% HRmax; vigorous >70% HRmax).\nTypical for a wearable that identifies only vigorous bouts via heart rate but does not\nseparately count moderate bouts.",
      "exampleCanonical" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-physical-activity-minutes-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/physical-activity-minutes-all-components-example"
      },
      "name" : "Physical Activity Minutes O - (e) All Three Components (Automated, MET-Cal)",
      "description" : "Scenario (e): all three Quantity components present.\nmoderateActivity = 120 min/wk, vigorousActivity = 60 min/wk,\naggregateActivity = 120 + (60 × 2) = 240 min/wk.\nclassificationMethod = met-cal (MET estimated from accelerometer / VO2 proxy).\nThis is the richest Observation variant, produced by a full wearable pipeline\nthat computes both intensity levels and the WHO/IPAQ weighted aggregate.",
      "exampleCanonical" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-physical-activity-minutes-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/physical-activity-minutes-ehispaq-q7-mapped-example"
      },
      "name" : "Physical Activity Minutes O - (f) EHIS-PAQ/ATHIS Q7/PE7 Mapped (Aggregate Only)",
      "description" : "Scenario (f): Observation produced by applying\nPhysicalActivityMinutesQtoO to\nphysical-activity-ehispaq-response-example.\nQ7/PE7 answer: 2 Stunden + 30 Minuten → aggregateActivity = (2×60)+30 = 150 min/wk.\nNo intensity weighting is applied because Q7 does not separate moderate from\nvigorous activity.  derivedFrom links back to the source QuestionnaireResponse.\nclassificationMethod is absent; pa-manual-comp-01 is satisfied by absence.",
      "exampleCanonical" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-physical-activity-minutes-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Device"
      }],
      "reference" : {
        "reference" : "Device/device-wearable-example"
      },
      "name" : "PreNUDGE Wearable Device Example",
      "description" : "Example of a wearable fitness tracker referenced from the physical activity wearable observation example.",
      "exampleBoolean" : true
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      }],
      "reference" : {
        "reference" : "Questionnaire/SmokingStatusQuestionnaire"
      },
      "name" : "Rauchstatus und Nikotinkonsum",
      "description" : "ATHIS 2025-based questionnaire module for smoking status, cigarette consumption, duration of daily smoking, tobacco heaters, electronic cigarettes or similar electronic products, and nicotine pouches. A derived IPS-compatible Observation can be created from SK1 and the past tobacco smoking question.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      }],
      "reference" : {
        "reference" : "Questionnaire/SleepQualityQuestionnaire"
      },
      "name" : "Schlafqualität – Selbsteinschätzung (WHOQOL-BREF Q16)",
      "description" : "Standalone questionnaire for self-assessing sleep quality based on WHOQOL-BREF question Q16 ('Wie zufrieden sind Sie mit Ihrem Schlaf?').",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      }],
      "reference" : {
        "reference" : "Questionnaire/StepCountQuantityQuestionnaire"
      },
      "name" : "Schrittzahl am heutigen Tag",
      "description" : "A simple questionnaire for asking how many steps the patient has taken today. Only allows values inbetween 0 and 150,000.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/sitting-hours-questionnaire-derived-example"
      },
      "name" : "Sitting Hours O mapped from EHIS-PAQ Q9 / ATHIS PE9 – Example",
      "description" : "Example of a self-reported sitting/resting duration (6.0 h per day, sleep excluded) derived from EhisPaqSittingHoursQuestionnaire via SittingHoursQuestionnaireResponseToObservation.",
      "exampleCanonical" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-sitting-hours-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/sitting-hours-wearable-example"
      },
      "name" : "Sitting Hours O – Wearable Automated Example",
      "description" : "Example of an automatically measured sitting/resting duration (6.0 h per day, sleep excluded) derived from a wearable device.",
      "exampleCanonical" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-sitting-hours-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/sleep-duration-normal-automated-example"
      },
      "name" : "Sleep Duration O - Normal Automated Example",
      "description" : "Example of a normal average sleep duration (7.5 h) measured by a wearable device.",
      "exampleCanonical" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-sleep-duration-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/sleep-duration-short-automated-example"
      },
      "name" : "Sleep Duration O - Short Automated Example",
      "description" : "Example of a short average sleep duration (5.5 h) measured by a wearable device, indicating insufficient sleep.",
      "exampleCanonical" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-sleep-duration-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/sleep-duration-normal-manual-example"
      },
      "name" : "Sleep Duration O mapped from Q - Normal Example",
      "description" : "Example of a self-reported average sleep duration (7 h) derived from a questionnaire response.",
      "exampleCanonical" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-sleep-duration-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/sleep-duration-response-normal-example"
      },
      "name" : "Sleep Duration Q - Normal Example",
      "description" : "Example of a self-reported normal average sleep duration (7 h per night).",
      "exampleCanonical" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-questionnaireresponse"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/sleep-duration-response-short-example"
      },
      "name" : "Sleep Duration Q - Short Example",
      "description" : "Example of a self-reported short average sleep duration (5.5 h per night).",
      "exampleCanonical" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-questionnaireresponse"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/sleep-quality-dissatisfied-example"
      },
      "name" : "Sleep Quality O mapped from Q - Dissatisfied Example",
      "description" : "Example of a sleep quality observation indicating poor sleep satisfaction (LA8969-3 - Poor), derived from the standalone SleepQualityQuestionnaire (S2 - Unzufrieden mapped to LOINC).",
      "exampleCanonical" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-sleep-quality-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/sleep-quality-satisfied-example"
      },
      "name" : "Sleep Quality O mapped from Q - Satisfied Example",
      "description" : "Example of a sleep quality observation indicating good sleep satisfaction (LA8967-7 - Good), derived from the standalone SleepQualityQuestionnaire (S4 - Zufrieden mapped to LOINC).",
      "exampleCanonical" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-sleep-quality-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/sleep-quality-response-dissatisfied-example"
      },
      "name" : "Sleep Quality Q - Dissatisfied Example",
      "description" : "Example of a standalone sleep quality questionnaire response indicating dissatisfaction with sleep (S2 - Unzufrieden).",
      "exampleCanonical" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-questionnaireresponse"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/sleep-quality-response-satisfied-example"
      },
      "name" : "Sleep Quality Q - Satisfied Example",
      "description" : "Example of a standalone sleep quality questionnaire response indicating satisfaction with sleep (S4 - Zufrieden).",
      "exampleCanonical" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-questionnaireresponse"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/smokingstatus-not-stated-example"
      },
      "name" : "Smoking Status O - Not Stated Example",
      "description" : "Example of a smoking status observation where no clinically meaningful smoking status could be derived because the respondent declined to answer.",
      "exampleCanonical" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-smokingstatus-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/smokingstatus-current-every-day-example"
      },
      "name" : "Smoking Status O mapped from ATHIS Q - Current Daily Tobacco Smoker Example",
      "description" : "Example of a smoking status observation for a current daily tobacco smoker, mapped from SK1 of the ATHIS-based SmokingStatusQuestionnaire.",
      "exampleCanonical" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-smokingstatus-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/smokingstatus-former-example"
      },
      "name" : "Smoking Status O mapped from ATHIS Q - Former Tobacco Smoker Example",
      "description" : "Example of a smoking status observation for a former tobacco smoker, mapped from SK1 and the past tobacco smoking question of the ATHIS-based SmokingStatusQuestionnaire.",
      "exampleCanonical" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-smokingstatus-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/smokingstatus-never-example"
      },
      "name" : "Smoking Status O mapped from ATHIS Q - Never Tobacco Smoker Example",
      "description" : "Example of a smoking status observation for a person who never smoked tobacco, mapped from SK1 and the past tobacco smoking question of the ATHIS-based SmokingStatusQuestionnaire.",
      "exampleCanonical" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-smokingstatus-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/SmokingStatusResponseCurrentEveryDay"
      },
      "name" : "Smoking Status Q ATHIS - Current Daily Tobacco Smoker Example",
      "description" : "Example of an ATHIS-based smoking status questionnaire response for a current daily tobacco smoker. The derived observation maps SK1 daily to SNOMED CT 449868002.",
      "exampleCanonical" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-questionnaireresponse"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/SmokingStatusResponseFormer"
      },
      "name" : "Smoking Status Q ATHIS - Former Tobacco Smoker Example",
      "description" : "Example of an ATHIS-based smoking status questionnaire response for a former tobacco smoker. The derived observation maps SK1 no and past tobacco smoking to SNOMED CT 8517006.",
      "exampleCanonical" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-questionnaireresponse"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/SmokingStatusResponseNever"
      },
      "name" : "Smoking Status Q ATHIS - Never Tobacco Smoker Example",
      "description" : "Example of an ATHIS-based smoking status questionnaire response for a person who never smoked tobacco. The derived observation maps SK1 no and past tobacco smoking no to SNOMED CT 266919005.",
      "exampleCanonical" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-questionnaireresponse"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/SmokingStatusResponseNotStated"
      },
      "name" : "Smoking Status Q ATHIS - Not Stated Example",
      "description" : "Example of an ATHIS-based smoking status questionnaire response where the respondent declined to answer the current tobacco smoking question. The derived observation uses dataAbsentReason asked-declined.",
      "exampleCanonical" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-questionnaireresponse"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/stepcount-ehispaq-high"
      },
      "name" : "Step Count EHIS PAQ Q - High Example",
      "description" : "Example of a high step count (7 times a week with 2-3 hours).",
      "exampleCanonical" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-questionnaireresponse"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/stepcount-ehispaq-normal"
      },
      "name" : "Step Count EHIS PAQ Q - Normal Example",
      "description" : "Example of a normal step count (5 times a week with 30-59 minutes).",
      "exampleCanonical" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-questionnaireresponse"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/stepcount-sedentary-example"
      },
      "name" : "Step Count O - Sedentary Example",
      "description" : "Example of a low step count (1,204 steps per day), typical for a mostly sedentary day.",
      "exampleCanonical" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-stepcount-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/stepcount-high-example"
      },
      "name" : "Step Count O mapped from Q - High Example",
      "description" : "Example of a high step count (133,519 steps per day).",
      "exampleCanonical" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-stepcount-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/stepcount-normal-example"
      },
      "name" : "Step Count O mapped from Q - Normal Example",
      "description" : "Example of a normal step count (8,432 steps per day).",
      "exampleCanonical" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-stepcount-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/stepcount-quantity-response-high-example"
      },
      "name" : "Step Count Q - High Example",
      "description" : "Example of a high step count (133,519 steps per day).",
      "exampleCanonical" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-questionnaireresponse"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/stepcount-quantity-response-normal-example"
      },
      "name" : "Step Count Q - Normal Example",
      "description" : "Example of a normal step count (8,432 steps per day).",
      "exampleCanonical" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-questionnaireresponse"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/wai-response-example"
      },
      "name" : "WAI Q - Example",
      "description" : "Example of a short Work Ability Index questionnaire response.",
      "exampleCanonical" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-questionnaireresponse"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Questionnaire"
      }],
      "reference" : {
        "reference" : "Questionnaire/WhoQolBrefQuestionnaire"
      },
      "name" : "WHOQOL-BREF Lebensstil Selbsteinschätzung",
      "description" : "The WHOQOL-BREF is a 26-item instrument for assessing subjective quality of life in four domains: physical, psychological, social relationships, and environment. Developed by the WHO.",
      "exampleBoolean" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/whoqol-bref-score-example"
      },
      "name" : "WHOQOL-BREF O Score only mapped from Q",
      "description" : "Example of a WHOQOL-BREF score observation with a general score and all four domain scores.",
      "exampleCanonical" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-whoqol-bref-score-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/whoqol-bref-response-example"
      },
      "name" : "WHOQOL-BREF Q",
      "description" : "Example of a completed WHOQOL-BREF QuestionnaireResponse including all 26 items and calculated scores.",
      "exampleCanonical" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-questionnaireresponse"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "QuestionnaireResponse"
      }],
      "reference" : {
        "reference" : "QuestionnaireResponse/work-soc-response-example"
      },
      "name" : "Work-SoC Q - Example",
      "description" : "Example of a Work-SoC questionnaire response with nine raw item answers.",
      "exampleCanonical" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-questionnaireresponse"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "Observation"
      }],
      "reference" : {
        "reference" : "Observation/work-soc-score-example"
      },
      "name" : "Work-SoC Score O mapped from Q - Example",
      "description" : "Example of a calculated Work-SoC category score observation derived from the WorkSocQuestionnaire.",
      "exampleCanonical" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-work-soc-score-observation"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureMap"
      }],
      "reference" : {
        "reference" : "StructureMap/AlcoholQuestionnaireResponseToObservation"
      },
      "name" : "Alcohol Use Q mapping frequency to O drinks per day",
      "description" : "Alcohol Use Q mapping frequency to O drinks per day"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureMap"
      }],
      "reference" : {
        "reference" : "StructureMap/BloodGlucoseQuestionnaireResponseToObservation"
      },
      "name" : "Blood Glucose Q to O",
      "description" : "Blood Glucose Q to O"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureMap"
      }],
      "reference" : {
        "reference" : "StructureMap/BmiQuestionnaireResponseToObservations"
      },
      "name" : "BMI Q to Body Height, Body Weight and BMI Observations Bundle",
      "description" : "BMI Q to Body Height, Body Weight and BMI Observations Bundle"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureMap"
      }],
      "reference" : {
        "reference" : "StructureMap/EducationQuestionnaireResponseToObservation"
      },
      "name" : "Highest Completed Education Q to O",
      "description" : "Highest Completed Education Q to O"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureMap"
      }],
      "reference" : {
        "reference" : "StructureMap/MuscleStrengtheningEhisPaqQuestionnaireResponseToObservation"
      },
      "name" : "Muscle Strengthening EHIS-PAQ Q8 / ATHIS PE8 to O",
      "description" : "Muscle Strengthening EHIS-PAQ Q8 / ATHIS PE8 to O"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureMap"
      }],
      "reference" : {
        "reference" : "StructureMap/MuscleStrengtheningQuestionnaireResponseToObservation"
      },
      "name" : "Muscle Strengthening Sessions Q to O",
      "description" : "Muscle Strengthening Sessions Q to O"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureMap"
      }],
      "reference" : {
        "reference" : "StructureMap/PhysicalActivityMinutesQtoO"
      },
      "name" : "Physical Activity Minutes Q to O",
      "description" : "Physical Activity EHIS-PAQ Q7 / ATHIS PE7 to O (aggregate-only variant)"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureMap"
      }],
      "reference" : {
        "reference" : "StructureMap/QuestionnaireResponseToObservationBase"
      },
      "name" : "Shared base for Q to O",
      "description" : "Shared base for Q to O"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureMap"
      }],
      "reference" : {
        "reference" : "StructureMap/WHOQOLBrefQuestionnaireResponseToObservation"
      },
      "name" : "WHOQOL-BREF Q score to O score",
      "description" : "WHOQOL-BREF Q score to O score"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureMap"
      }],
      "reference" : {
        "reference" : "StructureMap/SittingHoursQuestionnaireResponseToObservation"
      },
      "name" : "Sitting Hours Q to O",
      "description" : "Sitting Hours EHIS-PAQ Q9 / ATHIS PE9 to O"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureMap"
      }],
      "reference" : {
        "reference" : "StructureMap/SleepDurationQuestionnaireResponseToObservation"
      },
      "name" : "Sleep Duration Q to O",
      "description" : "Sleep Duration Q to O"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureMap"
      }],
      "reference" : {
        "reference" : "StructureMap/SleepQualityBase"
      },
      "name" : "Sleep Quality Base (WHOQOL-BREF scale to LOINC)",
      "description" : "Sleep Quality Base (WHOQOL-BREF scale to LOINC)"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureMap"
      }],
      "reference" : {
        "reference" : "StructureMap/SmokingStatusQuestionnaireResponseToObservation"
      },
      "name" : "ATHIS-based Smoking Status Q to O",
      "description" : "ATHIS-based Smoking Status Q to O"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureMap"
      }],
      "reference" : {
        "reference" : "StructureMap/StepCountQuestionnaireResponseToObservation"
      },
      "name" : "Step Count Q to O",
      "description" : "Step Count Q to O"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/resource-information",
        "valueString" : "StructureMap"
      }],
      "reference" : {
        "reference" : "StructureMap/WorkSocQuestionnaireResponseToObservation"
      },
      "name" : "Work-SoC Q score to O score",
      "description" : "Work-SoC Q score to O score"
    }],
    "page" : {
      "extension" : [{
        "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
        "valueUrl" : "toc.html"
      }],
      "nameUrl" : "toc.html",
      "title" : "Table of Contents",
      "generation" : "html",
      "page" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "index.html"
        }],
        "nameUrl" : "index.html",
        "title" : "Home",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "background.html"
        }],
        "nameUrl" : "background.html",
        "title" : "Background",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "workflow.html"
        }],
        "nameUrl" : "workflow.html",
        "title" : "Workflow",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "about.html"
        }],
        "nameUrl" : "about.html",
        "title" : "About",
        "generation" : "markdown"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/tools/StructureDefinition/ig-page-name",
          "valueUrl" : "downloads.html"
        }],
        "nameUrl" : "downloads.html",
        "title" : "Downloads",
        "generation" : "markdown"
      }]
    },
    "parameter" : [{
      "code" : "path-resource",
      "value" : "input/capabilities"
    },
    {
      "code" : "path-resource",
      "value" : "input/examples"
    },
    {
      "code" : "path-resource",
      "value" : "input/extensions"
    },
    {
      "code" : "path-resource",
      "value" : "input/models"
    },
    {
      "code" : "path-resource",
      "value" : "input/operations"
    },
    {
      "code" : "path-resource",
      "value" : "input/profiles"
    },
    {
      "code" : "path-resource",
      "value" : "input/resources"
    },
    {
      "code" : "path-resource",
      "value" : "input/vocabulary"
    },
    {
      "code" : "path-resource",
      "value" : "input/maps"
    },
    {
      "code" : "path-resource",
      "value" : "input/testing"
    },
    {
      "code" : "path-resource",
      "value" : "input/history"
    },
    {
      "code" : "path-resource",
      "value" : "fsh-generated/resources"
    },
    {
      "code" : "path-pages",
      "value" : "template/config"
    },
    {
      "code" : "path-pages",
      "value" : "input/images"
    },
    {
      "code" : "path-tx-cache",
      "value" : "input-cache/txcache"
    }]
  }
}

```
