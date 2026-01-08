# ELGA.MOPED\MOPED ClaimResponse $entscheiden - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MOPED ClaimResponse $entscheiden**

## OperationDefinition: MOPED ClaimResponse $entscheiden 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/OperationDefinition/MOPED.ClaimResponse.Entscheiden | *Version*:0.1.0 | |
| Draft as of 2025-10-15 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MOPED_ClaimResponse_Entscheiden |

 
Die $entscheiden Operation wird aufgerufen, wenn eine Abrechnung beantwortet wird und freigegeben wird. 

## Wer ruft diese Operation in welchem Zusammenhang auf?

Die Operation wird vom Akteur Landesgesundheitsfonds (LFG) aufgerufen. Die $entscheiden Operation wird aufgerufen, wenn die Abrechnung eines Krankenhauses (inklusive Errors und Warnings) beantwortet und entweder bestätigt oder mit Korrekturaufforderunge abgelehnt wird. Die Operation kann außerdem dafür verwendet werden Kommunikation zum Fall einzubringen wie z.B. die Anforderung von Dokumenten.

## Voraussetzungen für den Aufruf

* Es existiert ein aktiver LKFRequest

## Detaillierte Business-Logik

1. Die ClaimResponse, CommunicationRequest oder Communication wird lt. Profil validiert und eingespielt
1. Falls eine ClaimResponse eingebracht wird und es bereits eine aktive LKFResponse in der Composition.section:LKFResponses gibt so wird der status auf**cancelled**gesetzt. Die neue LKFResponse wird in die Section eingefügt und ist ab jetzt die gültige LKFResponse.

## Validierung / Fehlerbehandlung

* ClaimResponse.status muss `active` sein (lt. Profil)
* ClaimResponse.type muss `institutional` sein (lt. Profil)
* ClaimResponse.use muss `claim` sein (lt. Profil)
* ClaimResponse.patient muss gleich ClaimResponse.request.patient sein
* ClaimResponse.insurer muss gleich ClaimResponse.request.insurer sein
* ClaimResponse.requestor muss gleich ClaimResponse.request.provider sein
* ClaimResponse.outcome muss `error` sein
* ClaimResponse.insurance.coverage muss gleich der Claim.insurance.coverage sein
* ClaimResponse.error muss befüllt sein

## Weitere Hinweise

* Hinweis 1: Für den Fall, dass ein Claim freigegeben wird und kein Fehler auftritt, gibt es eine weitere Operation die anstelle einer Korrekturaufforderung eine Freigabe definiert

## Annahmen an das BeS

* Es wurde vorab geprüft, ob die ClaimResponse auch dem LGF entspricht, der die Operation aufruft. Somit ist sichergestellt, dass jeder LGF nur eigene Claims beantworten kann.

URL: [base]/Composition/[id]/$entscheiden

### Parameters

* **Use**: IN
  * **Name**: Entscheidung
  * **Scope**: 
  * **Cardinality**: 1..1
  * **Type**: [Bundle](http://hl7.org/fhir/R5/bundle.html)([MOPED Entscheiden Bundle LGF](StructureDefinition-MopedEntscheidenLGFBundle.md))
  * **Binding**: 
  * **Documentation**: Der **Entscheidung** Parameter beinhaltet ein Bundle mit sämtliche Details zur Antwort auf den Claim.
* **Use**: OUT
  * **Name**: return
  * **Scope**: 
  * **Cardinality**: 1..1
  * **Type**: [Resource](http://hl7.org/fhir/R5/resource.html)([OperationOutcome](http://hl7.org/fhir/R5/operationoutcome.html))
  * **Binding**: 
  * **Documentation**: Der **return** Parameter gibt Auskunft über den Erfolg der Operation.



## Resource Content

```json
{
  "resourceType" : "OperationDefinition",
  "id" : "MOPED.ClaimResponse.Entscheiden",
  "url" : "https://elga.moped.at/OperationDefinition/MOPED.ClaimResponse.Entscheiden",
  "version" : "0.1.0",
  "name" : "MOPED_ClaimResponse_Entscheiden",
  "title" : "MOPED ClaimResponse $entscheiden ",
  "status" : "draft",
  "kind" : "operation",
  "date" : "2025-10-15T12:16:02+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [
    {
      "name" : "ELGA GmbH",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://elga.gv.at"
        }
      ]
    }
  ],
  "description" : "Die $entscheiden Operation wird aufgerufen, wenn eine Abrechnung beantwortet wird und freigegeben wird.",
  "affectsState" : true,
  "code" : "entscheiden",
  "resource" : ["Composition"],
  "system" : false,
  "type" : false,
  "instance" : true,
  "parameter" : [
    {
      "name" : "Entscheidung",
      "use" : "in",
      "min" : 1,
      "max" : "1",
      "documentation" : "Der *Entscheidung* Parameter beinhaltet ein Bundle mit sämtliche Details zur Antwort auf den Claim.",
      "type" : "Bundle",
      "targetProfile" : [
        "https://elga.moped.at/StructureDefinition/MopedEntscheidenLGFBundle"
      ]
    },
    {
      "name" : "return",
      "use" : "out",
      "min" : 1,
      "max" : "1",
      "documentation" : "Der *return* Parameter gibt Auskunft über den Erfolg der Operation.",
      "type" : "Resource",
      "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/OperationOutcome"]
    }
  ]
}

```
