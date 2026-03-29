# ELGA.MOPED\Rechnungsnummer der Krankenanstalt bzw. des Landesgesundheitsfonds - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Rechnungsnummer der Krankenanstalt bzw. des Landesgesundheitsfonds**

## Extension: Rechnungsnummer der Krankenanstalt bzw. des Landesgesundheitsfonds 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/moped-ext-RechnungsnummerKHLGF | *Version*:0.1.0 | |
| Draft as of 2026-03-29 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:RechnungsnummerKHLGF |

MOPED Extension für die Rechnungsnummer der Krankenanstalt bzw. des Landesgesundheitsfonds

**Context of Use**

**Usage info**

**Usages:**

* This Extension is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/moped-ext-RechnungsnummerKHLGF)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-moped-ext-RechnungsnummerKHLGF.csv), [Excel](StructureDefinition-moped-ext-RechnungsnummerKHLGF.xlsx), [Schematron](StructureDefinition-moped-ext-RechnungsnummerKHLGF.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "moped-ext-RechnungsnummerKHLGF",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "https://elga.moped.at/StructureDefinition/moped-ext-RechnungsnummerKHLGF",
  "version" : "0.1.0",
  "name" : "RechnungsnummerKHLGF",
  "title" : "Rechnungsnummer der Krankenanstalt bzw. des Landesgesundheitsfonds",
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
  "description" : "MOPED Extension für die Rechnungsnummer der Krankenanstalt bzw. des Landesgesundheitsfonds",
  "fhirVersion" : "5.0.0",
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "https://elga.moped.at/StructureDefinition/MopedLKFResponse#ClaimResponse"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Rechnungsnummer der Krankenanstalt bzw. des Landesgesundheitsfonds",
      "definition" : "MOPED Extension für die Rechnungsnummer der Krankenanstalt bzw. des Landesgesundheitsfonds"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://elga.moped.at/StructureDefinition/moped-ext-RechnungsnummerKHLGF"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
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
      "id" : "Extension.value[x]:valueString",
      "path" : "Extension.value[x]",
      "sliceName" : "valueString",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
