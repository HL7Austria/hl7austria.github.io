# ELGA.MOPED\AT MOPED Composition $update Profil - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT MOPED Composition $update Profil**

## Resource Profile: AT MOPED Composition $update Profil ( Experimental ) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/at-moped-composition-update | *Version*:0.1.0 | |
| Draft as of 2026-06-09 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:AtMopedCompositionUpdate |

 
MOPED Profil der Composition Ressource nach $update 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/elga.moped|current/StructureDefinition/StructureDefinition-at-moped-composition-update.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-moped-composition-update.csv), [Excel](StructureDefinition-at-moped-composition-update.xlsx), [Schematron](StructureDefinition-at-moped-composition-update.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-moped-composition-update",
  "url" : "https://elga.moped.at/StructureDefinition/at-moped-composition-update",
  "version" : "0.1.0",
  "name" : "AtMopedCompositionUpdate",
  "title" : "AT MOPED Composition $update Profil",
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
  "description" : "MOPED Profil der Composition Ressource nach $update",
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
        "key" : "moped-Leistung-Diagnose-erfassen-TBD",
        "severity" : "error",
        "human" : "TBD",
        "source" : "https://elga.moped.at/StructureDefinition/at-moped-composition-update"
      },
      {
        "key" : "moped-erfassen-stationaer-leistung-z-seitenlokalisation",
        "severity" : "error",
        "human" : "Bei stationären Fällen muss bei Leistungen mit Leistungseinheit C verpflichtend die Seitenlokalistion befüllt werden.",
        "source" : "https://elga.moped.at/StructureDefinition/at-moped-composition-update"
      },
      {
        "key" : "moped-erfassen-entweder-funktionscode-oder-KANummer-extern",
        "severity" : "error",
        "human" : "Entweder der Funktionscode leistungserbringend oder die KANummer leistungserbringend muss befüllt sein aber nicht beides. (KANummer nur bei extern erbrachten Leistungen).",
        "source" : "https://elga.moped.at/StructureDefinition/at-moped-composition-update"
      }]
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
    }]
  }
}

```
