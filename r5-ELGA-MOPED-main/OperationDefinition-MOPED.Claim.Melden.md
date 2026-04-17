# ELGA.MOPED\MOPED Kosteninformation $melden - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MOPED Kosteninformation $melden**

## OperationDefinition: MOPED Kosteninformation $melden 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/OperationDefinition/MOPED.Claim.Melden | *Version*:0.1.0 | |
| Draft as of 2026-04-17 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MOPED_Claim_Melden |

 
Die $melden Operation wird aufgerufen, wenn eine Kosteninformation an die SV gemeldet werden soll. 

## Wer ruft diese Operation in welchem Zusammenhang auf?

Die Operation wird vom Akteur Landesgesundheitsfonds (LFG) aufgerufen. Die $melden Operation wird aufgerufen, wenn die Abrechnung inklusive Geldbeträge an die SV übermittelt wird.

## Voraussetzungen für den Aufruf

* Es gibt eine aktive LKFResponse

## Detaillierte Business-Logik

1. Der Claim wird lt. Profil validiert und eingespielt
* **MopedARKRequest.patient** mit Composition.subject befüllen
* **MopedARKRequest.insurance.coverage** mit **MopedComposition.section:Coverages.entry** befüllen
* **MopedARKRequest.provider** mit **MopedComposition.section:zustaendigesKH** befüllen
* **MopedARKRequest.insurer** mit **MopedComposition.section:zustaendigeSV** befüllen
* **MopedARKRequest.encounter** mit **MopedComposition.encounter** befüllen
* **MopedARKRequest.related.claim** mit dem aktiven Request aus **MopedComposition.section:LKFRequest** befüllen

1. Falls es in der**Composition.section:ARKRequests**bereits einen Claim mit dem status`active`gibt so wird der status zu`cancelled`geändert.

## Validierung / Fehlerbehandlung

Die Punkte des ARKRequest und des referenzierten **MopedARKRequest.related.claim** (LKFRequest des KH mit den gemeldeten Punkten) müssen übereinstimmen

## Weitere Hinweise

## Annahmen an das BeS

* Es wurde vorab geprüft, ob der Einbringer auch dem LGF entspricht, der zuständig ist lt. Composition.section:zustaendigerLGF.



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "MOPED.Claim.Melden",
  "url" : "https://elga.moped.at/OperationDefinition/MOPED.Claim.Melden",
  "version" : "0.1.0",
  "name" : "MOPED_Claim_Melden",
  "title" : "MOPED Kosteninformation $melden",
  "status" : "draft",
  "kind" : "operation",
  "date" : "2026-04-17T10:34:11+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "Die $melden Operation wird aufgerufen, wenn eine Kosteninformation an die SV gemeldet werden soll.",
  "affectsState" : true,
  "code" : "melden",
  "resource" : ["Composition"],
  "system" : false,
  "type" : false,
  "instance" : true,
  "parameter" : [{
    "name" : "Kosteninformation",
    "use" : "in",
    "min" : 1,
    "max" : "1",
    "documentation" : "Der *Kosteninformation* Parameter beinhaltet ein Bundle mit sämtlichen Details zur Kosteninformation lt. MopedARKRequest Profil.",
    "type" : "Bundle",
    "targetProfile" : ["https://elga.moped.at/StructureDefinition/MopedMeldenLGFBundle"]
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
