# HL7.AT.FHIR.ELGA.EMED.R4\e-Med Operation für Write des Medikationsplans - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **e-Med Operation für Write des Medikationsplans**

## OperationDefinition: e-Med Operation für Write des Medikationsplans 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/emed/r4/OperationDefinition/AtEmed.List.Write | *Version*:0.1.1 | |
| Draft as of 2026-04-01 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:AtEmed_List_Write |

 
Die $write Operation wird aufgerufen, wenn ein Medikationsplan geschrieben wird. 



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "AtEmed.List.Write",
  "url" : "https://fhir.hl7.at/elga/emed/r4/OperationDefinition/AtEmed.List.Write",
  "version" : "0.1.1",
  "name" : "AtEmed_List_Write",
  "title" : "e-Med Operation für Write des Medikationsplans",
  "status" : "draft",
  "kind" : "operation",
  "date" : "2026-04-01T13:59:59+00:00",
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
  "description" : "Die $write Operation wird aufgerufen, wenn ein Medikationsplan geschrieben wird.",
  "affectsState" : true,
  "code" : "write",
  "system" : false,
  "type" : true,
  "instance" : false,
  "parameter" : [{
    "name" : "bpkGH",
    "use" : "in",
    "min" : 1,
    "max" : "1",
    "documentation" : "Der *bpkGH* Parameter dient der Zurordnung des Patienten.",
    "type" : "string"
  },
  {
    "name" : "medikationsplan",
    "use" : "in",
    "min" : 1,
    "max" : "1",
    "documentation" : "Der *medikationsplan* Parameter dient der Übermittlung der Medikationsplandaten des Patienten.",
    "type" : "Bundle",
    "targetProfile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-bundle-tx-medikationsplan"]
  },
  {
    "name" : "return",
    "use" : "out",
    "min" : 1,
    "max" : "1",
    "documentation" : "Der *return* Parameter gibt Auskunft über den Erfolg der Operation.",
    "type" : "Resource",
    "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/OperationOutcome"]
  }]
}

```
