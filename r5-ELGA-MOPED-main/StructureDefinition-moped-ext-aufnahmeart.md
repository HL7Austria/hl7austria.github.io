# ELGA.MOPED\Aufnahmeart - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Aufnahmeart**

## Extension: Aufnahmeart 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/moped-ext-aufnahmeart | *Version*:0.1.0 | |
| Draft as of 2026-03-01 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:Aufnahmeart |

MOPED Extension für die Aufnahmeart.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [MOPED Encounter](StructureDefinition-MopedEncounter.md)
* Examples for this Extension: [Encounter/Encounter42](Encounter-Encounter42.md), [Encounter/PJ1Encounter](Encounter-PJ1Encounter.md), [Encounter/PJ1EncounterAufnahme](Encounter-PJ1EncounterAufnahme.md), [Encounter/PJ1EncounterBasis](Encounter-PJ1EncounterBasis.md)... Show 4 more, [Encounter/PJ1EncounterBund](Encounter-PJ1EncounterBund.md), [Encounter/PJ1EncounterLGF](Encounter-PJ1EncounterLGF.md), [Encounter/PJ1EncounterSV](Encounter-PJ1EncounterSV.md) and [Encounter/PJ2Encounter](Encounter-PJ2Encounter.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/moped-ext-aufnahmeart)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-moped-ext-aufnahmeart.csv), [Excel](StructureDefinition-moped-ext-aufnahmeart.xlsx), [Schematron](StructureDefinition-moped-ext-aufnahmeart.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "moped-ext-aufnahmeart",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "https://elga.moped.at/StructureDefinition/moped-ext-aufnahmeart",
  "version" : "0.1.0",
  "name" : "Aufnahmeart",
  "title" : "Aufnahmeart",
  "status" : "draft",
  "date" : "2026-03-01T19:57:07+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "MOPED Extension für die Aufnahmeart.",
  "fhirVersion" : "5.0.0",
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "https://elga.moped.at/StructureDefinition/MopedEncounter#Encounter.admission"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Aufnahmeart",
      "definition" : "MOPED Extension für die Aufnahmeart."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://elga.moped.at/StructureDefinition/moped-ext-aufnahmeart"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "Coding"
      }],
      "binding" : {
        "strength" : "required",
        "description" : "Code für die Art der Aufnahme",
        "valueSet" : "https://elga.moped.at/ValueSet/AufnahmeartVS"
      }
    }]
  }
}

```
