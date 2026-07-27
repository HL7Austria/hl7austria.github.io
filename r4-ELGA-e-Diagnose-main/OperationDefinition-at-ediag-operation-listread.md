# HL7.AT.FHIR.ELGA.EDIAG.R4\e-Diagnose Operation für List-Read - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **e-Diagnose Operation für List-Read**

## OperationDefinition: e-Diagnose Operation für List-Read 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/ediag/r4/OperationDefinition/at-ediag-operation-listread | *Version*:0.1.0 | |
| Draft as of 2026-07-27 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:AtEdiagListRead |

 
Die $list-read Operation wird aufgerufen, wenn eine Liste mit der Intention zu schreiben gelesen wird. 



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "at-ediag-operation-listread",
  "url" : "https://fhir.hl7.at/elga/ediag/r4/OperationDefinition/at-ediag-operation-listread",
  "version" : "0.1.0",
  "name" : "AtEdiagListRead",
  "title" : "e-Diagnose Operation für List-Read",
  "status" : "draft",
  "kind" : "operation",
  "date" : "2026-07-27T07:43:34+00:00",
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
  "description" : "Die $list-read Operation wird aufgerufen, wenn eine Liste mit der Intention zu schreiben gelesen wird.",
  "affectsState" : true,
  "code" : "list-read",
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
    "name" : "return",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "documentation" : "Der *return* Parameter gibt Auskunft über den Erfolg der Operation.",
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
    "targetProfile" : ["https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-bundle-liste-cl"]
  }]
}

```
