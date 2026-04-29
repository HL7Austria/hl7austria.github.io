# ELGA.MOPED\KAK999ABT16111112 - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **KAK999ABT16111112**

## Example HealthcareService: KAK999ABT16111112

Profile: [MOPED KA Organisationseinheiten](StructureDefinition-MopedKAOrganisationseinheit.md)

> **Kostenstelle**
* InterneKostenstellennummer: 1291
* InterneKostenstellenbezeichnung: Innere Medizin � allgemein
* KostenstellenJahr: 2025

**identifier**: `http://example.org/lkf-system/funktionscode`/16111112

**providedBy**: [Organization Testkrankenhaus](Organization-KAK999.md)

**type**: Hospital Services

**location**: [Location](Location-LocationKAK999.md)



## Resource Content

```json
{
  "resourceType" : "HealthcareService",
  "id" : "KAK999ABT16111112",
  "meta" : {
    "profile" : ["https://elga.moped.at/StructureDefinition/MopedKAOrganisationseinheit"]
  },
  "extension" : [{
    "extension" : [{
      "url" : "InterneKostenstellennummer",
      "valueUnsignedInt" : 1291
    },
    {
      "url" : "InterneKostenstellenbezeichnung",
      "valueString" : "Innere Medizin � allgemein"
    },
    {
      "url" : "KostenstellenJahr",
      "valueDate" : "2025"
    }],
    "url" : "https://elga.moped.at/StructureDefinition/moped-ext-Kostenstelle"
  }],
  "identifier" : [{
    "system" : "http://example.org/lkf-system/funktionscode",
    "value" : "16111112"
  }],
  "providedBy" : {
    "reference" : "Organization/KAK999"
  },
  "type" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/service-type",
      "code" : "361"
    }]
  }],
  "location" : [{
    "reference" : "Location/LocationKAK999"
  }]
}

```
