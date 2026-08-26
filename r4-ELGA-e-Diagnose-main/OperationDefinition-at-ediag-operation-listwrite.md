# HL7.AT.FHIR.ELGA.EDIAG.R4\e-Diagnose Operation für List-Write - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **e-Diagnose Operation für List-Write**

## OperationDefinition: e-Diagnose Operation für List-Write 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/ediag/r4/OperationDefinition/at-ediag-operation-listwrite | *Version*:0.1.0 | |
| Draft as of 2026-08-26 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:AtDiagListWrite |

 
Die $list-write Operation wird aufgerufen, wenn eine Liste geschrieben wird. 



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "at-ediag-operation-listwrite",
  "url" : "https://fhir.hl7.at/elga/ediag/r4/OperationDefinition/at-ediag-operation-listwrite",
  "version" : "0.1.0",
  "name" : "AtDiagListWrite",
  "title" : "e-Diagnose Operation für List-Write",
  "status" : "draft",
  "kind" : "operation",
  "date" : "2026-08-26T13:50:30+00:00",
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
  "description" : "Die $list-write Operation wird aufgerufen, wenn eine Liste geschrieben wird.",
  "affectsState" : true,
  "code" : "write",
  "resource" : ["Condition", "Procedure", "AllergyIntolerance"],
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
    "name" : "list",
    "use" : "in",
    "min" : 1,
    "max" : "1",
    "documentation" : "Der *list* Parameter dient der Übermittlung der Liste des Patienten.",
    "type" : "Bundle"
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
