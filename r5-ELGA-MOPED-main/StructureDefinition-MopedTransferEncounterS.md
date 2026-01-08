# ELGA.MOPED\MOPED TransferEncounter Stationär - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MOPED TransferEncounter Stationär**

## Resource Profile: MOPED TransferEncounter Stationär 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/MopedTransferEncounterS | *Version*:0.1.0 | |
| Draft as of 2026-01-07 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MopedTransferEncounterS |

 
MOPED Profil der Encounter Ressource für eine stationäre Verlegung 

**Usages:**

* Derived from this Profile: [MOPED TransferEncounter Intensiv](StructureDefinition-MopedTransferEncounterI.md)
* Refer to this Profile: [MOPED Composition](StructureDefinition-MopedComposition.md)
* Examples for this Profile: [Encounter/PJ1TransferEncounter1](Encounter-PJ1TransferEncounter1.md) and [Encounter/PJ1TransferEncounter1Aufnahme](Encounter-PJ1TransferEncounter1Aufnahme.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/MopedTransferEncounterS)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MopedTransferEncounterS.csv), [Excel](StructureDefinition-MopedTransferEncounterS.xlsx), [Schematron](StructureDefinition-MopedTransferEncounterS.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MopedTransferEncounterS",
  "url" : "https://elga.moped.at/StructureDefinition/MopedTransferEncounterS",
  "version" : "0.1.0",
  "name" : "MopedTransferEncounterS",
  "title" : "MOPED TransferEncounter Stationär",
  "status" : "draft",
  "date" : "2026-01-07T10:11:40+00:00",
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
  "description" : "MOPED Profil der Encounter Ressource für eine stationäre Verlegung",
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
  "baseDefinition" : "https://elga.moped.at/StructureDefinition/MopedTransferEncounter",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
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
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Encounter.admission.extension.extension.value[x]",
        "short" : "LKF: Neugeborenes",
        "min" : 1,
        "mapping" : [
          {
            "identity" : "LKF",
            "map" : "Neugeborenes"
          }
        ]
      }
    ]
  }
}

```
