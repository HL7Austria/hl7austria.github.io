# ELGA.MOPED\Moped QuestionnaireResponse fallbezogen - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Moped QuestionnaireResponse fallbezogen**

## Resource Profile: Moped QuestionnaireResponse fallbezogen 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/MopedQuestionnaireResponseFallbezogen | *Version*:0.1.0 | |
| Draft as of 2026-04-23 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MopedQuestionnaireResponseFallbezogen |

 
MOPED Profil für QuestionnaireResponses die im Kontext von Moped mit Fallbezug erhoben werden 

**Usages:**

* Use this Profile: [MOPED Input Bundle KH](StructureDefinition-MopedInputBundleKH.md)
* Refer to this Profile: [MOPED Composition](StructureDefinition-MopedComposition.md)
* Examples for this Profile: [QuestionnaireResponse/TISSAQuestionnaireResponse](QuestionnaireResponse-TISSAQuestionnaireResponse.md) and [QuestionnaireResponse/Test2SAPS3QuestionnaireResponse1](QuestionnaireResponse-Test2SAPS3QuestionnaireResponse1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/MopedQuestionnaireResponseFallbezogen)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MopedQuestionnaireResponseFallbezogen.csv), [Excel](StructureDefinition-MopedQuestionnaireResponseFallbezogen.xlsx), [Schematron](StructureDefinition-MopedQuestionnaireResponseFallbezogen.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MopedQuestionnaireResponseFallbezogen",
  "url" : "https://elga.moped.at/StructureDefinition/MopedQuestionnaireResponseFallbezogen",
  "version" : "0.1.0",
  "name" : "MopedQuestionnaireResponseFallbezogen",
  "title" : "Moped QuestionnaireResponse fallbezogen",
  "status" : "draft",
  "date" : "2026-04-23T07:59:48+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "MOPED Profil für QuestionnaireResponses die im Kontext von Moped mit Fallbezug erhoben werden",
  "fhirVersion" : "5.0.0",
  "kind" : "resource",
  "abstract" : false,
  "type" : "QuestionnaireResponse",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "QuestionnaireResponse.subject",
      "path" : "QuestionnaireResponse.subject",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://elga.moped.at/StructureDefinition/MopedPatient"]
      }]
    },
    {
      "id" : "QuestionnaireResponse.encounter",
      "path" : "QuestionnaireResponse.encounter",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://elga.moped.at/StructureDefinition/MopedEncounter"]
      }]
    },
    {
      "id" : "QuestionnaireResponse.authored",
      "path" : "QuestionnaireResponse.authored",
      "min" : 1
    },
    {
      "id" : "QuestionnaireResponse.author",
      "path" : "QuestionnaireResponse.author",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://elga.moped.at/StructureDefinition/KHOrganization"]
      }]
    },
    {
      "id" : "QuestionnaireResponse.item",
      "path" : "QuestionnaireResponse.item",
      "min" : 1
    }]
  }
}

```
