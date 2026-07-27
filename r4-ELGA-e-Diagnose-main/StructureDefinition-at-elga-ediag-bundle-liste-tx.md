# HL7.AT.FHIR.ELGA.EDIAG.R4\AT ELGA e-Diagnose Transaction Bundle - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT ELGA e-Diagnose Transaction Bundle**

## Resource Profile: AT ELGA e-Diagnose Transaction Bundle 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-bundle-liste-tx | *Version*:0.1.0 | |
| Draft as of 2026-07-27 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:AtEdiagBundleListeTx |

 
Das Bundle vom Typ Transaction dient dem schreibenden Zugriff auf die Liste bestehend aus und klinischen KOntextressourcen 

**Usages:**

* Examples for this Profile: [Bundle/At-Ediag-Journey-01-Bundle-Liste-Tx](Bundle-At-Ediag-Journey-01-Bundle-Liste-Tx.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.elga.ediag.r4|current/StructureDefinition/StructureDefinition-at-elga-ediag-bundle-liste-tx.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-elga-ediag-bundle-liste-tx.csv), [Excel](StructureDefinition-at-elga-ediag-bundle-liste-tx.xlsx), [Schematron](StructureDefinition-at-elga-ediag-bundle-liste-tx.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-elga-ediag-bundle-liste-tx",
  "url" : "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-bundle-liste-tx",
  "version" : "0.1.0",
  "name" : "AtEdiagBundleListeTx",
  "title" : "AT ELGA e-Diagnose Transaction Bundle",
  "status" : "draft",
  "date" : "2026-07-27T08:58:26+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "http://elga.gv.at"
    }]
  },
  {
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at",
      "use" : "work"
    }]
  }],
  "description" : "Das Bundle vom Typ Transaction dient dem schreibenden Zugriff auf die Liste bestehend aus und klinischen KOntextressourcen",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
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
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Bundle",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Bundle",
      "path" : "Bundle"
    },
    {
      "id" : "Bundle.type",
      "path" : "Bundle.type",
      "short" : "Art des Bundles. Für schreibenden Zugriff.",
      "patternCode" : "transaction",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.timestamp",
      "path" : "Bundle.timestamp",
      "short" : "Zeitpunkt der Erstellung des Bundles.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry",
      "path" : "Bundle.entry",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "resource"
        }],
        "ordered" : true,
        "rules" : "closed"
      },
      "min" : 1
    },
    {
      "id" : "Bundle.entry:list",
      "path" : "Bundle.entry",
      "sliceName" : "list",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Bundle.entry:list.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "List",
        "profile" : ["https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-list"]
      }]
    },
    {
      "id" : "Bundle.entry:condition",
      "path" : "Bundle.entry",
      "sliceName" : "condition",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:condition.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "Condition",
        "profile" : ["https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-condition"]
      }]
    },
    {
      "id" : "Bundle.entry:procedure",
      "path" : "Bundle.entry",
      "sliceName" : "procedure",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:procedure.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "Procedure",
        "profile" : ["https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-procedure"]
      }]
    },
    {
      "id" : "Bundle.entry:allergyIntolerance",
      "path" : "Bundle.entry",
      "sliceName" : "allergyIntolerance",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:allergyIntolerance.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "AllergyIntolerance",
        "profile" : ["https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-allergyintolerance"]
      }]
    }]
  }
}

```
