# ELGA.MOPED\MOPED Update Composition - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MOPED Update Composition**

## Resource Profile: MOPED Update Composition ( Experimental ) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/MopedUpdateComposition | *Version*:0.1.0 | |
| Draft as of 2026-04-23 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MopedUpdateComposition |

 
MOPED Profil der Composition Ressource nach $update 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/MopedUpdateComposition)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MopedUpdateComposition.csv), [Excel](StructureDefinition-MopedUpdateComposition.xlsx), [Schematron](StructureDefinition-MopedUpdateComposition.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MopedUpdateComposition",
  "url" : "https://elga.moped.at/StructureDefinition/MopedUpdateComposition",
  "version" : "0.1.0",
  "name" : "MopedUpdateComposition",
  "title" : "MOPED Update Composition",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-04-23T07:59:48+00:00",
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
  "baseDefinition" : "https://elga.moped.at/StructureDefinition/MopedComposition",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Composition",
      "path" : "Composition",
      "constraint" : [{
        "key" : "moped-Leistung-Diagnose-erfassen-TBD",
        "severity" : "error",
        "human" : "TBD",
        "source" : "https://elga.moped.at/StructureDefinition/MopedUpdateComposition"
      },
      {
        "key" : "moped-erfassen-stationaer-leistung-z-seitenlokalisation",
        "severity" : "error",
        "human" : "Bei stationären Fällen muss bei Leistungen mit Leistungseinheit C verpflichtend die Seitenlokalistion befüllt werden.",
        "source" : "https://elga.moped.at/StructureDefinition/MopedUpdateComposition"
      },
      {
        "key" : "moped-erfassen-entweder-funktionscode-oder-KANummer-extern",
        "severity" : "error",
        "human" : "Entweder der Funktionscode leistungserbringend oder die KANummer leistungserbringend muss befüllt sein aber nicht beides. (KANummer nur bei extern erbrachten Leistungen).",
        "source" : "https://elga.moped.at/StructureDefinition/MopedUpdateComposition"
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
