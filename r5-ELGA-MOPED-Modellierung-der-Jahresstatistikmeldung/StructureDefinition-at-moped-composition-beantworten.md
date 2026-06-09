# ELGA.MOPED\AT MOPED Composition $beantworten Profil - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT MOPED Composition $beantworten Profil**

## Resource Profile: AT MOPED Composition $beantworten Profil ( Experimental ) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/at-moped-composition-beantworten | *Version*:0.1.0 | |
| Draft as of 2026-06-09 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:AtMopedCompositionBeantworten |

 
MOPED Profil der Composition Ressource nach $beantworten 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/elga.moped|current/StructureDefinition/StructureDefinition-at-moped-composition-beantworten.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-moped-composition-beantworten.csv), [Excel](StructureDefinition-at-moped-composition-beantworten.xlsx), [Schematron](StructureDefinition-at-moped-composition-beantworten.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-moped-composition-beantworten",
  "url" : "https://elga.moped.at/StructureDefinition/at-moped-composition-beantworten",
  "version" : "0.1.0",
  "name" : "AtMopedCompositionBeantworten",
  "title" : "AT MOPED Composition $beantworten Profil",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-06-09T11:53:00+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "MOPED Profil der Composition Ressource nach $beantworten",
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "LKF",
    "uri" : "https://elga.moped.at/mapping/LKF",
    "name" : "LKF"
  },
  {
    "identity" : "KaOrg",
    "uri" : "https://elga.moped.at/mapping/KaOrg",
    "name" : "KaOrg"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Composition",
  "baseDefinition" : "https://elga.moped.at/StructureDefinition/at-moped-composition-generisch",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Composition",
      "path" : "Composition",
      "constraint" : [{
        "key" : "moped-beantworten-TBD",
        "severity" : "error",
        "human" : "TBD",
        "source" : "https://elga.moped.at/StructureDefinition/at-moped-composition-beantworten"
      }]
    },
    {
      "id" : "Composition.status",
      "path" : "Composition.status",
      "patternCode" : "partial"
    },
    {
      "id" : "Composition.section",
      "path" : "Composition.section",
      "min" : 4
    },
    {
      "id" : "Composition.section:zustaendigeSV",
      "path" : "Composition.section",
      "sliceName" : "zustaendigeSV",
      "min" : 1
    },
    {
      "id" : "Composition.section:VAEResponses",
      "path" : "Composition.section",
      "sliceName" : "VAEResponses",
      "min" : 1,
      "max" : "1"
    }]
  }
}

```
