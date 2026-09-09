# HL7.AT.FHIR.ELGA.EDIAG.R4\e-Diagnose Operation $entered-in-error - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **e-Diagnose Operation $entered-in-error**

## OperationDefinition: e-Diagnose Operation $entered-in-error 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/ediag/r4/OperationDefinition/at-ediag-operation-diagnose-entered-in-error | *Version*:0.1.0 | |
| Active as of 2026-09-09 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:AtDiagDiagnoseEnteredInError |

 
Die `$entered-in-error`-Operation storniert eine bestimmte Diagnose in der e-Diagnose Fachanwendung. 

 

### Wer ruft diese Operation in welchem Zusammenhang auf?

 
Möchte der ELGA-Teilnehmer eine Diagnose in der e-Diagnose Fachanwendung stornieren, muss diese Operation ausgeführt werden. 

### Voraussetzung für den Aufruf

 
* Die zu stornierende Diagnose muss in der e-Diagnose Fachanwendung vorhanden sein.
 

### Detaillierte Business-Logik

 
1. Die Diagnose (Condition, Procedure oder AllergyIntolerance) wird anhand der übergebenen ID in der e-Diagnose Fachanwendung storniert.
1. Als`[Condition|Procedure|AllergyIntolerance].extension[entered-in-error].extension[practitioner]`wird von der e-Diagnose Fachanwendung der GDA, der die Stornierung durchführt, dokumentiert.
1. Als`[Condition|Procedure|AllergyIntolerance].extension[entered-in-error].extension[datetime]`wird von der e-Diagnose Fachanwendung das Datum und die Uhrzeit der Stornierung dokumentiert.
1. Als`[Condition|Procedure|AllergyIntolerance].extension[entered-in-error].extension[reason]`wird der Grund für die Stornierung, der vom GDA angegeben werden kann, festgehalten.
1. Ist die Diagnose Teil der jeweiligen Summary-Liste, wird sie aus der Summary-Liste entfernt.
 

### Validierung / Fehlerbehandlung

 
* Die zu stornierende Diagnose muss in der e-Diagnose Fachanwendung vorhanden sein.
 



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "at-ediag-operation-diagnose-entered-in-error",
  "url" : "https://fhir.hl7.at/elga/ediag/r4/OperationDefinition/at-ediag-operation-diagnose-entered-in-error",
  "version" : "0.1.0",
  "name" : "AtDiagDiagnoseEnteredInError",
  "title" : "e-Diagnose Operation $entered-in-error",
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
  "description" : "Die `$entered-in-error`-Operation storniert eine bestimmte Diagnose in der e-Diagnose Fachanwendung.",
  "purpose" : "### Wer ruft diese Operation in welchem Zusammenhang auf?\n\nMöchte der ELGA-Teilnehmer eine Diagnose in der e-Diagnose Fachanwendung stornieren, muss diese Operation ausgeführt werden.\n\n### Voraussetzung für den Aufruf\n\n- Die zu stornierende Diagnose muss in der e-Diagnose Fachanwendung vorhanden sein.\n\n### Detaillierte Business-Logik\n\n1. Die Diagnose (Condition, Procedure oder AllergyIntolerance) wird anhand der übergebenen ID in der e-Diagnose Fachanwendung storniert.\n  1. Als `[Condition|Procedure|AllergyIntolerance].extension[entered-in-error].extension[practitioner]` wird von der e-Diagnose Fachanwendung der GDA, der die Stornierung durchführt, dokumentiert.\n  2. Als `[Condition|Procedure|AllergyIntolerance].extension[entered-in-error].extension[datetime]` wird von der e-Diagnose Fachanwendung das Datum und die Uhrzeit der Stornierung dokumentiert.\n  3. Als `[Condition|Procedure|AllergyIntolerance].extension[entered-in-error].extension[reason]` wird der Grund für die Stornierung, der vom GDA angegeben werden kann, festgehalten.\n2. Ist die Diagnose Teil der jeweiligen Summary-Liste, wird sie aus der Summary-Liste entfernt.\n\n### Validierung / Fehlerbehandlung\n\n- Die zu stornierende Diagnose muss in der e-Diagnose Fachanwendung vorhanden sein.",
  "affectsState" : true,
  "code" : "delete",
  "resource" : ["Condition", "Procedure", "AllergyIntolerance"],
  "system" : false,
  "type" : false,
  "instance" : true,
  "parameter" : [{
    "name" : "reason",
    "use" : "in",
    "min" : 0,
    "max" : "1",
    "documentation" : "Grund für die Stornierung der Diagnose.",
    "type" : "string"
  }]
}

```
