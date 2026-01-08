# ELGA.MOPED\Subscription Topic VAE abgelehnt - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Subscription Topic VAE abgelehnt**

## Example SubscriptionTopic: Subscription Topic VAE abgelehnt

| |
| :--- |
| Active as of 2025-10-15 |


* **Resource Triggers**: **Resource**
  * ?: **Interactions**
  * ?: **Criteria**
  * ?: **Description**
* **Resource Triggers**: [MOPED VAEResponse](StructureDefinition-MopedVAEResponse.md)
  * ?: create
  * ?: * current = TBD

  * ?: Erstellen einer VAEResponse mit Ablehnung

* **Can Filter By**: **Resource**
  * ?: **Filter Parameter**
* **Can Filter By**: [MOPED VAEResponse](StructureDefinition-MopedVAEResponse.md)
  * ?: requestor

* **Notification Shapes**: **Resource**
  * ?: **Includes**
* **Notification Shapes**: [MOPED Master Composition](StructureDefinition-MopedMasterComposition.md)
  * ?: Composition:id
* **Notification Shapes**: [MOPED VAEResponse](StructureDefinition-MopedVAEResponse.md)
  * ?: ClaimResponse:requestor



## Resource Content

```json
{
  "resourceType" : "SubscriptionTopic",
  "id" : "vaeAbgelehnt",
  "url" : "https://elga.moped.at/SubscriptionTopic/vaeAbgelehnt",
  "version" : "0.1.0",
  "name" : "VAEabgelehnt",
  "status" : "active",
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
  "resourceTrigger" : [
    {
      "description" : "Erstellen einer VAEResponse mit Ablehnung",
      "resource" : "https://elga.moped.at/StructureDefinition/MopedVAEResponse",
      "supportedInteraction" : ["create"],
      "queryCriteria" : {
        "current" : "TBD"
      }
    }
  ],
  "canFilterBy" : [
    {
      "resource" : "https://elga.moped.at/StructureDefinition/MopedVAEResponse",
      "filterParameter" : "requestor"
    }
  ],
  "notificationShape" : [
    {
      "resource" : "https://elga.moped.at/StructureDefinition/MopedMasterComposition",
      "include" : ["Composition:id"]
    },
    {
      "resource" : "https://elga.moped.at/StructureDefinition/MopedVAEResponse",
      "include" : ["ClaimResponse:requestor"]
    }
  ]
}

```
