# HL7.AT.FHIR.ELGA.EMED.R4\e-Med Operation für Plan-Read - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **e-Med Operation für Plan-Read**

## OperationDefinition: e-Med Operation für Plan-Read 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/emed/r4/OperationDefinition/AtElgaEmed.List.PlanRead | *Version*:0.1.1 | |
| Draft as of 2026-08-27 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:AtElgaEmed_List_PlanRead |

 
Die $plan-read Operation wird aufgerufen, wenn ein Medikationsplan mit der Intention zu schreiben gelesen wird. 



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "AtElgaEmed.List.PlanRead",
  "url" : "https://fhir.hl7.at/elga/emed/r4/OperationDefinition/AtElgaEmed.List.PlanRead",
  "version" : "0.1.1",
  "name" : "AtElgaEmed_List_PlanRead",
  "title" : "e-Med Operation für Plan-Read",
  "status" : "draft",
  "kind" : "operation",
  "date" : "2026-08-27T15:34:15+00:00",
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
  "description" : "Die $plan-read Operation wird aufgerufen, wenn ein Medikationsplan mit der Intention zu schreiben gelesen wird.",
  "affectsState" : true,
  "code" : "planread",
  "system" : true,
  "type" : true,
  "instance" : false,
  "parameter" : [{
    "name" : "id",
    "use" : "in",
    "min" : 1,
    "max" : "1",
    "documentation" : "Der *id* Parameter dient der Zuordnung des Patienten.",
    "type" : "string"
  },
  {
    "name" : "return",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "documentation" : "Der *return* Parameter gibt gibt den Medikationsplan zurück.",
    "type" : "Resource",
    "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/OperationOutcome"]
  },
  {
    "name" : "return",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "documentation" : "Der *return* Parameter gibt Auskunft über den Erfolg der Operation.",
    "type" : "Bundle",
    "targetProfile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-bundle-medikationsplan"]
  }]
}

```
