# ELGA.MOPED\MOPED TransferEncounter Ambulant - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MOPED TransferEncounter Ambulant**

## Resource Profile: MOPED TransferEncounter Ambulant 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/MopedTransferEncounterA | *Version*:0.1.0 | |
| Draft as of 2026-04-07 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MopedTransferEncounterA |

 
MOPED Profil der Encounter Ressource für ambulante Verlegungen 

**Usages:**

* Refer to this Profile: [MOPED Composition](StructureDefinition-MopedComposition.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/MopedTransferEncounterA)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MopedTransferEncounterA.csv), [Excel](StructureDefinition-MopedTransferEncounterA.xlsx), [Schematron](StructureDefinition-MopedTransferEncounterA.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MopedTransferEncounterA",
  "url" : "https://elga.moped.at/StructureDefinition/MopedTransferEncounterA",
  "version" : "0.1.0",
  "name" : "MopedTransferEncounterA",
  "title" : "MOPED TransferEncounter Ambulant",
  "status" : "draft",
  "date" : "2026-04-07T06:39:12+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "MOPED Profil der Encounter Ressource für ambulante Verlegungen",
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
  "baseDefinition" : "https://elga.moped.at/StructureDefinition/MopedTransferEncounter",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Encounter",
      "path" : "Encounter"
    },
    {
      "id" : "Encounter.identifier",
      "path" : "Encounter.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "type.coding.code"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Encounter.identifier:AufnahmezahlFunktionscodebezogen",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Encounter.identifier",
      "sliceName" : "AufnahmezahlFunktionscodebezogen",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Encounter.identifier:AufnahmezahlFunktionscodebezogen.type",
      "path" : "Encounter.identifier.type",
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://terminology.hl7.org/ValueSet/v2-0203"
      }
    },
    {
      "id" : "Encounter.identifier:AufnahmezahlFunktionscodebezogen.type.coding.code",
      "path" : "Encounter.identifier.type.coding.code",
      "min" : 1,
      "fixedCode" : "VN"
    },
    {
      "id" : "Encounter.identifier:AufnahmezahlFunktionscodebezogen.system",
      "path" : "Encounter.identifier.system",
      "min" : 1
    },
    {
      "id" : "Encounter.identifier:AufnahmezahlFunktionscodebezogen.value",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Encounter.identifier.value",
      "mapping" : [{
        "identity" : "LKF",
        "map" : "Aufnahmezahl – funktionscodebezogen"
      }]
    },
    {
      "id" : "Encounter.subjectStatus",
      "path" : "Encounter.subjectStatus",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://elga.moped.at/ValueSet/AnwesenheitsartVS"
      }
    },
    {
      "id" : "Encounter.admission.extension:Altersgruppe",
      "path" : "Encounter.admission.extension",
      "sliceName" : "Altersgruppe"
    },
    {
      "id" : "Encounter.admission.extension:Altersgruppe.extension:neugeborenes",
      "path" : "Encounter.admission.extension.extension",
      "sliceName" : "neugeborenes",
      "max" : "0"
    }]
  }
}

```
