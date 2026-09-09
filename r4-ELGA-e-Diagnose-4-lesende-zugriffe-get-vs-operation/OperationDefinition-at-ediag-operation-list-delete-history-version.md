# HL7.AT.FHIR.ELGA.EDIAG.R4\e-Diagnose Operation $delete-history-version - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **e-Diagnose Operation $delete-history-version**

## OperationDefinition: e-Diagnose Operation $delete-history-version 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/ediag/r4/OperationDefinition/at-ediag-operation-list-delete-history-version | *Version*:0.1.0 | |
| Active as of 2026-09-09 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:AtDiagListDeleteHistoryVersion |

 
Die `$delete-history-version`-Operation löscht eine bestimmte Version einer Summary-Liste aus der e-Diagnose Fachanwendung. 

 

### Wer ruft diese Operation in welchem Zusammenhang auf?

 
Möchte der ELGA-Teilnehmer eine Version einer Summary-Liste aus der e-Diagnose Fachanwendung löschen, muss diese Operation ausgeführt werden. 

### Voraussetzung für den Aufruf

 
* Es sind Versionen der Summary-Liste vorhanden, die gelöscht werden können.
 

### Detaillierte Business-Logik

 
1. Die Version einer Summary-Liste wird anhand der übergebenen`versionId`aus der e-Diagnose Fachanwendung gelöscht.
1. Wurde die letzte Version einer Summary-Liste gelöscht, erstellt die e-Diagnose Fachanwendung automatisch eine neue Summary-Liste mit`List.emptyReason=nilknown`.
 

### Validierung / Fehlerbehandlung

 
* Die zu löschende Version der Summary-Liste muss in der e-Diagnose Fachanwendung vorhanden sein.
 



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "at-ediag-operation-list-delete-history-version",
  "url" : "https://fhir.hl7.at/elga/ediag/r4/OperationDefinition/at-ediag-operation-list-delete-history-version",
  "version" : "0.1.0",
  "name" : "AtDiagListDeleteHistoryVersion",
  "title" : "e-Diagnose Operation $delete-history-version",
  "status" : "active",
  "kind" : "operation",
  "experimental" : false,
  "date" : "2026-09-09T15:08:39+00:00",
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
  "description" : "Die `$delete-history-version`-Operation löscht eine bestimmte Version einer Summary-Liste aus der e-Diagnose Fachanwendung.",
  "purpose" : "### Wer ruft diese Operation in welchem Zusammenhang auf?\n\nMöchte der ELGA-Teilnehmer eine Version einer Summary-Liste aus der e-Diagnose Fachanwendung löschen, muss diese Operation ausgeführt werden.\n\n### Voraussetzung für den Aufruf\n\n- Es sind Versionen der Summary-Liste vorhanden, die gelöscht werden können.\n\n### Detaillierte Business-Logik\n\n1. Die Version einer Summary-Liste wird anhand der übergebenen `versionId` aus der e-Diagnose Fachanwendung gelöscht.\n2. Wurde die letzte Version einer Summary-Liste gelöscht, erstellt die e-Diagnose Fachanwendung automatisch eine neue Summary-Liste mit `List.emptyReason=nilknown`.\n\n### Validierung / Fehlerbehandlung\n\n- Die zu löschende Version der Summary-Liste muss in der e-Diagnose Fachanwendung vorhanden sein.",
  "affectsState" : true,
  "code" : "delete-history-version",
  "resource" : ["List"],
  "system" : false,
  "type" : false,
  "instance" : true,
  "parameter" : [{
    "name" : "versionId",
    "use" : "in",
    "min" : 1,
    "max" : "1",
    "documentation" : "Die versionId der zu löschenden Version der Summary-Liste.",
    "type" : "id"
  }]
}

```
