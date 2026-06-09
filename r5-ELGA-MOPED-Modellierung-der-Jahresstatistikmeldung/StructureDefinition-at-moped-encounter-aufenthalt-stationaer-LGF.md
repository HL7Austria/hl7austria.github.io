# ELGA.MOPED\AT MOPED Encounter Aufenthalt/Besuch Stationär LGF Profil - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT MOPED Encounter Aufenthalt/Besuch Stationär LGF Profil**

## Resource Profile: AT MOPED Encounter Aufenthalt/Besuch Stationär LGF Profil 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/at-moped-encounter-aufenthalt-stationaer-LGF | *Version*:0.1.0 | |
| Draft as of 2026-06-09 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:AtMopedEncounterAufenthaltStationaerLGF |

 
TBD 

**Usages:**

* Examples for this Profile: [Encounter/PJ1EncounterLGF](Encounter-PJ1EncounterLGF.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/elga.moped|current/StructureDefinition/StructureDefinition-at-moped-encounter-aufenthalt-stationaer-LGF.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-moped-encounter-aufenthalt-stationaer-LGF.csv), [Excel](StructureDefinition-at-moped-encounter-aufenthalt-stationaer-LGF.xlsx), [Schematron](StructureDefinition-at-moped-encounter-aufenthalt-stationaer-LGF.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-moped-encounter-aufenthalt-stationaer-LGF",
  "url" : "https://elga.moped.at/StructureDefinition/at-moped-encounter-aufenthalt-stationaer-LGF",
  "version" : "0.1.0",
  "name" : "AtMopedEncounterAufenthaltStationaerLGF",
  "title" : "AT MOPED Encounter Aufenthalt/Besuch Stationär LGF Profil",
  "status" : "draft",
  "date" : "2026-06-09T11:53:00+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "TBD",
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
  "baseDefinition" : "https://elga.moped.at/StructureDefinition/at-moped-encounter-aufenthalt-stationaer-basis",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Encounter",
      "path" : "Encounter"
    }]
  }
}

```
