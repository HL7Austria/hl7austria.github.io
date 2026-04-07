# ELGA.MOPED\MOPED Encounter Aufnahme Stationär - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MOPED Encounter Aufnahme Stationär**

## Resource Profile: MOPED Encounter Aufnahme Stationär 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/MopedEncounterAufnahmeS | *Version*:0.1.0 | |
| Draft as of 2026-04-07 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MopedEncounterAufnahmeS |

 
MOPED Profil der Encounter Ressource für die Aufnahme im stationären Bereich 

**Usages:**

* Use this Profile: [MOPED Aufnehmen Bundle KH](StructureDefinition-MopedAufnehmenBundleKH.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/MopedEncounterAufnahmeS)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MopedEncounterAufnahmeS.csv), [Excel](StructureDefinition-MopedEncounterAufnahmeS.xlsx), [Schematron](StructureDefinition-MopedEncounterAufnahmeS.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MopedEncounterAufnahmeS",
  "url" : "https://elga.moped.at/StructureDefinition/MopedEncounterAufnahmeS",
  "version" : "0.1.0",
  "name" : "MopedEncounterAufnahmeS",
  "title" : "MOPED Encounter Aufnahme Stationär",
  "status" : "draft",
  "date" : "2026-04-07T11:10:24+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "MOPED Profil der Encounter Ressource für die Aufnahme im stationären Bereich",
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
  "type" : "Encounter",
  "baseDefinition" : "https://elga.moped.at/StructureDefinition/MopedEncounterS",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Encounter.status",
      "path" : "Encounter.status",
      "patternCode" : "in-progress"
    }]
  }
}

```
