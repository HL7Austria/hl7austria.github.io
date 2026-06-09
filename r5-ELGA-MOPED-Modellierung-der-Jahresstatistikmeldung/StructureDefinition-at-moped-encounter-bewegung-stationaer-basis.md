# ELGA.MOPED\AT MOPED Encounter Bewegung Stationär Basis Profil - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT MOPED Encounter Bewegung Stationär Basis Profil**

## Resource Profile: AT MOPED Encounter Bewegung Stationär Basis Profil 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/at-moped-encounter-bewegung-stationaer-basis | *Version*:0.1.0 | |
| Draft as of 2026-06-09 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:AtMopedEncounterBewegungStationaerBasis |

 
MOPED Profil der Encounter Ressource für eine stationäre Verlegung 

**Usages:**

* Derived from this Profile: [AT MOPED Encounter Bewegung Intensiv Basis Profil](StructureDefinition-at-moped-encounter-bewegung-intensiv-basis.md)
* Refer to this Profile: [AT MOPED Composition generisches Profil](StructureDefinition-at-moped-composition-generisch.md)
* Examples for this Profile: [Encounter/PJ1BewegungsEncounter1](Encounter-PJ1BewegungsEncounter1.md), [Encounter/PJ1BewegungsEncounter1Aufnahme](Encounter-PJ1BewegungsEncounter1Aufnahme.md), [Encounter/PJ2BewegungsEncounter1](Encounter-PJ2BewegungsEncounter1.md), [Encounter/PJ2BewegungsEncounter2](Encounter-PJ2BewegungsEncounter2.md)... Show 3 more, [Encounter/PJ2BewegungsEncounter3](Encounter-PJ2BewegungsEncounter3.md), [Encounter/PJ2BewegungsEncounter4](Encounter-PJ2BewegungsEncounter4.md) and [Encounter/PJ2BewegungsEncounter5](Encounter-PJ2BewegungsEncounter5.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/elga.moped|current/StructureDefinition/StructureDefinition-at-moped-encounter-bewegung-stationaer-basis.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-moped-encounter-bewegung-stationaer-basis.csv), [Excel](StructureDefinition-at-moped-encounter-bewegung-stationaer-basis.xlsx), [Schematron](StructureDefinition-at-moped-encounter-bewegung-stationaer-basis.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-moped-encounter-bewegung-stationaer-basis",
  "url" : "https://elga.moped.at/StructureDefinition/at-moped-encounter-bewegung-stationaer-basis",
  "version" : "0.1.0",
  "name" : "AtMopedEncounterBewegungStationaerBasis",
  "title" : "AT MOPED Encounter Bewegung Stationär Basis Profil",
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
  "description" : "MOPED Profil der Encounter Ressource für eine stationäre Verlegung",
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
  "baseDefinition" : "https://elga.moped.at/StructureDefinition/at-moped-encounter-bewegung-generisch",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Encounter",
      "path" : "Encounter"
    },
    {
      "id" : "Encounter.admission.extension:Altersgruppe",
      "path" : "Encounter.admission.extension",
      "sliceName" : "Altersgruppe"
    },
    {
      "id" : "Encounter.admission.extension:Altersgruppe.extension",
      "path" : "Encounter.admission.extension.extension",
      "min" : 2
    },
    {
      "id" : "Encounter.admission.extension:Altersgruppe.extension:neugeborenes",
      "path" : "Encounter.admission.extension.extension",
      "sliceName" : "neugeborenes",
      "min" : 1
    },
    {
      "id" : "Encounter.admission.extension:Altersgruppe.extension:neugeborenes.value[x]",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKAActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Encounter.admission.extension.extension.value[x]",
      "short" : "LKF: Neugeborenes",
      "min" : 1,
      "mapping" : [{
        "identity" : "LKF",
        "map" : "Neugeborenes"
      }]
    }]
  }
}

```
