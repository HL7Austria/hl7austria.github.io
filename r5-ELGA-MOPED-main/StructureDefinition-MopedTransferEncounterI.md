# ELGA.MOPED\MOPED TransferEncounter Intensiv - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MOPED TransferEncounter Intensiv**

## Resource Profile: MOPED TransferEncounter Intensiv 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/MopedTransferEncounterI | *Version*:0.1.0 | |
| Draft as of 2026-03-29 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MopedTransferEncounterI |

 
MOPED Profil der Encounter Ressource für die Verlegung auf Intensivstationen 

**Usages:**

* Refer to this Profile: [MOPED Composition](StructureDefinition-MopedComposition.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/MopedTransferEncounterI)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MopedTransferEncounterI.csv), [Excel](StructureDefinition-MopedTransferEncounterI.xlsx), [Schematron](StructureDefinition-MopedTransferEncounterI.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MopedTransferEncounterI",
  "url" : "https://elga.moped.at/StructureDefinition/MopedTransferEncounterI",
  "version" : "0.1.0",
  "name" : "MopedTransferEncounterI",
  "title" : "MOPED TransferEncounter Intensiv",
  "status" : "draft",
  "date" : "2026-03-29T08:30:46+00:00",
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
  "baseDefinition" : "https://elga.moped.at/StructureDefinition/MopedTransferEncounterS",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Encounter",
      "path" : "Encounter",
      "constraint" : [{
        "key" : "moped-TENC-status-entweder-in-progress-oder-completed",
        "severity" : "error",
        "human" : "Der TENC status muss entweder in-progress oder completed sein",
        "source" : "https://elga.moped.at/StructureDefinition/MopedTransferEncounterI"
      },
      {
        "key" : "moped-verlegen-intensiv-verpflichtendes-abgangsdatum",
        "severity" : "error",
        "human" : "Wenn der TENC.status complete ist, muss es das Abgangsdatum befüllt sein",
        "source" : "https://elga.moped.at/StructureDefinition/MopedTransferEncounterI"
      },
      {
        "key" : "moped-verlegen-intensiv-verpflichtende-abgangsart",
        "severity" : "error",
        "human" : "Wenn der TENC.status complete ist, muss die Abgangsart (dischargeDisposition) befüllt sein",
        "source" : "https://elga.moped.at/StructureDefinition/MopedTransferEncounterI"
      }]
    }]
  }
}

```
