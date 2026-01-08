# ELGA.MOPED\Subscription Topic neue VAE - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Subscription Topic neue VAE**

## Example SubscriptionTopic: Subscription Topic neue VAE

| |
| :--- |
| Active as of 2025-10-15 |


* **Resource Triggers**: **Resource**
  * ?: **Interactions**
  * ?: **Description**
* **Resource Triggers**: [MOPED VAERequest](StructureDefinition-MopedVAERequest.md)
  * ?: create
  * ?: Erstellen eines neuen VAERequest

* **Can Filter By**: **Resource**
  * ?: **Filter Parameter**
* **Can Filter By**: [MOPED VAERequest](StructureDefinition-MopedVAERequest.md)
  * ?: insurer

* **Notification Shapes**: **Resource**
  * ?: **Includes**
* **Notification Shapes**: [MOPED Master Composition](StructureDefinition-MopedMasterComposition.md)
  * ?: Composition:id
* **Notification Shapes**: [MOPED VAERequest](StructureDefinition-MopedVAERequest.md)
  * ?: Claim:insurer



## Resource Content

```json
{
  "resourceType" : "SubscriptionTopic",
  "id" : "neueVAE",
  "url" : "https://elga.moped.at/SubscriptionTopic/neueVAE",
  "version" : "0.1.0",
  "name" : "neueVAE",
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
      "description" : "Erstellen eines neuen VAERequest",
      "resource" : "https://elga.moped.at/StructureDefinition/MopedVAERequest",
      "supportedInteraction" : ["create"]
    }
  ],
  "canFilterBy" : [
    {
      "resource" : "https://elga.moped.at/StructureDefinition/MopedVAERequest",
      "filterParameter" : "insurer"
    }
  ],
  "notificationShape" : [
    {
      "resource" : "https://elga.moped.at/StructureDefinition/MopedMasterComposition",
      "include" : ["Composition:id"]
    },
    {
      "resource" : "https://elga.moped.at/StructureDefinition/MopedVAERequest",
      "include" : ["Claim:insurer"]
    }
  ]
}

```
