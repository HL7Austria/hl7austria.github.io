# HL7.AT.FHIR.ELGA.EDIAG.R4\e-Diagnose Operation $delete - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **e-Diagnose Operation $delete**

## OperationDefinition: e-Diagnose Operation $delete 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/ediag/r4/OperationDefinition/at-ediag-operation-diagnose-delete | *Version*:0.1.0 | |
| Active as of 2026-09-09 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:AtDiagDiagnoseDelete |

 
Die `$delete`-Operation löscht eine bestimmte Diagnose aus der e-Diagnose Fachanwendung. 

 

### Wer ruft diese Operation in welchem Zusammenhang auf?

 
Möchte der ELGA-Teilnehmer eine Diagnose aus der e-Diagnose Fachanwendung löschen, muss diese Operation ausgeführt werden. 

### Voraussetzung für den Aufruf

 
* Die zu löschende Diagnose muss in der e-Diagnose Fachanwendung vorhanden sein.
 

### Detaillierte Business-Logik

 
1. Die Diagnose (Condition, Procedure oder AllergyIntolerance) wird anhand der übergebenen ID aus der e-Diagnose Fachanwendung gelöscht.
1. Ist die Diagnose Teil der jeweiligen Summary-Liste, wird sie auch aus der Summary-Liste entfernt.
1. Als`List.source`wird in diesem Fall der Patient angegeben.
 

### Validierung / Fehlerbehandlung

 
* Die zu löschende Diagnose muss in der e-Diagnose Fachanwendung vorhanden sein.
 



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "at-ediag-operation-diagnose-delete",
  "url" : "https://fhir.hl7.at/elga/ediag/r4/OperationDefinition/at-ediag-operation-diagnose-delete",
  "version" : "0.1.0",
  "name" : "AtDiagDiagnoseDelete",
  "title" : "e-Diagnose Operation $delete",
  "status" : "active",
  "kind" : "operation",
  "experimental" : false,
  "date" : "2026-09-09T14:48:33+00:00",
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
  "description" : "Die `$delete`-Operation löscht eine bestimmte Diagnose aus der e-Diagnose Fachanwendung.",
  "purpose" : "### Wer ruft diese Operation in welchem Zusammenhang auf?\n\nMöchte der ELGA-Teilnehmer eine Diagnose aus der e-Diagnose Fachanwendung löschen, muss diese Operation ausgeführt werden.\n\n### Voraussetzung für den Aufruf\n\n- Die zu löschende Diagnose muss in der e-Diagnose Fachanwendung vorhanden sein.\n\n### Detaillierte Business-Logik\n\n1. Die Diagnose (Condition, Procedure oder AllergyIntolerance) wird anhand der übergebenen ID aus der e-Diagnose Fachanwendung gelöscht.\n2. Ist die Diagnose Teil der jeweiligen Summary-Liste, wird sie auch aus der Summary-Liste entfernt.\n  1. Als `List.source` wird in diesem Fall der Patient angegeben.\n\n### Validierung / Fehlerbehandlung\n\n- Die zu löschende Diagnose muss in der e-Diagnose Fachanwendung vorhanden sein.",
  "affectsState" : true,
  "code" : "delete",
  "resource" : ["Condition", "Procedure", "AllergyIntolerance"],
  "system" : false,
  "type" : false,
  "instance" : true
}

```
