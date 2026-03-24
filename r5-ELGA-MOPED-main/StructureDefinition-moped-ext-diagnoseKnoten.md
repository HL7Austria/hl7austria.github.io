# ELGA.MOPED\Abrechnung - Knoten - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Abrechnung - Knoten**

## Extension: Abrechnung - Knoten 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/moped-ext-diagnoseKnoten | *Version*:0.1.0 | |
| Draft as of 2026-03-24 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:DiagnoseKnoten |

Lukriert die Patient:innen über eine reguläre Gruppe Punkte, so ist in diesem Datenfeld die entsprechende Knotenbezeichnung einzutragen.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [MOPED ARKRequest](StructureDefinition-MopedARKRequest.md) and [MOPED LKFRequest](StructureDefinition-MopedLKFRequest.md)
* Examples for this Extension: [Claim/LKFRequest42](Claim-LKFRequest42.md), [Claim/PJ1LKFRequest1](Claim-PJ1LKFRequest1.md), [Claim/PJ2LKFRequest1](Claim-PJ2LKFRequest1.md), [ClaimResponse/PJ1LKFResponse1](ClaimResponse-PJ1LKFResponse1.md) and [ClaimResponse/PJ2LKFResponse1](ClaimResponse-PJ2LKFResponse1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/moped-ext-diagnoseKnoten)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-moped-ext-diagnoseKnoten.csv), [Excel](StructureDefinition-moped-ext-diagnoseKnoten.xlsx), [Schematron](StructureDefinition-moped-ext-diagnoseKnoten.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "moped-ext-diagnoseKnoten",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "https://elga.moped.at/StructureDefinition/moped-ext-diagnoseKnoten",
  "version" : "0.1.0",
  "name" : "DiagnoseKnoten",
  "title" : "Abrechnung - Knoten",
  "status" : "draft",
  "date" : "2026-03-24T20:07:54+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "Lukriert die Patient:innen über eine reguläre Gruppe Punkte, so ist in diesem Datenfeld die entsprechende Knotenbezeichnung einzutragen.",
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
      "short" : "\"Abrechnung - Knoten:\" Lukriert die Patient:innen über eine reguläre Gruppe Punkte, so ist in diesem Datenfeld die entsprechende Knotenbezeichnung einzutragen.",
      "definition" : "\"Abrechnung - Knoten:\" Lukriert die Patient:innen über eine reguläre Gruppe Punkte, so ist in diesem Datenfeld die entsprechende Knotenbezeichnung einzutragen."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://elga.moped.at/StructureDefinition/moped-ext-diagnoseKnoten"
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
        "valueSet" : "https://elga.moped.at/ValueSet/LKFAbrechnungsKnotenVS"
      }
    }]
  }
}

```
