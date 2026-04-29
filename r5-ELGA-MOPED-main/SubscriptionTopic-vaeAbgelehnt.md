# ELGA.MOPED\Subscription Topic VAE abgelehnt - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Subscription Topic VAE abgelehnt**

## Example SubscriptionTopic: Subscription Topic VAE abgelehnt

| |
| :--- |
| Active as of 2026-04-29 |



## Resource Content

```json
{
  "resourceType" : "SubscriptionTopic",
  "id" : "vaeAbgelehnt",
  "url" : "https://elga.moped.at/SubscriptionTopic/vaeAbgelehnt",
  "version" : "0.1.0",
  "name" : "VAEabgelehnt",
  "status" : "active",
  "date" : "2026-04-29T07:12:28+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "resourceTrigger" : [{
    "description" : "Erstellen einer VAEResponse mit Ablehnung",
    "resource" : "https://elga.moped.at/StructureDefinition/MopedVAEResponse",
    "supportedInteraction" : ["create"],
    "queryCriteria" : {
      "current" : "TBD"
    }
  }],
  "canFilterBy" : [{
    "resource" : "https://elga.moped.at/StructureDefinition/MopedVAEResponse",
    "filterParameter" : "requestor"
  }],
  "notificationShape" : [{
    "resource" : "https://elga.moped.at/StructureDefinition/MopedMasterComposition",
    "include" : ["Composition:id"]
  },
  {
    "resource" : "https://elga.moped.at/StructureDefinition/MopedVAEResponse",
    "include" : ["ClaimResponse:requestor"]
  }]
}

```
