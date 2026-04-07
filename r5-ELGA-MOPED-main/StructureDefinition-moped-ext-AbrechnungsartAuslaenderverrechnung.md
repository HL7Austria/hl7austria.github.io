# ELGA.MOPED\Abrechnungsart Ausländerverrechnung - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Abrechnungsart Ausländerverrechnung**

## Extension: Abrechnungsart Ausländerverrechnung 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/moped-ext-AbrechnungsartAuslaenderverrechnung | *Version*:0.1.0 | |
| Draft as of 2026-04-07 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:AbrechnungsartAuslaenderverrechnung |

Abrechnungsart Ausländerverrechnung

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [MOPED ARKResponse](StructureDefinition-MopedARKResponse.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/moped-ext-AbrechnungsartAuslaenderverrechnung)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-moped-ext-AbrechnungsartAuslaenderverrechnung.csv), [Excel](StructureDefinition-moped-ext-AbrechnungsartAuslaenderverrechnung.xlsx), [Schematron](StructureDefinition-moped-ext-AbrechnungsartAuslaenderverrechnung.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "moped-ext-AbrechnungsartAuslaenderverrechnung",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "https://elga.moped.at/StructureDefinition/moped-ext-AbrechnungsartAuslaenderverrechnung",
  "version" : "0.1.0",
  "name" : "AbrechnungsartAuslaenderverrechnung",
  "title" : "Abrechnungsart Ausländerverrechnung",
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
  "description" : "Abrechnungsart Ausländerverrechnung",
  "fhirVersion" : "5.0.0",
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "https://elga.moped.at/StructureDefinition/MopedARKRequest#Claim"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Abrechnungsart Ausländerverrechnung",
      "definition" : "Abrechnungsart Ausländerverrechnung"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://elga.moped.at/StructureDefinition/moped-ext-AbrechnungsartAuslaenderverrechnung"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://elga.moped.at/ValueSet/AbrechnungsartAuslaenderverrechnungVS"
      }
    }]
  }
}

```
