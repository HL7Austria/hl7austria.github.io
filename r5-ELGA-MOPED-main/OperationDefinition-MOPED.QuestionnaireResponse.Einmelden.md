# ELGA.MOPED\MOPED QuestionnaireResponse $einmelden - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MOPED QuestionnaireResponse $einmelden**

## OperationDefinition: MOPED QuestionnaireResponse $einmelden 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/OperationDefinition/MOPED.QuestionnaireResponse.Einmelden | *Version*:0.1.0 | |
| Draft as of 2026-04-07 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MOPED_QuestionnaireResponse_Einmelden |

 
Die $einmelden Operation wird aufgerufen, wenn eine (nicht fallbezogene) QuestionnaireResponse eingemeldet werden soll. 

## Wer ruft diese Operation in welchem Zusammenhang auf?

Die Operation wird vom Akteur Krankenhaus (KH) aufgerufen. Die $einmelden Operation wird aufgerufen, wenn nicht fallspezifische Questionnaires eingemeldet werden sollen.

## Voraussetzungen für den Aufruf

* Keine - Unabhängig von den Fällen in Moped

## Detaillierte Business-Logik

1. Die QuestionnaireResponses werden lt. Profil validiert und eingespielt

## Validierung / Fehlerbehandlung

## Weitere Hinweise

## Annahmen an das BeS

* Es wurde vorab geprüft, ob das `system` des QuestionnaireResponse.author.resolve().identifier dem GDA entspricht, der die Operation aufruft. Somit ist sichergestellt, dass nur eigene QuestionnaireResponses eingemeldet werden können.



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "MOPED.QuestionnaireResponse.Einmelden",
  "url" : "https://elga.moped.at/OperationDefinition/MOPED.QuestionnaireResponse.Einmelden",
  "version" : "0.1.0",
  "name" : "MOPED_QuestionnaireResponse_Einmelden",
  "title" : "MOPED QuestionnaireResponse $einmelden",
  "status" : "draft",
  "kind" : "operation",
  "date" : "2026-04-07T12:18:59+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "Die $einmelden Operation wird aufgerufen, wenn eine (nicht fallbezogene) QuestionnaireResponse eingemeldet werden soll.",
  "affectsState" : true,
  "code" : "einmelden",
  "resource" : ["QuestionnaireResponse"],
  "system" : false,
  "type" : true,
  "instance" : false,
  "parameter" : [{
    "name" : "QuestionnaireResponses",
    "use" : "in",
    "min" : 1,
    "max" : "1",
    "documentation" : "Der *QuestionnaireResponses* Parameter beinhaltet ein Bundle mit sämtlichen nicht fallspezifischen QuestionnaireResponses die eingebracht werden sollen.",
    "type" : "Bundle",
    "targetProfile" : ["https://elga.moped.at/StructureDefinition/MopedQuestionnaireResponseEinmeldenBundle"]
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
