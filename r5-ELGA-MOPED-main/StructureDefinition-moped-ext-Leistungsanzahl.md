# ELGA.MOPED\Leistung - Anzahl - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Leistung - Anzahl**

## Extension: Leistung - Anzahl 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/moped-ext-Leistungsanzahl | *Version*:0.1.0 | |
| Draft as of 2026-04-29 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:Leistungsanzahl |

MOPED Extension für die Anzahl der zu einem Zeitpunkt erbrachten Leistungen

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [MOPED Procedure](StructureDefinition-MopedProcedure.md)
* Examples for this Extension: [Procedure/PJ1Procedure1](Procedure-PJ1Procedure1.md), [Procedure/PJ2Procedure1](Procedure-PJ2Procedure1.md) and [Procedure/PJ2Procedure2](Procedure-PJ2Procedure2.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/moped-ext-Leistungsanzahl)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-moped-ext-Leistungsanzahl.csv), [Excel](StructureDefinition-moped-ext-Leistungsanzahl.xlsx), [Schematron](StructureDefinition-moped-ext-Leistungsanzahl.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "moped-ext-Leistungsanzahl",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "https://elga.moped.at/StructureDefinition/moped-ext-Leistungsanzahl",
  "version" : "0.1.0",
  "name" : "Leistungsanzahl",
  "title" : "Leistung - Anzahl",
  "status" : "draft",
  "date" : "2026-04-29T09:14:27+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "MOPED Extension für die Anzahl der zu einem Zeitpunkt erbrachten Leistungen",
  "fhirVersion" : "5.0.0",
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "https://elga.moped.at/StructureDefinition/MopedProcedure#Procedure"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Leistung - Anzahl",
      "definition" : "MOPED Extension für die Anzahl der zu einem Zeitpunkt erbrachten Leistungen"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://elga.moped.at/StructureDefinition/moped-ext-Leistungsanzahl"
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
