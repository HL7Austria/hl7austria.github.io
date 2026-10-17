# eMed Operation $reference-plan - ELGA e-Medikation (R4) DRAFT v0.1.0

## OperationDefinition: eMed Operation $reference-plan 



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "at-emed-operation-reference-plan",
  "url" : "https://fhir.hl7.at/elga/emed/r4/OperationDefinition/at-emed-operation-reference-plan",
  "version" : "0.1.0",
  "name" : "AtElgaEmedReferencePlan",
  "title" : "eMed Operation $reference-plan",
  "status" : "draft",
  "kind" : "operation",
  "date" : "2026-10-17T00:02:12+00:00",
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
  "description" : "Operation für das Verknüpfen von durchgeführten Abgaben und Planeinträgen.",
  "affectsState" : true,
  "code" : "reference-plan",
  "resource" : ["MedicationDispense"],
  "system" : false,
  "type" : false,
  "instance" : true,
  "parameter" : [{
    "name" : "planentry",
    "use" : "in",
    "min" : 0,
    "max" : "1",
    "documentation" : "Referenz auf den Planeintrag mit welchem die durchgeführte Abgabe verbunden werden soll.",
    "type" : "Reference"
  },
  {
    "name" : "return",
    "use" : "out",
    "min" : 0,
    "max" : "1",
    "documentation" : "Die durchgeführte Abgabe so wie sie nach dem Ausführen der Operation am Server persistiert ist.",
    "type" : "Resource",
    "targetProfile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medicationdispense-durchgefuehrteabgabe"]
  }]
}

```
