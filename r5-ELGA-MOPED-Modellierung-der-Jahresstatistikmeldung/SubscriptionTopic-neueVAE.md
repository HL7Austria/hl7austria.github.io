# ELGA.MOPED\Subscription Topic neue VAE - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Subscription Topic neue VAE**

## Example SubscriptionTopic: Subscription Topic neue VAE

| |
| :--- |
| Active as of 2026-06-09 |



## Resource Content

```json
{
  "resourceType" : "SubscriptionTopic",
  "id" : "neueVAE",
  "url" : "https://elga.moped.at/SubscriptionTopic/neueVAE",
  "version" : "0.1.0",
  "name" : "neueVAE",
  "status" : "active",
  "date" : "2026-06-09T11:53:00+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "resourceTrigger" : [{
    "description" : "Erstellen eines neuen VAERequest",
    "resource" : "https://elga.moped.at/StructureDefinition/at-moped-claim-vaerequest-basis",
    "supportedInteraction" : ["create"]
  }],
  "canFilterBy" : [{
    "resource" : "https://elga.moped.at/StructureDefinition/at-moped-claim-vaerequest-generisch",
    "filterParameter" : "insurer"
  }],
  "notificationShape" : [{
    "resource" : "https://elga.moped.at/StructureDefinition/at-moped-composition-basis",
    "include" : ["Composition:id"]
  },
  {
    "resource" : "https://elga.moped.at/StructureDefinition/at-moped-claim-vaerequest-generisch",
    "include" : ["Claim:insurer"]
  }]
}

```
