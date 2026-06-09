# ELGA.MOPED\AT MOPED Composition $aufnehmen Profil - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT MOPED Composition $aufnehmen Profil**

## Resource Profile: AT MOPED Composition $aufnehmen Profil ( Experimental ) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/at-moped-composition-aufnehmen | *Version*:0.1.0 | |
| Draft as of 2026-06-09 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:AtMopedCompositionAufnehmen |

 
MOPED Profil der Composition Ressource nach $aufnehmen 

**Usages:**

* Examples for this Profile: [Composition/PJ1CompositionAufnehmen](Composition-PJ1CompositionAufnehmen.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/elga.moped|current/StructureDefinition/StructureDefinition-at-moped-composition-aufnehmen.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-moped-composition-aufnehmen.csv), [Excel](StructureDefinition-at-moped-composition-aufnehmen.xlsx), [Schematron](StructureDefinition-at-moped-composition-aufnehmen.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-moped-composition-aufnehmen",
  "url" : "https://elga.moped.at/StructureDefinition/at-moped-composition-aufnehmen",
  "version" : "0.1.0",
  "name" : "AtMopedCompositionAufnehmen",
  "title" : "AT MOPED Composition $aufnehmen Profil",
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
  "description" : "MOPED Profil der Composition Ressource nach $aufnehmen",
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
        "key" : "moped-nach-aufnahme-freigegeben-encounter-inprogress",
        "severity" : "error",
        "human" : "Falls der Workflow status 'Aufnahme-freigegeben' ist, dann muss ein MopedEncounter in-progress sein",
        "expression" : "encounter.resolve().ofType(Encounter).where(status = 'in-progress').count() = 1",
        "source" : "https://elga.moped.at/StructureDefinition/at-moped-composition-aufnehmen"
      }]
    },
    {
      "id" : "Composition.status",
      "path" : "Composition.status",
      "patternCode" : "partial"
    },
    {
      "id" : "Composition.encounter",
      "path" : "Composition.encounter",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://elga.moped.at/StructureDefinition/at-moped-encounter-besuch-ambulant-basis",
        "https://elga.moped.at/StructureDefinition/at-moped-encounter-aufenthalt-stationaer-basis"]
      }]
    },
    {
      "id" : "Composition.section:Diagnosen",
      "path" : "Composition.section",
      "sliceName" : "Diagnosen"
    },
    {
      "id" : "Composition.section:Diagnosen.entry",
      "path" : "Composition.section.entry",
      "min" : 1
    }]
  }
}

```
