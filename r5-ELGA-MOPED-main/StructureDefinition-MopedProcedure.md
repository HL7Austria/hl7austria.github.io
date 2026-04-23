# ELGA.MOPED\MOPED Procedure - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MOPED Procedure**

## Resource Profile: MOPED Procedure 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/MopedProcedure | *Version*:0.1.0 | |
| Draft as of 2026-04-23 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MopedProcedure |

 
MOPED Profil der Procedure Ressource für die LDF-Abrechnung 

**Usages:**

* Use this Profile: [MOPED Input Bundle KH](StructureDefinition-MopedInputBundleKH.md)
* Refer to this Profile: [MOPED Composition](StructureDefinition-MopedComposition.md) and [MOPED LKFRequest](StructureDefinition-MopedLKFRequest.md)
* Examples for this Profile: [Procedure/PJ1Procedure1](Procedure-PJ1Procedure1.md), [Procedure/PJ2Procedure1](Procedure-PJ2Procedure1.md) and [Procedure/PJ2Procedure2](Procedure-PJ2Procedure2.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/MopedProcedure)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MopedProcedure.csv), [Excel](StructureDefinition-MopedProcedure.xlsx), [Schematron](StructureDefinition-MopedProcedure.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MopedProcedure",
  "url" : "https://elga.moped.at/StructureDefinition/MopedProcedure",
  "version" : "0.1.0",
  "name" : "MopedProcedure",
  "title" : "MOPED Procedure",
  "status" : "draft",
  "date" : "2026-04-23T07:59:48+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "MOPED Profil der Procedure Ressource für die LDF-Abrechnung",
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
  "type" : "Procedure",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Procedure",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Procedure",
      "path" : "Procedure",
      "constraint" : [{
        "key" : "moped-externe-Leistung-KH",
        "severity" : "error",
        "human" : "Wird bei performer.actor eine KHOrganization angegeben so muss sich diese unterscheiden von der referenzierten Krankenanstalt in perfomer.onBehalfOf",
        "source" : "https://elga.moped.at/StructureDefinition/MopedProcedure"
      }]
    },
    {
      "id" : "Procedure.extension",
      "path" : "Procedure.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Procedure.extension:Leistungsanzahl",
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
      "path" : "Procedure.extension",
      "sliceName" : "Leistungsanzahl",
      "short" : "LKF: Medizinische Leistung – Anzahl",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://elga.moped.at/StructureDefinition/moped-ext-Leistungsanzahl"]
      }],
      "mapping" : [{
        "identity" : "LKF",
        "map" : "Medizinische Leistung – Anzahl"
      }]
    },
    {
      "id" : "Procedure.category.coding",
      "path" : "Procedure.category.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Procedure.category.coding:MELGruppe",
      "path" : "Procedure.category.coding",
      "sliceName" : "MELGruppe",
      "short" : "MEL Gruppe",
      "min" : 0,
      "max" : "1",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://elga.moped.at/ValueSet/LKFmedizinischeEinzelleistungenVS"
      }
    },
    {
      "id" : "Procedure.category.coding:MELGruppe.system",
      "path" : "Procedure.category.coding.system",
      "min" : 1,
      "patternUri" : "https://elga.moped.at/CodeSystem/LKFmedizinischeEinzelleistungenCS"
    },
    {
      "id" : "Procedure.code",
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
      "path" : "Procedure.code",
      "short" : "LKF: Medizinische Leistung – Code",
      "min" : 1,
      "mapping" : [{
        "identity" : "LKF",
        "map" : "Medizinische Leistung – Code"
      }]
    },
    {
      "id" : "Procedure.code.coding",
      "path" : "Procedure.code.coding",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://elga.moped.at/ValueSet/LKFLeistungskatalogVS"
      }
    },
    {
      "id" : "Procedure.code.coding.system",
      "path" : "Procedure.code.coding.system",
      "patternUri" : "https://termgit.elga.gv.at/CodeSystem/lkat-bmsgpk-2025"
    },
    {
      "id" : "Procedure.subject",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:handle"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedDeviceActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Procedure.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://elga.moped.at/StructureDefinition/MopedPatient"]
      }]
    },
    {
      "id" : "Procedure.encounter",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:handle"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedDeviceActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Procedure.encounter",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://elga.moped.at/StructureDefinition/MopedEncounter"]
      }]
    },
    {
      "id" : "Procedure.occurrence[x]",
      "path" : "Procedure.occurrence[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Procedure.occurrence[x]:occurrenceDateTime",
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
      "path" : "Procedure.occurrence[x]",
      "sliceName" : "occurrenceDateTime",
      "short" : "LKF: Medizinische Leistung – Datum der Erbringung;  LKF: Medizinische Leistung – Uhrzeit der Erbringung",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }],
      "mapping" : [{
        "identity" : "LKF",
        "map" : "Medizinische Leistung – Datum der Erbringung"
      },
      {
        "identity" : "LKF",
        "map" : "Medizinische Leistung – Uhrzeit der Erbringung"
      }]
    },
    {
      "id" : "Procedure.performer",
      "path" : "Procedure.performer",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Procedure.performer.actor",
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
      "path" : "Procedure.performer.actor",
      "short" : "LKF: Funktionscode/Fachgebiet leistungserbringend; LKF: Krankenanstaltennummer leistungserbringend; Referenz auf die Abteilung mit Funktionscode/Fachgebiet leistungserbringend oder die Krankenanstalt mit Krankenanstaltennummer leistungserbringend bei extern erbrachten Leistungen",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://elga.moped.at/StructureDefinition/MopedKHOrganisationseinheit",
        "https://elga.moped.at/StructureDefinition/KHOrganization"]
      }],
      "mapping" : [{
        "identity" : "LKF",
        "map" : "Funktionscode/Fachgebiet leistungserbringend"
      },
      {
        "identity" : "LKF",
        "map" : "Krankenanstaltennummer leistungserbringend"
      }]
    },
    {
      "id" : "Procedure.performer.onBehalfOf",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:handle"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedDeviceActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Procedure.performer.onBehalfOf",
      "short" : "Referenz auf die Krankenanstalt, in der der Patient aufgenommen wurde.",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://elga.moped.at/StructureDefinition/KHOrganization"]
      }]
    },
    {
      "id" : "Procedure.bodySite",
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
      "path" : "Procedure.bodySite",
      "short" : "LKF: Medizinische Leistung – Seitenlokalisation ",
      "max" : "1",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://elga.moped.at/ValueSet/LKFSeitenlokalisationVS"
      },
      "mapping" : [{
        "identity" : "LKF",
        "map" : "Medizinische Leistung – Seitenlokalisation"
      }]
    }]
  }
}

```
