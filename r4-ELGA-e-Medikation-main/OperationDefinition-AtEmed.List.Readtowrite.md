# HL7.AT.FHIR.ELGA.EMED.R4\e-Med Operation für Read-to-Write - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **e-Med Operation für Read-to-Write**

## OperationDefinition: e-Med Operation für Read-to-Write 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/emed/r4/OperationDefinition/AtEmed.List.Readtowrite | *Version*:0.1.1 | |
| Draft as of 2026-05-27 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:AtEmed_List_Readtowrite |

 
Die $readtowrite Operation wird aufgerufen, wenn ein Medikationsplan mit der Intention zu schreiben gelesen wird. 

Beim Ausliefern des Collection Bundles werden folgende List.entry.flags vom Server automatisch geändert:

* von new zu unchangened
* von changed zu unchangened
* (unchanged bleib gleich)

Diese Collection wird nicht als neue Listenversion persistiert, sondern nur als Ergebnis der Operation zurückgeliefert.

Entries die vor dem Aufruf das Flag removed haben, werden aus der Liste entfernt.



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "AtEmed.List.Readtowrite",
  "url" : "https://fhir.hl7.at/elga/emed/r4/OperationDefinition/AtEmed.List.Readtowrite",
  "version" : "0.1.1",
  "name" : "AtEmed_List_Readtowrite",
  "title" : "e-Med Operation für Read-to-Write",
  "status" : "draft",
  "kind" : "operation",
  "date" : "2026-05-27T13:46:49+00:00",
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
  "description" : "Die $readtowrite Operation wird aufgerufen, wenn ein Medikationsplan mit der Intention zu schreiben gelesen wird.",
  "affectsState" : true,
  "code" : "readtowrite",
  "system" : true,
  "type" : true,
  "instance" : false,
  "parameter" : [{
    "name" : "id",
    "use" : "in",
    "min" : 1,
    "max" : "1",
    "documentation" : "Der *id* Parameter dient der Zurordnung des Patienten.",
    "type" : "string"
  },
  {
    "name" : "return",
    "use" : "out",
    "min" : 1,
    "max" : "1",
    "documentation" : "Der *return* Parameter gibt Auskunft über den Erfolg der Operation.",
    "type" : "Resource",
    "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/OperationOutcome"]
  },
  {
    "name" : "return",
    "use" : "out",
    "min" : 1,
    "max" : "1",
    "documentation" : "Der *return* Parameter gibt Auskunft über den Erfolg der Operation.",
    "type" : "Bundle",
    "targetProfile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-bundle-medikationsplan"]
  }]
}

```
