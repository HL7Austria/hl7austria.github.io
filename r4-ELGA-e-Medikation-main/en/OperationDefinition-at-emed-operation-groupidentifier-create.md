# eMed Operation für GroupIdentifier-Create - ELGA e-Medikation (R4) DRAFT v0.1.0

## OperationDefinition: eMed Operation für GroupIdentifier-Create 



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "at-emed-operation-groupidentifier-create",
  "url" : "https://fhir.hl7.at/elga/emed/r4/OperationDefinition/at-emed-operation-groupidentifier-create",
  "version" : "0.1.0",
  "name" : "AtElgaEmedGroupIdentifierCreate",
  "title" : "eMed Operation für GroupIdentifier-Create",
  "status" : "draft",
  "kind" : "operation",
  "date" : "2026-10-12T12:45:08+00:00",
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
    "documentation" : "Der *return* Parameter gibt Auskunft über den Erfolg der Operation.",
    "type" : "Resource",
    "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/OperationOutcome"]
  }]
}

```
