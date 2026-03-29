# ELGA.MOPED\KHK999ABT16111111 - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **KHK999ABT16111111**

## Example HealthcareService: KHK999ABT16111111

Profile: [MOPED KH Organisationseinheiten](StructureDefinition-MopedKHOrganisationseinheit.md)

> **Kostenstelle**
* InterneKostenstellennummer: 1299
* InterneKostenstellenbezeichnung: Innere Medizin � allgemein
* KostenstellenJahr: 2025

**identifier**: `http://example.org/lkf-system/funktionscode`/16111111

**providedBy**: [Organization Testkrankenhaus](Organization-KHK999.md)

**type**: Hospital Services

**location**: [Location](Location-LocationKHK999.md)



## Resource Content

```json
{
  "resourceType" : "HealthcareService",
  "id" : "KHK999ABT16111111",
  "meta" : {
    "profile" : ["https://elga.moped.at/StructureDefinition/MopedKHOrganisationseinheit"]
  },
  "extension" : [{
    "extension" : [{
      "url" : "InterneKostenstellennummer",
      "valueUnsignedInt" : 1299
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
    "value" : "16111111"
  }],
  "providedBy" : {
    "reference" : "Organization/KHK999"
  },
  "type" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/service-type",
      "code" : "361"
    }]
  }],
  "location" : [{
    "reference" : "Location/LocationKHK999"
  }]
}

```
