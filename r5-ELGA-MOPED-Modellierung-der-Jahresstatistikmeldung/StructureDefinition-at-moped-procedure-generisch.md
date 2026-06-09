# ELGA.MOPED\AT MOPED Procedure generisches Profil - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT MOPED Procedure generisches Profil**

## Resource Profile: AT MOPED Procedure generisches Profil 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/at-moped-procedure-generisch | *Version*:0.1.0 | |
| Draft as of 2026-06-09 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:AtMopedProcedureGenerisch |

 
MOPED generisches Profil der Procedure Ressource für Leistungen 

**Usages:**

* Derived from this Profile: [AT MOPED Procedure Basis Profil](StructureDefinition-at-moped-procedure-basis.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/elga.moped|current/StructureDefinition/StructureDefinition-at-moped-procedure-generisch.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-moped-procedure-generisch.csv), [Excel](StructureDefinition-at-moped-procedure-generisch.xlsx), [Schematron](StructureDefinition-at-moped-procedure-generisch.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-moped-procedure-generisch",
  "url" : "https://elga.moped.at/StructureDefinition/at-moped-procedure-generisch",
  "version" : "0.1.0",
  "name" : "AtMopedProcedureGenerisch",
  "title" : "AT MOPED Procedure generisches Profil",
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
  "description" : "MOPED generisches Profil der Procedure Ressource für Leistungen",
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
        "key" : "moped-externe-Leistung-KA",
        "severity" : "error",
        "human" : "Wird bei performer.actor eine AtMopedOrganizationKA angegeben so muss sich diese unterscheiden von der referenzierten Krankenanstalt in perfomer.onBehalfOf",
        "source" : "https://elga.moped.at/StructureDefinition/at-moped-procedure-generisch"
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
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKAActor"
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
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKAActor"
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
        "targetProfile" : ["https://elga.moped.at/StructureDefinition/at-moped-patient-vbPK-basis",
        "https://elga.moped.at/StructureDefinition/at-moped-patient-klarname-basis"]
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
        "targetProfile" : ["https://elga.moped.at/StructureDefinition/at-moped-encounter-aufenthaltbesuch-generisch"]
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
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKAActor"
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
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKAActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Procedure.performer.actor",
      "short" : "LKF: Funktionscode/Fachgebiet leistungserbringend; LKF: Krankenanstaltennummer leistungserbringend; Referenz auf die Abteilung mit Funktionscode/Fachgebiet leistungserbringend oder die Krankenanstalt mit Krankenanstaltennummer leistungserbringend bei extern erbrachten Leistungen",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://elga.moped.at/StructureDefinition/at-moped-organization-organisationseinheit-KA",
        "https://elga.moped.at/StructureDefinition/at-moped-organization-KA"]
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
        "targetProfile" : ["https://elga.moped.at/StructureDefinition/at-moped-organization-KA"]
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
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKAActor"
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
