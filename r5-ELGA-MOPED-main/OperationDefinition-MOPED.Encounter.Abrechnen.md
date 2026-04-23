# ELGA.MOPED\MOPED Encounter $abrechnen - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MOPED Encounter $abrechnen**

## OperationDefinition: MOPED Encounter $abrechnen 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/OperationDefinition/MOPED.Encounter.Abrechnen | *Version*:0.1.0 | |
| Draft as of 2026-04-23 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MOPED_Encounter_Abrechnen |

 
Die $abrechnen Operation wird aufgerufen, wenn ein Fall abgerechnet werden soll. 

## Wer ruft diese Operation in welchem Zusammenhang auf?

Die Operation wird vom Akteur Krankenhaus (KH) aufgerufen. Die $abrechnen Operation wird aufgerufen, wenn im Zuge des Falles angefallene LKF Punkte abgerechnet werden sollen.

## Voraussetzungen für den Aufruf

* Es darf keinen aktiven, unbeantworteten VAE Request geben (Versicherungsstatus muss geklärt sein).
* Es darf keinen aktiven endgültigen (Claim.supportingInfo:endgueltigeMeldung) LKF Request geben ohne negative LKFResponse (siehe Hinweis 1).

## Detaillierte Business-Logik

1. Suche der Composition: Die Composition mit der jeweiligen**compositionID**lt. Operation-Parameter wird gesucht
1. Der MopedLKFRequest wird lt. Regeln validiert und erstellt
* **MopedLKFRequest.patient** mit Composition.subject befüllen
* **MopedLKFRequest.insurance.coverage** mit **MopedComposition.section:Coverages.entry** befüllen
* **MopedLKFRequest.provider** mit **MopedComposition.section:zustaendigesKH** befüllen
* **MopedLKFRequest.insurer** mit **MopedComposition.section:zustaendigeSV** befüllen
* **MopedLKFRequest.encounter** mit **MopedComposition.encounter** und allen TransferEncounter aus **MopedComposition.section:TransferEncounter** befüllen

1. Falls es in der Composition.section:LKFRequests bereits einen Claim mit dem status`active`gibt so wird der status zu`cancelled`geändert.
1. Falls Schritt 3 erfolgreich war, wird der Composition.useContext:Workflow (sofern der status noch nicht existiert) ergänzt um:
* `Vorläufige Meldung` falls Claim.supportingInfo:endgueltigeMeldung `false` ist
* `Endgültige Meldung` falls Claim.supportingInfo:endgueltigeMeldung `true` ist

## Weitere Hinweise

1. Ein aktiver endgültiger LKFRequest ohne negative LKFResponse würde bedeuten, dass es bereits eine endgültige Meldung gibt (bereits bestätigt oder noch in Bearbeitung) -> $abrechnen kann dann nur mehr nach Korrekturaufforderung inklusive ClaimResponse mit Ablehnung erneut aufgerufen werden. Dadurch wird sichergestellt, dass das KH nach einer endgültigen Meldung nur mehr nach Aufforderung des LGF Änderungen durchführen kann

## Annahmen an das BeS

* Es wurde vorab geprüft, ob das `system` des identifiers in Composition.encounter.identifer dem GDA entspricht, der die Operation aufruft. Somit ist sichergestellt, dass nur eigene Fälle verändert werden können.



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "MOPED.Encounter.Abrechnen",
  "url" : "https://elga.moped.at/OperationDefinition/MOPED.Encounter.Abrechnen",
  "version" : "0.1.0",
  "name" : "MOPED_Encounter_Abrechnen",
  "title" : "MOPED Encounter $abrechnen",
  "status" : "draft",
  "kind" : "operation",
  "date" : "2026-04-23T07:59:48+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "Die $abrechnen Operation wird aufgerufen, wenn ein Fall abgerechnet werden soll.",
  "affectsState" : true,
  "code" : "abrechnen",
  "resource" : ["Composition"],
  "system" : false,
  "type" : false,
  "instance" : true,
  "parameter" : [{
    "name" : "Abrechnung",
    "use" : "in",
    "min" : 1,
    "max" : "1",
    "documentation" : "Der *Abrechnung* Parameter beinhaltet ein Bundle mit sämtlichen Details zur Abrechnung lt. MopedLKFRequest Profil.",
    "type" : "Bundle",
    "targetProfile" : ["https://elga.moped.at/StructureDefinition/MopedAbrechnenBundleKH"]
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
