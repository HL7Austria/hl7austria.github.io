# ELGA.MOPED\MOPED Aufnahme Composition - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MOPED Aufnahme Composition**

## Resource Profile: MOPED Aufnahme Composition ( Experimental ) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/MopedAufnahmeComposition | *Version*:0.1.0 | |
| Draft as of 2026-01-07 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MopedAufnahmeComposition |

 
MOPED Profil der Composition Ressource nach $aufnehmen 

**Usages:**

* Examples for this Profile: [Composition/PJ1CompositionAufnehmen](Composition-PJ1CompositionAufnehmen.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/MopedAufnahmeComposition)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MopedAufnahmeComposition.csv), [Excel](StructureDefinition-MopedAufnahmeComposition.xlsx), [Schematron](StructureDefinition-MopedAufnahmeComposition.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MopedAufnahmeComposition",
  "url" : "https://elga.moped.at/StructureDefinition/MopedAufnahmeComposition",
  "version" : "0.1.0",
  "name" : "MopedAufnahmeComposition",
  "title" : "MOPED Aufnahme Composition",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-01-07T10:11:40+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [
    {
      "name" : "ELGA GmbH",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://elga.gv.at"
        }
      ]
    }
  ],
  "description" : "MOPED Profil der Composition Ressource nach $aufnehmen",
  "fhirVersion" : "5.0.0",
  "mapping" : [
    {
      "identity" : "LKF",
      "uri" : "https://elga.moped.at/mapping/LKF",
      "name" : "LKF"
    },
    {
      "identity" : "KaOrg",
      "uri" : "https://elga.moped.at/mapping/KaOrg",
      "name" : "KaOrg"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Composition",
  "baseDefinition" : "https://elga.moped.at/StructureDefinition/MopedComposition",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Composition",
        "path" : "Composition",
        "constraint" : [
          {
            "key" : "moped-nach-aufnahme-freigegeben-encounter-inprogress",
            "severity" : "error",
            "human" : "Falls der Workflow status 'Aufnahme-freigegeben' ist, dann muss ein MopedEncounter in-progress sein",
            "expression" : "encounter.resolve().ofType(Encounter).where(status = 'in-progress').count() = 1",
            "source" : "https://elga.moped.at/StructureDefinition/MopedAufnahmeComposition"
          }
        ]
      },
      {
        "id" : "Composition.status",
        "path" : "Composition.status",
        "patternCode" : "partial"
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
      }
    ]
  }
}

```
