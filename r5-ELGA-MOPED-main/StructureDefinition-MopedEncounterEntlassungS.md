# ELGA.MOPED\MOPED Encounter Entlassung Stationär - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MOPED Encounter Entlassung Stationär**

## Resource Profile: MOPED Encounter Entlassung Stationär 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/MopedEncounterEntlassungS | *Version*:0.1.0 | |
| Draft as of 2026-04-07 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MopedEncounterEntlassungS |

 
MOPED Profil der Encounter Ressource für die Entlassung im stationären Bereich 

**Usages:**

* Use this Profile: [MOPED Entlassen Bundle KH](StructureDefinition-MopedEntlassenBundle.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/MopedEncounterEntlassungS)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MopedEncounterEntlassungS.csv), [Excel](StructureDefinition-MopedEncounterEntlassungS.xlsx), [Schematron](StructureDefinition-MopedEncounterEntlassungS.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MopedEncounterEntlassungS",
  "url" : "https://elga.moped.at/StructureDefinition/MopedEncounterEntlassungS",
  "version" : "0.1.0",
  "name" : "MopedEncounterEntlassungS",
  "title" : "MOPED Encounter Entlassung Stationär",
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
  "description" : "MOPED Profil der Encounter Ressource für die Entlassung im stationären Bereich",
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
      "id" : "Encounter",
      "path" : "Encounter"
    },
    {
      "id" : "Encounter.status",
      "path" : "Encounter.status",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://elga.moped.at/ValueSet/MopedEncounterStatusEntlassungVS"
      }
    },
    {
      "id" : "Encounter.actualPeriod.end",
      "path" : "Encounter.actualPeriod.end",
      "min" : 1
    },
    {
      "id" : "Encounter.admission.dischargeDisposition",
      "path" : "Encounter.admission.dischargeDisposition",
      "min" : 1
    }]
  }
}

```
