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

* Physical Activity: Daily activity as **Steps per day** (from a [**EHIS PAQ questionnaire**](Questionnaire-StepCountEhisPaqQuestionnaire.md), [**quantity questionnaire**](Questionnaire-StepCountQuantityQuestionnaire.md) and from a [**wearable device as an observation**](StructureDefinition-at-prenudge-stepcount-observation.md))
* **Alcohol consumption** as number of drinks (from a [**questionnaire**](Questionnaire-AlcoholUseQuestionnaire.md) and from an [**observation**](StructureDefinition-at-prenudge-alcoholuse-observation.md))
* **Quality of life** (from a [**questionnaire**](Questionnaire-WhoQolBrefQuestionnaire.md) with a calculated [**score as an observation**](StructureDefinition-at-prenudge-whoqol-bref-score-observation.md))
* **Smoking**: Current smoking/tobacco use status (from a [**questionnaire**](Questionnaire-SmokingStatusQuestionnaire.md) and from an [**observation IPS style**](StructureDefinition-at-prenudge-smokingstatus-observation.md))
* **Sleep** duration and quality 
* Duration - from [**questionnaire**](Questionnaire-SleepDurationQuestionnaire.md) or as an [**observation**](StructureDefinition-at-prenudge-sleep-duration-observation.md)
* Quality - question 16 from the [**WHOQOL-BRE questionnaire**](Questionnaire-WhoQolBrefQuestionnaire.md) or same question 16 from a [**single quesion questionnaire**](Questionnaire-SleepQualityQuestionnaire.md) or as an [**observation**](StructureDefinition-at-prenudge-sleep-quality-observation.md)
 
* Sociodemographic Data: **Highest completed education** (ISCED level) (from a [**questionnaire**](Questionnaire-EducationQuestionnaire.md) and from an [**observation**](StructureDefinition-at-prenudge-education-observation.md))
* For Demo Purposes: **Blood glucose** in mg/dL (from a [**questionnaire**](Questionnaire-BloodGlucoseQuestionnaire.md) and from a [**device as an observation**](StructureDefinition-at-prenudge-bloodglucose-observation.md))

For viewing the full questionnaires use tools like [lhcforms](https://lhcfhirtools.nlm.nih.gov/lhcforms).

Each **questionnaire variant** maps **one-way** to its corresponding **observation variant**. The mappings can be found at [StructureMaps](artifacts.md#terminology-structure-maps) and can be executed with [MaLaC-HD](https://gitlab.com/cdehealth/malac-hd). These transformations will be performed on the server side.

Additional PreNUDGE measurements, also narrow standardized, will be specified analogously to the ones mentioned above, based on feedback from the informative ballot. The following are to be specified:

* Physical Activity: Minutes of moderate physical activity (per week), Minutes of physical activity (per week) (from a questionnaire and from a wearable device as an observation)
* Physical Activity: Number of muscle strengthening exercise sessions (per week) (from a questionnaire and from a wearable device as an observation)
* Physical Activity: Sitting hours (per day) (from a questionnaire from a wearable device as an observation)
* Nutrition: Portions of fruit and vegetables (per day) (from a questionnaire)
* Nutrition: Consumption frequency of sugary and salty foods (per week) (from a questionnaire)
* Psychosocial Factors: Self reported emotional burden (from a questionnaire)
* Psychosocial Factors: Self reported stress (from a questionnaire with a calculated score as an observation)
* Anthropometry: Body Mass Index (kg/m²) (from a questionnaire and from a wearable device as an observation)
* Workability (score per category) (from a questionnaire with a calculated score as an observation)

The following sociodemographic data are provided as patient demographic data, preferably from ID Austria. They are not collected using PreNUDGE questionnaires and are not represented as observations.

* **Date of birth / age**: The date of birth is represented using the mandatory `Patient.birthDate` element in the AT APS Patient profile. Age is derived from `Patient.birthDate` at the relevant point in time and is not stored as a separate PreNUDGE observation. The corresponding ID Austria attribute is `birthdate` (`urn:oid:1.2.40.0.10.2.1.1.55`).
* **Gender**: Administrative gender is represented using the mandatory `Patient.gender` element in the AT APS Patient profile. The corresponding ID Austria attribute is `gender` (`urn:eidgvat:attributes.gender`).

Besides these narrow standardized measurements, **broad standardized measurements** called [**other quantities observations**](StructureDefinition-at-prenudge-observation-other-quantities.md) and [**other not quantities observations**](StructureDefinition-at-prenudge-observation-other-not-quantities.md) are also supported. Please be aware that such broad standardized measurements do not have a corresponding questionnaire.

IG © 2026+
[The PreNUDGE Consortium](https://prenudge.at). Package hl7.at.fhir.prenudge.appdata.r4#0.1.0 based on
[FHIR® 4.0.1](http://hl7.org/fhir/R4/). Generated
2026-06-18

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
  "date" : "2026-06-18T13:38:50+00:00",
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
        "reference" : "StructureDefinition/at-prenudge-observation-other-not-quantities"
      },
      "name" : "AT PreNUDGE Observation Other not Quantities",
      "description" : "This FHIR profile can be used for all the other Observations for PreNUDGE, not beeing an quantity and not fitting the existing narrow standardized observations.",
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
      "description" : "This FHIR profile can be used for all the other Observations for PreNUDGE, beeing quantities and not fitting the existing narrow standardized observations. If some code for specifing a new Observation is missing, please contact prenudge@joanneum.at.",
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
        "valueString" : "Questionnaire"
      }],
      "reference" : {
        "reference" : "Questionnaire/StepCountEhisPaqQuestionnaire"
      },
      "name" : "EHIS-PAQ: Zu-Fuß-Gehen",
      "description" : "The questions Q2 and Q3 from the EHIS-PAQ about the number of days and duration of walking (for transport) in a typical week.",
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
