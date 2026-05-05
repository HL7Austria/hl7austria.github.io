# ELGA.MOPED\AnzahlVerlegungen - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AnzahlVerlegungen**

## Extension: AnzahlVerlegungen 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/moped-ext-AnzahlVerlegungen | *Version*:0.1.0 | |
| Draft as of 2026-05-05 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:AnzahlVerlegungen |

MOPED Extension für die Anzahl der Verlegungen

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [MOPED Composition](StructureDefinition-MopedComposition.md)
* Examples for this Extension: [Composition/PJ1CompositionAufnehmen](Composition-PJ1CompositionAufnehmen.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/moped-ext-AnzahlVerlegungen)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-moped-ext-AnzahlVerlegungen.csv), [Excel](StructureDefinition-moped-ext-AnzahlVerlegungen.xlsx), [Schematron](StructureDefinition-moped-ext-AnzahlVerlegungen.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "moped-ext-AnzahlVerlegungen",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "https://elga.moped.at/StructureDefinition/moped-ext-AnzahlVerlegungen",
  "version" : "0.1.0",
  "name" : "AnzahlVerlegungen",
  "title" : "AnzahlVerlegungen",
  "status" : "draft",
  "date" : "2026-05-05T07:22:12+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "MOPED Extension für die Anzahl der Verlegungen",
  "fhirVersion" : "5.0.0",
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "https://elga.moped.at/StructureDefinition/MopedComposition#Composition"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "AnzahlVerlegungen",
      "definition" : "MOPED Extension für die Anzahl der Verlegungen"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://elga.moped.at/StructureDefinition/moped-ext-AnzahlVerlegungen"
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
      "id" : "Extension.value[x]:valueUnsignedInt",
      "path" : "Extension.value[x]",
      "sliceName" : "valueUnsignedInt",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "unsignedInt"
      }]
    }]
  }
}

```
