# ELGA.MOPED\MOPED Patient $entlassen - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MOPED Patient $entlassen**

## OperationDefinition: MOPED Patient $entlassen 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/OperationDefinition/MOPED.Patient.Entlassen | *Version*:0.1.0 | |
| Draft as of 2026-05-22 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MOPED_Patient_Entlassen |

 
Die $entlassen Operation wird aufgerufen, wenn ein(e) Patient*in aus dem Krankenhaus entlassen wurde. 

## Wer ruft diese Operation in welchem Zusammenhang auf?

Die Operation wird vom Akteur Krankenhaus (KA) aufgerufen. Die $entlassen Operation wird aufgerufen, wenn ein(e) Patient*in aus dem Krankenhaus entlassen wurde.

## Voraussetzungen für den Aufruf

* MopedEncounter existiert und besitzt den Status **in-progress** oder **discharged** (wenn es bereits eine Entlassung Aviso gibt)

## Detaillierte Business-Logik

1. Die Operation wird an $update delegiert und nach der dort definierten Logik ausgeführt.

## Annahmen an das BeS

* Es wurde vorab geprüft, ob das `system` des identifiers in Composition.encounter.identifer dem GDA entspricht, der die Operation aufruft. Somit ist sichergestellt, dass nur eigene Fälle verändert werden können.



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "MOPED.Patient.Entlassen",
  "url" : "https://elga.moped.at/OperationDefinition/MOPED.Patient.Entlassen",
  "version" : "0.1.0",
  "name" : "MOPED_Patient_Entlassen",
  "title" : "MOPED Patient $entlassen",
  "status" : "draft",
  "kind" : "operation",
  "date" : "2026-05-22T08:08:56+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "Die $entlassen Operation wird aufgerufen, wenn ein(e) Patient*in aus dem Krankenhaus entlassen wurde.",
  "affectsState" : true,
  "code" : "entlassen",
  "resource" : ["Composition"],
  "system" : false,
  "type" : false,
  "instance" : true,
  "parameter" : [{
    "name" : "Entlassung",
    "use" : "in",
    "min" : 1,
    "max" : "1",
    "documentation" : "Der *Entlassung* Parameter beinhaltet ein Bundle mit einem Update für den jeweiligen Aufenthalt der alle verpflichtenden Felder der Entlassung enthält.",
    "type" : "Bundle",
    "targetProfile" : ["https://elga.moped.at/StructureDefinition/MopedEntlassenBundle"]
  },
  {
    "name" : "return",
    "use" : "out",
    "min" : 1,
    "max" : "1",
    "documentation" : "Der *return* Parameter gibt Auskunft über den Erfolg der Operation.",
    "type" : "Resource",
    "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/OperationOutcome"]
  }]
}

```
