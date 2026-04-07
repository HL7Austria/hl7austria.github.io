# ELGA.MOPED\MOPED Versichertenanspruchserklärung $anfragen - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MOPED Versichertenanspruchserklärung $anfragen**

## OperationDefinition: MOPED Versichertenanspruchserklärung $anfragen 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/OperationDefinition/MOPED.VAERequest.Anfragen | *Version*:0.1.0 | |
| Draft as of 2026-04-07 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MOPED_VAERequest_Anfragen |

 
Die Versichertenanspruchserklärung $anfragen Operation wird aufgerufen, um die Versichertenanspruchserklärung-Anfrage an die SV anzustoßen. Diese Operation ist irrelevant für Selbstzahler (-> wenn es keine zuständige SV gibt darf die Operation $anfragen nicht ausgeführt werden). 

## Wer ruft diese Operation in welchem Zusammenhang auf?

Die Operation wird vom Akteur Krankenhaus (KH) aufgerufen. Die Versichertenanspruchserklärung $anfragen Operation wird aufgerufen, um die Versichertenanspruchserklärung-Anfrage an die SV anzustoßen. Diese Operation ist irrelevant für Selbstzahler (-> wenn es keine zuständige SV gibt darf die Operation $anfragen nicht ausgeführt werden). Diese Operation dient außerdem dazu, eine Verlängerung für eine bereits positiv von der SV bestätigte Versichertenanspruchserklärung zu beantragen.

## Voraussetzungen für den Aufruf

* TBD

## Detaillierte Business-Logik

1. Der MopedVAERequest wird lt. Regeln validiert und erstellt
* **MopedVAERequest.patient** mit Composition.subject befüllen
* **MopedVAERequest.insurance.coverage** mit **MopedComposition.section:Coverages.entry** befüllen
* **MopedVAERequest.provider** mit **MopedComposition.section:zustaendigesKH** befüllen
* **MopedVAERequest.encounter** mit **MopedComposition.encounter** befüllen

1. Der MopedVAERequest wird in der Composition.section:VAERequests eingefügt
1. Falls es bereits einen aktiven VAERequest gibt, und dieser nicht in Claim.related.claim referenziert wird (dies muss rekursiv für alle related claims überprüft werden) so muss dieser auf den status cancelled gesetzt werden.

## Annahmen an das BeS

* Es wurde vorab geprüft, ob das `system` des identifiers in Composition.encounter.identifer dem GDA entspricht, der die Operation aufruft. Somit ist sichergestellt, dass nur Kostenübernahmen für eigene Fälle angefragt werden können.
* **MopedVAERequest.provider** muss gleichzeitig die gleiche Organisation sein, die lt. Token die Operation aufgerufen hat.



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "MOPED.VAERequest.Anfragen",
  "url" : "https://elga.moped.at/OperationDefinition/MOPED.VAERequest.Anfragen",
  "version" : "0.1.0",
  "name" : "MOPED_VAERequest_Anfragen",
  "title" : "MOPED Versichertenanspruchserklärung $anfragen",
  "status" : "draft",
  "kind" : "operation",
  "date" : "2026-04-07T19:34:12+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "Die Versichertenanspruchserklärung $anfragen Operation wird aufgerufen, um die Versichertenanspruchserklärung-Anfrage an die SV anzustoßen. Diese Operation ist irrelevant für Selbstzahler (-> wenn es keine zuständige SV gibt darf die Operation $anfragen nicht ausgeführt werden).",
  "affectsState" : true,
  "code" : "anfragen",
  "resource" : ["Composition"],
  "system" : false,
  "type" : false,
  "instance" : true,
  "parameter" : [{
    "name" : "Anfrage",
    "use" : "in",
    "min" : 1,
    "max" : "1",
    "documentation" : "Der *Anfrage* Parameter beinhaltet ein Bundle mit den Informationen für die Versichertenanspruchserklärung",
    "type" : "Bundle",
    "targetProfile" : ["https://elga.moped.at/StructureDefinition/MopedAnfragenBundleKH"]
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
