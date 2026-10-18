# e-Med Operation für $groupidentifier-create - ELGA e-Medikation (R4) DRAFT v0.1.0

## OperationDefinition: e-Med Operation für $groupidentifier-create 

### Operation spezifische Business Logik

Dieser Teil der Spezifikation wird noch erarbeitet und im nächsten Ballot zur Verfügung gestellt.



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "at-elga-emed-operation-groupidentifier-create",
  "url" : "https://fhir.hl7.at/elga/emed/r4/OperationDefinition/at-elga-emed-operation-groupidentifier-create",
  "version" : "0.1.0",
  "name" : "AtElgaEmedGroupIdentifierCreate",
  "title" : "e-Med Operation für $groupidentifier-create",
  "status" : "draft",
  "kind" : "operation",
  "date" : "2026-10-18T08:01:40+00:00",
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
  "description" : "Die $groupidentifier-create Operation wird aufgerufen, wenn ein neuer GroupIdentifer (ohne Patientenbezug) vom Server angefordert werden soll.",
  "affectsState" : true,
  "code" : "groupidentifier-create",
  "system" : true,
  "type" : false,
  "instance" : false,
  "parameter" : [{
    "name" : "groupidentifier",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "documentation" : "Der *groupidentifier* Parameter enthält den angefragten GroupIdentifier.",
    "type" : "string"
  },
  {
    "name" : "datamatrixcode",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "documentation" : "Der *datamatrixcode* Parameter enthält den DataMatrix-Code.",
    "type" : "Attachment"
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
