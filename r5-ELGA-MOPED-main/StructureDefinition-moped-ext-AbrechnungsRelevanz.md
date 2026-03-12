# ELGA.MOPED\Medizinische Leistung - Abrechnungsrelevanz - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medizinische Leistung - Abrechnungsrelevanz**

## Extension: Medizinische Leistung - Abrechnungsrelevanz 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/moped-ext-AbrechnungsRelevanz | *Version*:0.1.0 | |
| Draft as of 2026-03-12 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:AbrechnungsRelevanz |

Hier ist anzugeben, ob die medizinische Leistung bei der Bepunktung des ambulanten Besuchs/stationären Aufenthalts (Satzart X01) zu berücksichtigen ist.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [MOPED LKFRequest](StructureDefinition-MopedLKFRequest.md)
* Examples for this Extension: [Claim/PJ1LKFRequest1](Claim-PJ1LKFRequest1.md) and [Claim/PJ2LKFRequest1](Claim-PJ2LKFRequest1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/moped-ext-AbrechnungsRelevanz)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-moped-ext-AbrechnungsRelevanz.csv), [Excel](StructureDefinition-moped-ext-AbrechnungsRelevanz.xlsx), [Schematron](StructureDefinition-moped-ext-AbrechnungsRelevanz.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "moped-ext-AbrechnungsRelevanz",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "https://elga.moped.at/StructureDefinition/moped-ext-AbrechnungsRelevanz",
  "version" : "0.1.0",
  "name" : "AbrechnungsRelevanz",
  "title" : "Medizinische Leistung - Abrechnungsrelevanz",
  "status" : "draft",
  "date" : "2026-03-12T09:42:23+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "Hier ist anzugeben, ob die medizinische Leistung bei der Bepunktung des ambulanten Besuchs/stationären Aufenthalts (Satzart X01) zu berücksichtigen ist.",
  "fhirVersion" : "5.0.0",
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "https://elga.moped.at/StructureDefinition/MopedLKFRequest#Claim.procedure"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Medizinische Leistung - Abrechnungsrelevanz",
      "definition" : "Hier ist anzugeben, ob die medizinische Leistung bei der Bepunktung des ambulanten Besuchs/stationären Aufenthalts (Satzart X01) zu berücksichtigen ist."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://elga.moped.at/StructureDefinition/moped-ext-AbrechnungsRelevanz"
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
        "valueSet" : "https://elga.moped.at/ValueSet/AbrechnungsRelevanzVS"
      }
    }]
  }
}

```
