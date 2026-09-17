# HL7.AT.FHIR.ELGA.EDIAG.R4\AT e-Diagnose Condition Code - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT e-Diagnose Condition Code**

## ValueSet: AT e-Diagnose Condition Code (Experimental) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/ediag/r4/ValueSet/at-ediag-condition-code | *Version*:0.1.0 | |
| Active as of 2026-09-17 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:AtEDiagConditionCode |

 
Value-Set für die Codierung von Diagnosen. 

 **References** 

* [AT ELGA e-Diagnose Condition](StructureDefinition-at-elga-ediag-condition.md)

Der Inhalt dieses Value-Sets bildet alle SNOMED CT Konzepte ab, die das [e-Health Codierservice](https://codierservice.ehealth.gv.at/) als Ergebnis einer Eingabe haben könnte.

Aktuell werden **alle** Klinisch relevante Erscheinungen zugelassen. Auf Basis des Codierservice wird diese Menge vermutlich noch reduziert.

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "at-ediag-condition-code",
  "url" : "https://fhir.hl7.at/elga/ediag/r4/ValueSet/at-ediag-condition-code",
  "version" : "0.1.0",
  "name" : "AtEDiagConditionCode",
  "title" : "AT e-Diagnose Condition Code",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-09-17T12:50:52+00:00",
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
  "description" : "Value-Set für die Codierung von Diagnosen.",
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "404684003"
      }]
    }]
  }
}

```
