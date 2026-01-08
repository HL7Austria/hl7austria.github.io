# ELGA.MOPED\MOPED Aufnehmen Bundle KH - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MOPED Aufnehmen Bundle KH**

## Resource Profile: MOPED Aufnehmen Bundle KH 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/MopedAufnehmenBundleKH | *Version*:0.1.0 | |
| Draft as of 2025-10-15 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MopedAufnehmenBundleKH |

 
Bundle für die Input-Ressourcen beim Aufnehmen eines Patienten 

**Usages:**

* This Profile is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/MopedAufnehmenBundleKH)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MopedAufnehmenBundleKH.csv), [Excel](StructureDefinition-MopedAufnehmenBundleKH.xlsx), [Schematron](StructureDefinition-MopedAufnehmenBundleKH.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MopedAufnehmenBundleKH",
  "url" : "https://elga.moped.at/StructureDefinition/MopedAufnehmenBundleKH",
  "version" : "0.1.0",
  "name" : "MopedAufnehmenBundleKH",
  "title" : "MOPED Aufnehmen Bundle KH",
  "status" : "draft",
  "date" : "2025-10-15T12:16:02+00:00",
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
  "description" : "Bundle für die Input-Ressourcen beim Aufnehmen eines Patienten",
  "fhirVersion" : "5.0.0",
  "mapping" : [
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 V2 Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "cda",
      "uri" : "http://hl7.org/v3/cda",
      "name" : "CDA (R2)"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "https://elga.moped.at/StructureDefinition/MopedUpdateBundleKH",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Bundle",
        "path" : "Bundle"
      },
      {
        "id" : "Bundle.entry",
        "path" : "Bundle.entry",
        "min" : 4
      },
      {
        "id" : "Bundle.entry:Aufenthalt",
        "path" : "Bundle.entry",
        "sliceName" : "Aufenthalt",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:Aufenthalt.resource",
        "path" : "Bundle.entry.resource",
        "type" : [
          {
            "code" : "Encounter",
            "profile" : [
              "https://elga.moped.at/StructureDefinition/MopedEncounterAufnahmeS"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:Patient",
        "path" : "Bundle.entry",
        "sliceName" : "Patient",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:Diagnosen",
        "path" : "Bundle.entry",
        "sliceName" : "Diagnosen",
        "short" : "Aufnahmediagnose(n)",
        "min" : 1
      },
      {
        "id" : "Bundle.entry:Verlegungen",
        "path" : "Bundle.entry",
        "sliceName" : "Verlegungen",
        "short" : "Station auf die der Patient initial aufgenommen wird und evtl. weitere",
        "min" : 1
      }
    ]
  }
}

```
