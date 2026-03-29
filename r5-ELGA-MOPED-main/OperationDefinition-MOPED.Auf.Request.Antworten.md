# ELGA.MOPED\MOPED auf VAERequest oder ARKRequest $antworten - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MOPED auf VAERequest oder ARKRequest $antworten**

## OperationDefinition: MOPED auf VAERequest oder ARKRequest $antworten 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/OperationDefinition/MOPED.Auf.Request.Antworten | *Version*:0.1.0 | |
| Draft as of 2026-03-29 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MOPED_Auf_Request_Antworten |

 
Die $antworten Operation wird aufgerufen, wenn eine Versichertenanspruchserklärung oder eine Kosteninformation beantwortet wird. 

## Wer ruft diese Operation in welchem Zusammenhang auf?

Die Operation wird vom Akteur Sozialversicherung (SV) aufgerufen. Die $antworten Operation wird aufgerufen, wenn der MopedVAERequest eines Krankenhauses oder der MopedARKRequest eines LGF beantwortet wird. Die Operation kann außerdem verwendet werden, um generische Kommunikation zu einem Fall einzubringen.

## Voraussetzungen für den Aufruf

* TBD

## Detaillierte Business-Logik

1. Die Ressourcen werden lt.**Antwort**-Bundle erstellt und gegen die Profile validiert.
1. Alte Requests canceln
* Beim Einbringen einer VAEREsponse: 
* Falls es eine aktive VAEResponse in der Composition.section:VAEResponses gibt so wird der status auf **cancelled** gesetzt. Die neue VAEResponse wird in die Section eingefügt und ist ab jetzt die gültige VAEResponse.
 
* Beim Einbringen einer ARKResponse: 
* Falls es eine aktive ARKResponse in der Composition.section:ARKResponses gibt so wird der status auf **cancelled** gesetzt. Die neue ARKResponse wird in die Section eingefügt und ist ab jetzt die gültige ARKResponse.
 
* ARKStatusUpdates, Communications und CommunicationResponses werden in die jeweiligen Sections eingefügt.

## Annahmen an das BeS

* Es wurde vorab geprüft, ob **MopedVAEResponse.insurance** oder **MopedARKResponse.insurance** auch der SV entspricht, die die Operation aufruft. Somit ist sichergestellt, dass jede SV nur eigene MopedARK/VAERequests beantworten kann.



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "MOPED.Auf.Request.Antworten",
  "url" : "https://elga.moped.at/OperationDefinition/MOPED.Auf.Request.Antworten",
  "version" : "0.1.0",
  "name" : "MOPED_Auf_Request_Antworten",
  "title" : "MOPED auf VAERequest oder ARKRequest $antworten",
  "status" : "draft",
  "kind" : "operation",
  "date" : "2026-03-29T16:14:43+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "Die $antworten Operation wird aufgerufen, wenn eine Versichertenanspruchserklärung oder eine Kosteninformation beantwortet wird.",
  "affectsState" : true,
  "code" : "antworten",
  "resource" : ["Composition"],
  "system" : false,
  "type" : false,
  "instance" : true,
  "parameter" : [{
    "name" : "Antwort",
    "use" : "in",
    "min" : 1,
    "max" : "1",
    "documentation" : "Der *Antwort* Parameter beinhaltet sämtliche Details zur Antwort auf den VAE/ARKRequest oder zusätzlich eingebrachte Kommunikation.",
    "type" : "Bundle",
    "targetProfile" : ["https://elga.moped.at/StructureDefinition/MopedAntwortenBundleSV"]
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
