# e-Diagnose Operation $delete - ELGA e-Diagnose R4 v0.1.0

## OperationDefinition: e-Diagnose Operation $delete 

### Wer ruft diese Operation in welchem Zusammenhang auf?

Möchte der ELGA-Teilnehmer einen Eintrag aus der e-Diagnose Fachanwendung löschen, muss diese Operation ausgeführt werden.

### Voraussetzung für den Aufruf

* Der zu löschende Eintrag muss in der e-Diagnose Fachanwendung vorhanden sein.

### Detaillierte Business-Logik

1. Der Eintrag (Condition, Procedure oder AllergyIntolerance) wird anhand der übergebenen ID aus der e-Diagnose Fachanwendung gelöscht.
1. Ist der Eintrag Teil der jeweiligen Summary-Liste, wird er auch aus der Summary-Liste entfernt.
1. Als`List.source`wird in diesem Fall der Patient angegeben.

### Validierung / Fehlerbehandlung

* Der zu löschende Eintrag muss in der e-Diagnose Fachanwendung vorhanden sein.



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
  "date" : "2026-10-16T09:08:48+00:00",
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
  "description" : "Die `$delete`-Operation löscht einen bestimmten Eintrag aus der e-Diagnose Fachanwendung.",
  "purpose" : "### Wer ruft diese Operation in welchem Zusammenhang auf?\n\nMöchte der ELGA-Teilnehmer einen Eintrag aus der e-Diagnose Fachanwendung löschen, muss diese Operation ausgeführt werden.\n\n\n### Voraussetzung für den Aufruf\n\n- Der zu löschende Eintrag muss in der e-Diagnose Fachanwendung vorhanden sein.\n\n### Detaillierte Business-Logik\n\n1. Der Eintrag (Condition, Procedure oder AllergyIntolerance) wird anhand der übergebenen ID aus der e-Diagnose Fachanwendung gelöscht.\n2. Ist der Eintrag Teil der jeweiligen Summary-Liste, wird er auch aus der Summary-Liste entfernt.\n  1. Als `List.source` wird in diesem Fall der Patient angegeben.\n\n### Validierung / Fehlerbehandlung\n\n- Der zu löschende Eintrag muss in der e-Diagnose Fachanwendung vorhanden sein.",
  "affectsState" : true,
  "code" : "delete",
  "resource" : ["Condition", "Procedure", "AllergyIntolerance"],
  "system" : false,
  "type" : false,
  "instance" : true,
  "parameter" : [{
    "name" : "diagnose",
    "use" : "out",
    "min" : 1,
    "max" : "1",
    "documentation" : "Der gelöschte Eintrag.",
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
    "documentation" : "Die Summary-Liste, aus der der Eintrag gegebenenfalls gelöscht wurde.",
    "type" : "List",
    "targetProfile" : ["https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-list"]
  }]
}

```
