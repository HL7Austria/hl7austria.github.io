# HL7.AT.FHIR.ELGA.EDIAG.R4\e-Diagnose Operation $write - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **e-Diagnose Operation $write**

## OperationDefinition: e-Diagnose Operation $write 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/ediag/r4/OperationDefinition/at-ediag-operation-list-write | *Version*:0.1.0 | |
| Draft as of 2026-08-28 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:AtDiagListWrite |

 
Die $write Operation wird aufgerufen, wenn eine Summary-Liste geschrieben wird. 

### Wer ruft diese Operation in welchem Zusammenhang auf?

Möchte der GDA die Summary-Liste für eine bestimmte Art von Einträgen (z.B. Allergien, Diagnosen, Prozeduren) aktualisieren (Einträge werden hinzugefügt/entfernt) oder möchte der GDA die Reihenfolge der Einträge ändern, so muss diese Operation ausgeführt werden.

### Voraussetzung für den Aufruf

* Der GDA hat durch einen vorangeganenen Abruf (siehe Definition vom Abruf der aktuellen Summary-Liste) die aktuelle `versionId` der Summary-Liste ermittelt. Diese muss beim Aufruf dieser Operation als `If-Match`-Header mitgeschickt werden.

### Detaillierte Business-Logik

1. Nach erfolgreicher Validierung wird die Summary-Liste gespeichert.

### Validierung / Fehlerbehandlung

* Die übermittelte List-Ressource wird laut Profil geprüft.
* `List.code` muss mit dem `code` der Operation übereinstimmen.
* `List.subject` muss mit dem im Token enthaltenen Patienten übereinstimmen.
* `List.source` muss mit dem im Token enthaltenen GDA übereinstimmen.
* Der übermittelte `If-Match`-Header stimmt mit der `versionId` der Ressource am Server überein.
* Für die List-Ressource gilt außerdem `entry.item.empty() implies emptyReason.coding.exists(system='http://terminology.hl7.org/CodeSystem/list-empty-reason' and code='nilknown')`.



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "at-ediag-operation-list-write",
  "url" : "https://fhir.hl7.at/elga/ediag/r4/OperationDefinition/at-ediag-operation-list-write",
  "version" : "0.1.0",
  "name" : "AtDiagListWrite",
  "title" : "e-Diagnose Operation $write",
  "status" : "draft",
  "kind" : "operation",
  "date" : "2026-08-28T10:30:50+00:00",
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
  "description" : "Die $write Operation wird aufgerufen, wenn eine Summary-Liste geschrieben wird.",
  "affectsState" : true,
  "code" : "write",
  "resource" : ["List"],
  "system" : false,
  "type" : true,
  "instance" : false,
  "parameter" : [{
    "name" : "code",
    "use" : "in",
    "min" : 1,
    "max" : "1",
    "documentation" : "Der Parameter gibt an, welche Art von Einträgen in der Summary-Liste enthalten sind. Der Wert muss aus dem Value-Set [AtEdiagListCodeVS](ValueSet-at-ediag-list-code-vs.html) stammen.",
    "type" : "code",
    "binding" : {
      "strength" : "required",
      "valueSet" : "https://fhir.hl7.at/elga/ediag/r4/ValueSet/at-ediag-list-code-vs"
    }
  },
  {
    "name" : "list",
    "use" : "in",
    "min" : 1,
    "max" : "1",
    "documentation" : "Der Parameter dient der Übermittlung der Summary-Liste.",
    "type" : "List",
    "targetProfile" : ["https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-list"]
  }]
}

```
