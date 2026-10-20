# e-Med Operation für $groupidentifier-search - ELGA e-Medikation (R4) DRAFT v0.1.0

## OperationDefinition: e-Med Operation für $groupidentifier-search 

### Operation spezifische Business Logik

Dieser Teil der Spezifikation wird noch erarbeitet und im nächsten Ballot zur Verfügung gestellt.



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "at-elga-emed-operation-groupidentifier-search",
  "url" : "https://fhir.hl7.at/elga/emed/r4/OperationDefinition/at-elga-emed-operation-groupidentifier-search",
  "version" : "0.1.0",
  "name" : "AtElgaEmedGroupIdentifierSearch",
  "title" : "e-Med Operation für $groupidentifier-search",
  "status" : "draft",
  "kind" : "operation",
  "date" : "2026-10-20T15:36:59+00:00",
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
  "description" : "Die $groupidentifier-prescription-search Operation wird aufgerufen, wenn ein Zugriff auf Geplante und Durchgeführte Abgaben mittels e-Med GroupIdentifier erfolgen soll.",
  "affectsState" : false,
  "code" : "groupidentifier-search",
  "system" : true,
  "type" : false,
  "instance" : false,
  "parameter" : [{
    "name" : "groupidentifier",
    "use" : "in",
    "min" : 1,
    "max" : "1",
    "documentation" : "Der *groupidentifier* Parameter enthält den angefragten GroupIdentifier.",
    "type" : "string"
  },
  {
    "name" : "return",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "documentation" : "Der *return* Parameter enthält die angefragte(n) Geplante(n) und Durchgeführten Abgabe(n).",
    "type" : "Resource",
    "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Bundle"]
  },
  {
    "name" : "return",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "documentation" : "Der *return* Parameter im Falle eines Fehlers.",
    "type" : "Resource",
    "targetProfile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-operationoutcome"]
  }]
}

```
