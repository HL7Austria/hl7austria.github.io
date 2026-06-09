# ELGA.MOPED\AT MOPED Encounter Aufenthalt/Besuch Ambulant KA Profil - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT MOPED Encounter Aufenthalt/Besuch Ambulant KA Profil**

## Resource Profile: AT MOPED Encounter Aufenthalt/Besuch Ambulant KA Profil 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/at-moped-encounter-besuch-ambulant-KA | *Version*:0.1.0 | |
| Draft as of 2026-06-09 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:AtMopedEncounterBesuchAmbulantKA |

 
TBD 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/elga.moped|current/StructureDefinition/StructureDefinition-at-moped-encounter-besuch-ambulant-KA.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-moped-encounter-besuch-ambulant-KA.csv), [Excel](StructureDefinition-at-moped-encounter-besuch-ambulant-KA.xlsx), [Schematron](StructureDefinition-at-moped-encounter-besuch-ambulant-KA.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-moped-encounter-besuch-ambulant-KA",
  "url" : "https://elga.moped.at/StructureDefinition/at-moped-encounter-besuch-ambulant-KA",
  "version" : "0.1.0",
  "name" : "AtMopedEncounterBesuchAmbulantKA",
  "title" : "AT MOPED Encounter Aufenthalt/Besuch Ambulant KA Profil",
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
  "baseDefinition" : "https://elga.moped.at/StructureDefinition/at-moped-encounter-besuch-ambulant-basis",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Encounter",
      "path" : "Encounter"
    }]
  }
}

```
