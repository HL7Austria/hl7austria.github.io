# ELGA.MOPED\VDAS-ID - VersichertenDatenAbfrageService - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **VDAS-ID - VersichertenDatenAbfrageService**

## Extension: VDAS-ID - VersichertenDatenAbfrageService 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/moped-ext-vdasid | *Version*:0.1.0 | |
| Draft as of 2026-05-15 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:VDASID |

Es handelt sich um eine ID, welche bei der VDAS-Abfrage durch die Krankenanstalt vom e-card System vergeben wird und von der Krankenanstalt in der Aufnahme-/Ereignisanzeige mitgeliefert werden kann. Dadurch kann das Abfrageergebnis eindeutig nachvollzogen werden. Das Ergebnis der VDAS-Abfrage ist im ambulanten Bereich für den Krankenversicherungsträger verbindlich. Eine Ablehnung aus versicherungsrechtlichen Gründen ist nicht möglich, sofern die Ereignisanzeige jenem Träger aus der VDAS-Abfrage (inkl. VDAS-ID) übermittelt wurde. Um eine zwischenstaatliche Verrechnung zu ermöglichen ist bei zwischenstaatlichen Fällen eine Ablehnung zulässig.

**Context of Use**

**Usage info**

**Usages:**

* This Extension is not used by any profiles in this Implementation Guide

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/moped-ext-vdasid)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-moped-ext-vdasid.csv), [Excel](StructureDefinition-moped-ext-vdasid.xlsx), [Schematron](StructureDefinition-moped-ext-vdasid.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "moped-ext-vdasid",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "https://elga.moped.at/StructureDefinition/moped-ext-vdasid",
  "version" : "0.1.0",
  "name" : "VDASID",
  "title" : "VDAS-ID - VersichertenDatenAbfrageService",
  "status" : "draft",
  "date" : "2026-05-15T07:39:15+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "Es handelt sich um eine ID, welche bei der VDAS-Abfrage durch die Krankenanstalt vom e-card System vergeben wird und von der Krankenanstalt in der Aufnahme-/Ereignisanzeige mitgeliefert werden kann. Dadurch kann das Abfrageergebnis eindeutig nachvollzogen werden.\nDas Ergebnis der VDAS-Abfrage ist im ambulanten Bereich für den Krankenversicherungsträger verbindlich. Eine Ablehnung aus versicherungsrechtlichen Gründen ist nicht möglich, sofern die Ereignisanzeige jenem Träger aus der VDAS-Abfrage (inkl. VDAS-ID) übermittelt wurde.\nUm eine zwischenstaatliche Verrechnung zu ermöglichen ist bei zwischenstaatlichen Fällen eine Ablehnung zulässig.",
  "fhirVersion" : "5.0.0",
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "https://elga.moped.at/StructureDefinition/MopedCoverage#Coverage"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "VDAS-ID - VersichertenDatenAbfrageService",
      "definition" : "Es handelt sich um eine ID, welche bei der VDAS-Abfrage durch die Krankenanstalt vom e-card System vergeben wird und von der Krankenanstalt in der Aufnahme-/Ereignisanzeige mitgeliefert werden kann. Dadurch kann das Abfrageergebnis eindeutig nachvollzogen werden.\nDas Ergebnis der VDAS-Abfrage ist im ambulanten Bereich für den Krankenversicherungsträger verbindlich. Eine Ablehnung aus versicherungsrechtlichen Gründen ist nicht möglich, sofern die Er- eignisanzeige jenem Träger aus der VDAS-Abfrage (inkl. VDAS-ID) übermittelt wurde.\nUm eine zwischenstaatliche Verrechnung zu ermöglichen ist bei zwischenstaatlichen Fällen eine Ablehnung zulässig."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://elga.moped.at/StructureDefinition/moped-ext-vdasid"
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
