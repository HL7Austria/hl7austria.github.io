# HL7.AT.FHIR.ELGA.EMED.R4\e-Med Operation für Plan-Write - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **e-Med Operation für Plan-Write**

## OperationDefinition: e-Med Operation für Plan-Write 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/emed/r4/OperationDefinition/AtElgaEmed.List.PlanWrite | *Version*:0.1.1 | |
| Draft as of 2026-07-29 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:AtElgaEmed_List_PlanWrite |

 
Die $plan-write Operation wird aufgerufen, wenn ein Medikationsplan geschrieben wird. 



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "AtElgaEmed.List.PlanWrite",
  "url" : "https://fhir.hl7.at/elga/emed/r4/OperationDefinition/AtElgaEmed.List.PlanWrite",
  "version" : "0.1.1",
  "name" : "AtElgaEmed_List_PlanWrite",
  "title" : "e-Med Operation für Plan-Write",
  "status" : "draft",
  "kind" : "operation",
  "date" : "2026-07-29T17:39:31+00:00",
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
  "description" : "Die $plan-write Operation wird aufgerufen, wenn ein Medikationsplan geschrieben wird.",
  "affectsState" : true,
  "code" : "write",
  "system" : false,
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
    "name" : "medikationsplan",
    "use" : "in",
    "min" : 1,
    "max" : "1",
    "documentation" : "Der *medikationsplan* Parameter dient der Übermittlung der Medikationsplandaten des Patienten.",
    "type" : "Bundle",
    "targetProfile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-bundle-medikationsplantx"]
  },
  {
    "name" : "return",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "documentation" : "Der *return* Parameter gibt Auskunft über den Erfolg der Operation.",
    "type" : "Resource",
    "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/OperationOutcome"]
  }]
}

```
