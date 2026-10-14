# eMed Operation für GroupIdentifier Prescription Search - ELGA e-Medikation (R4) DRAFT v0.1.0

## OperationDefinition: eMed Operation für GroupIdentifier Prescription Search 



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "at-emed-operation-groupidentifier-prescription-search",
  "url" : "https://fhir.hl7.at/elga/emed/r4/OperationDefinition/at-emed-operation-groupidentifier-prescription-search",
  "version" : "0.1.0",
  "name" : "AtElgaEmedGroupIdentifierPrescriptionSearch",
  "title" : "eMed Operation für GroupIdentifier Prescription Search",
  "status" : "draft",
  "kind" : "operation",
  "date" : "2026-10-14T18:50:32+00:00",
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
  "description" : "Die $groupidentifier-prescription-search Operation wird aufgerufen, wenn ein Zugriff auf geplante Abgaben mittels e-Med GroupIdentifier erfolgen soll.",
  "affectsState" : false,
  "code" : "groupidentifier-prescription-search",
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
    "documentation" : "Der *return* Parameter enthält die angefragte(n) geplante(n) Abgabe(n).",
    "type" : "Resource",
    "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Bundle"]
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
