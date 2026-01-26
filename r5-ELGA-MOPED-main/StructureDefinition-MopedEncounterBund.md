# ELGA.MOPED\MOPED Encounter Bund - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MOPED Encounter Bund**

## Resource Profile: MOPED Encounter Bund 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/MopedEncounterBund | *Version*:0.1.0 | |
| Draft as of 2026-01-26 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MopedEncounterBund |

 
MOPED Profil der Encounter Ressource für die Rolle: Bund 

**Usages:**

* Examples for this Profile: [Encounter/PJ1EncounterBund](Encounter-PJ1EncounterBund.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/MopedEncounterBund)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MopedEncounterBund.csv), [Excel](StructureDefinition-MopedEncounterBund.xlsx), [Schematron](StructureDefinition-MopedEncounterBund.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MopedEncounterBund",
  "url" : "https://elga.moped.at/StructureDefinition/MopedEncounterBund",
  "version" : "0.1.0",
  "name" : "MopedEncounterBund",
  "title" : "MOPED Encounter Bund",
  "status" : "draft",
  "date" : "2026-01-26T07:03:23+00:00",
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
  "description" : "MOPED Profil der Encounter Ressource für die Rolle: Bund",
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
  "type" : "Encounter",
  "baseDefinition" : "https://elga.moped.at/StructureDefinition/MopedEncounter",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Encounter",
        "path" : "Encounter"
      },
      {
        "id" : "Encounter.identifier:Aufnahmezahl",
        "path" : "Encounter.identifier",
        "sliceName" : "Aufnahmezahl",
        "max" : "0"
      },
      {
        "id" : "Encounter.reason:Ursache",
        "path" : "Encounter.reason",
        "sliceName" : "Ursache",
        "max" : "0"
      }
    ]
  }
}

```
