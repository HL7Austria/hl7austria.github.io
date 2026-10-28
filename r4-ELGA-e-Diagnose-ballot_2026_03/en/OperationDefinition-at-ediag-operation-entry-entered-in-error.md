# e-Diagnose Operation $entered-in-error - ELGA e-Diagnose R4 v0.1.1

## OperationDefinition: e-Diagnose Operation $entered-in-error 

### Wer ruft diese Operation in welchem Zusammenhang auf?

Möchte der GDA einen Eintrag in der e-Diagnose Fachanwendung stornieren, muss diese Operation ausgeführt werden.

### Voraussetzung für den Aufruf

* Der zu stornierende Eintrag muss in der e-Diagnose Fachanwendung vorhanden sein.

### Detaillierte Business-Logik

1. Der Eintrag (Condition, Procedure oder AllergyIntolerance) wird anhand der übergebenen ID in der e-Diagnose Fachanwendung storniert.
1. Als`[Condition|Procedure|AllergyIntolerance].extension[entered-in-error].extension[practitioner]`wird durch die e-Diagnose Fachanwendung der GDA, der die Stornierung durchführt, dokumentiert.
1. Als`[Condition|Procedure|AllergyIntolerance].extension[entered-in-error].extension[datetime]`wird durch die e-Diagnose Fachanwendung das Datum und die Uhrzeit der Stornierung dokumentiert.
1. Als`[Condition|Procedure|AllergyIntolerance].extension[entered-in-error].extension[reason]`wird der Grund für die Stornierung, der vom GDA angegeben werden**kann**, festgehalten.
1. Alle weiteren Informationen des Eintrags bleiben unverändert erhalten.
1. Ist der Eintrag Teil der jeweiligen Summary-Liste, wird er aus der Summary-Liste entfernt. Als Autor (`List.source`) der Summary-Liste wird der GDA dokumentiert.

### Validierung / Fehlerbehandlung

* Der zu stornierende Eintrag muss in der e-Diagnose Fachanwendung vorhanden sein.



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "at-ediag-operation-entry-entered-in-error",
  "url" : "https://fhir.hl7.at/elga/ediag/r4/OperationDefinition/at-ediag-operation-entry-entered-in-error",
  "version" : "0.1.1",
  "name" : "AtEdiagEntryEnteredInError",
  "title" : "e-Diagnose Operation $entered-in-error",
  "status" : "active",
  "kind" : "operation",
  "experimental" : false,
  "date" : "2026-10-28T08:34:30+00:00",
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
  "description" : "Die `$entered-in-error`-Operation storniert einen bestimmten Eintrag in der e-Diagnose Fachanwendung.",
  "purpose" : "### Wer ruft diese Operation in welchem Zusammenhang auf?\n\nMöchte der GDA einen Eintrag in der e-Diagnose Fachanwendung stornieren, muss diese Operation ausgeführt werden.\n\n### Voraussetzung für den Aufruf\n\n- Der zu stornierende Eintrag muss in der e-Diagnose Fachanwendung vorhanden sein.\n\n### Detaillierte Business-Logik\n\n1. Der Eintrag (Condition, Procedure oder AllergyIntolerance) wird anhand der übergebenen ID in der e-Diagnose Fachanwendung storniert.\n  1. Als `[Condition|Procedure|AllergyIntolerance].extension[entered-in-error].extension[practitioner]` wird durch die e-Diagnose Fachanwendung der GDA, der die Stornierung durchführt, dokumentiert.\n  2. Als `[Condition|Procedure|AllergyIntolerance].extension[entered-in-error].extension[datetime]` wird  durch die e-Diagnose Fachanwendung das Datum und die Uhrzeit der Stornierung dokumentiert.\n  3. Als `[Condition|Procedure|AllergyIntolerance].extension[entered-in-error].extension[reason]` wird der Grund für die Stornierung, der vom GDA angegeben werden **kann**, festgehalten.\n2. Alle weiteren Informationen des Eintrags bleiben unverändert erhalten.\n3. Ist der Eintrag Teil der jeweiligen Summary-Liste, wird er aus der Summary-Liste entfernt. Als Autor (`List.source`) der Summary-Liste wird der GDA dokumentiert.\n  1. Ist es der letzte Eintrag, der aus der jeweiligen Summary-Liste entfernt wurde, erhält die Summary-Liste `List.emptyReason=nilknown`.\n\n### Validierung / Fehlerbehandlung\n\n- Der zu stornierende Eintrag muss in der e-Diagnose Fachanwendung vorhanden sein.",
  "affectsState" : true,
  "code" : "entered-in-error",
  "resource" : ["Condition", "Procedure", "AllergyIntolerance"],
  "system" : false,
  "type" : false,
  "instance" : true,
  "parameter" : [{
    "name" : "reason",
    "use" : "in",
    "min" : 0,
    "max" : "1",
    "documentation" : "Grund für die Stornierung des Eintrags.",
    "type" : "string"
  },
  {
    "name" : "entry",
    "use" : "out",
    "min" : 1,
    "max" : "1",
    "documentation" : "Der aktualisierte Eintrag nach der Stornierung.",
    "type" : "Resource",
    "targetProfile" : ["https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-condition",
    "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-procedure",
    "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-allergyintolerance"]
  },
  {
    "name" : "list",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "documentation" : "Die Summary-Liste, aus der der Eintrag gegebenenfalls entfernt wurde.",
    "type" : "List",
    "targetProfile" : ["https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-list"]
  }]
}

```
