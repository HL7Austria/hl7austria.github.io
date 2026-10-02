# HL7.AT.FHIR.ELGA.EMED.R4\e-Med Operation für Plan-Read - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **e-Med Operation für Plan-Read**

## OperationDefinition: e-Med Operation für Plan-Read 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/emed/r4/OperationDefinition/AtElgaEmed.List.PlanRead | *Version*:0.1.0 | |
| Draft as of 2026-10-02 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:AtElgaEmed_List_PlanRead |

 
Die $plan-read Operation ruft den aktuellen Medikationsplan eines ELGA-Teilnehmers in einem für die Bearbeitung aufbereiteten Zustand ab. Existiert noch kein Medikationsplan, wird ein initialer Medikationsplan erzeugt. 



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "AtElgaEmed.List.PlanRead",
  "url" : "https://fhir.hl7.at/elga/emed/r4/OperationDefinition/AtElgaEmed.List.PlanRead",
  "version" : "0.1.0",
  "name" : "AtElgaEmed_List_PlanRead",
  "title" : "e-Med Operation für Plan-Read",
  "status" : "draft",
  "kind" : "operation",
  "date" : "2026-10-02T13:24:17+00:00",
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
  "description" : "Die $plan-read Operation ruft den aktuellen Medikationsplan eines ELGA-Teilnehmers in einem für die Bearbeitung aufbereiteten Zustand ab. Existiert noch kein Medikationsplan, wird ein initialer Medikationsplan erzeugt.",
  "affectsState" : true,
  "code" : "plan-read",
  "system" : false,
  "type" : true,
  "instance" : false,
  "parameter" : [{
    "name" : "return",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "documentation" : "Der *return* Parameter im Falle eines Fehlers.",
    "type" : "Resource",
    "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/OperationOutcome"]
  },
  {
    "name" : "return",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "documentation" : "Das für die Bearbeitung aufbereitete Medikationsplan-Bundle. Es enthält die aktuelle oder gegebenenfalls initial erzeugte List-Ressource sowie alle von ihr referenzierten Ressourcen.",
    "type" : "Bundle",
    "targetProfile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-bundle-medikationsplan"]
  }]
}

```
