# ELGA.MOPED\MOPED Encounter LGF - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MOPED Encounter LGF**

## Resource Profile: MOPED Encounter LGF 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/MopedEncounterLGF | *Version*:0.1.0 | |
| Draft as of 2026-03-29 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MopedEncounterLGF |

 
MOPED Profil der Encounter Ressource für die Rolle: LGF 

**Usages:**

* Examples for this Profile: [Encounter/PJ1EncounterLGF](Encounter-PJ1EncounterLGF.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/MopedEncounterLGF)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MopedEncounterLGF.csv), [Excel](StructureDefinition-MopedEncounterLGF.xlsx), [Schematron](StructureDefinition-MopedEncounterLGF.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MopedEncounterLGF",
  "url" : "https://elga.moped.at/StructureDefinition/MopedEncounterLGF",
  "version" : "0.1.0",
  "name" : "MopedEncounterLGF",
  "title" : "MOPED Encounter LGF",
  "status" : "draft",
  "date" : "2026-03-29T16:14:43+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "MOPED Profil der Encounter Ressource für die Rolle: LGF",
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
  "baseDefinition" : "https://elga.moped.at/StructureDefinition/MopedEncounter",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Encounter",
      "path" : "Encounter"
    },
    {
      "id" : "Encounter.identifier:DatensatzID",
      "path" : "Encounter.identifier",
      "sliceName" : "DatensatzID",
      "max" : "0"
    },
    {
      "id" : "Encounter.reason:Ursache",
      "path" : "Encounter.reason",
      "sliceName" : "Ursache",
      "max" : "0"
    }]
  }
}

```
