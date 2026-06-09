# ELGA.MOPED\AT MOPED Encounter Bewegung Intensiv Basis Profil - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT MOPED Encounter Bewegung Intensiv Basis Profil**

## Resource Profile: AT MOPED Encounter Bewegung Intensiv Basis Profil 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/at-moped-encounter-bewegung-intensiv-basis | *Version*:0.1.0 | |
| Draft as of 2026-06-09 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:AtMopedEncounterBewegungIntensivBasis |

 
MOPED Profil der Encounter Ressource für die Verlegung auf Intensivstationen 

**Usages:**

* Refer to this Profile: [AT MOPED Composition generisches Profil](StructureDefinition-at-moped-composition-generisch.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/elga.moped|current/StructureDefinition/StructureDefinition-at-moped-encounter-bewegung-intensiv-basis.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-moped-encounter-bewegung-intensiv-basis.csv), [Excel](StructureDefinition-at-moped-encounter-bewegung-intensiv-basis.xlsx), [Schematron](StructureDefinition-at-moped-encounter-bewegung-intensiv-basis.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-moped-encounter-bewegung-intensiv-basis",
  "url" : "https://elga.moped.at/StructureDefinition/at-moped-encounter-bewegung-intensiv-basis",
  "version" : "0.1.0",
  "name" : "AtMopedEncounterBewegungIntensivBasis",
  "title" : "AT MOPED Encounter Bewegung Intensiv Basis Profil",
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
  "description" : "MOPED Profil der Encounter Ressource für die Verlegung auf Intensivstationen",
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
  "baseDefinition" : "https://elga.moped.at/StructureDefinition/at-moped-encounter-bewegung-stationaer-basis",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Encounter",
      "path" : "Encounter",
      "constraint" : [{
        "key" : "moped-BENC-status-entweder-in-progress-oder-completed",
        "severity" : "error",
        "human" : "Der BENC status muss entweder in-progress oder completed sein",
        "source" : "https://elga.moped.at/StructureDefinition/at-moped-encounter-bewegung-intensiv-basis"
      },
      {
        "key" : "moped-verlegen-intensiv-verpflichtendes-abgangsdatum",
        "severity" : "error",
        "human" : "Wenn der BENC.status complete ist, muss es das Abgangsdatum befüllt sein",
        "source" : "https://elga.moped.at/StructureDefinition/at-moped-encounter-bewegung-intensiv-basis"
      },
      {
        "key" : "moped-verlegen-intensiv-verpflichtende-abgangsart",
        "severity" : "error",
        "human" : "Wenn der BENC.status complete ist, muss die Abgangsart (dischargeDisposition) befüllt sein",
        "source" : "https://elga.moped.at/StructureDefinition/at-moped-encounter-bewegung-intensiv-basis"
      }]
    }]
  }
}

```
