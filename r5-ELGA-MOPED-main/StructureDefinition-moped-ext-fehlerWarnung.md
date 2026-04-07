# ELGA.MOPED\Error/Warning - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Error/Warning**

## Extension: Error/Warning 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/moped-ext-fehlerWarnung | *Version*:0.1.0 | |
| Draft as of 2026-04-07 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:FehlerWarnung |

MOPED Extension für akzeptierte Errors und Warnings

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [MOPED LKFRequest](StructureDefinition-MopedLKFRequest.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/moped-ext-fehlerWarnung)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-moped-ext-fehlerWarnung.csv), [Excel](StructureDefinition-moped-ext-fehlerWarnung.xlsx), [Schematron](StructureDefinition-moped-ext-fehlerWarnung.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "moped-ext-fehlerWarnung",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "https://elga.moped.at/StructureDefinition/moped-ext-fehlerWarnung",
  "version" : "0.1.0",
  "name" : "FehlerWarnung",
  "title" : "Error/Warning",
  "status" : "draft",
  "date" : "2026-04-07T11:10:24+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "MOPED Extension für akzeptierte Errors und Warnings",
  "fhirVersion" : "5.0.0",
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "https://elga.moped.at/StructureDefinition/MopedLKFRequest#Claim"
  },
  {
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
      "short" : "Error/Warning",
      "definition" : "MOPED Extension für akzeptierte Errors und Warnings"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "min" : 2
    },
    {
      "id" : "Extension.extension:ErrorWert",
      "path" : "Extension.extension",
      "sliceName" : "ErrorWert",
      "short" : "Error/Warning - Wert",
      "definition" : "In dieses Datenfeld ist die Ausprägung des unplausiblen/hinweisbezogenen Wertes einzutragen.",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:ErrorWert.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:ErrorWert.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "ErrorWert"
    },
    {
      "id" : "Extension.extension:ErrorWert.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Extension.extension:ErrorCode",
      "path" : "Extension.extension",
      "sliceName" : "ErrorCode",
      "short" : "Error/Warning - Code",
      "definition" : "In dieses Datenfeld ist der entsprechende Error-/Warning-/Hinweis-Code des unplausiblen/hinweisbezogenen Wertes einzutragen.",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:ErrorCode.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:ErrorCode.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "ErrorCode"
    },
    {
      "id" : "Extension.extension:ErrorCode.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://elga.moped.at/ValueSet/EWCodes2025VS"
      }
    },
    {
      "id" : "Extension.extension:ErrorKommentar",
      "path" : "Extension.extension",
      "sliceName" : "ErrorKommentar",
      "short" : "Error/Warning - Kommentar",
      "definition" : "In diesem Datenfeld sind die akzeptierten Unplausibilitäten/Hinweise zu begründen.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:ErrorKommentar.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:ErrorKommentar.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "ErrorKommentar"
    },
    {
      "id" : "Extension.extension:ErrorKommentar.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://elga.moped.at/StructureDefinition/moped-ext-fehlerWarnung"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
