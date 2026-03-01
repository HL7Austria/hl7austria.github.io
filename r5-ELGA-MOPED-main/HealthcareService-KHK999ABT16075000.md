# ELGA.MOPED\KHK999ABT16075000 - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **KHK999ABT16075000**

## Example HealthcareService: KHK999ABT16075000

Profile: [MOPED KH Organisationseinheiten](StructureDefinition-MopedKHOrganisationseinheit.md)

> **Kostenstelle**
* InterneKostenstellennummer: 1250
* InterneKostenstellenbezeichnung: Erstversorgungseinheit (IM und Kardiologie)
* KostenstellenJahr: 2025

**identifier**: `http://example.org/lkf-system/funktionscode`/160750, `http://example.org/lkf-system/funktionssubcode`/00

**providedBy**: [Organization Testkrankenhaus](Organization-KHK999.md)

**type**: Hospital Services

**location**: [Location](Location-LocationKHK999.md)



## Resource Content

```json
{
  "resourceType" : "HealthcareService",
  "id" : "KHK999ABT16075000",
  "meta" : {
    "profile" : ["https://elga.moped.at/StructureDefinition/MopedKHOrganisationseinheit"]
  },
  "extension" : [{
    "extension" : [{
      "url" : "InterneKostenstellennummer",
      "valueUnsignedInt" : 1250
    },
    {
      "url" : "InterneKostenstellenbezeichnung",
      "valueString" : "Erstversorgungseinheit (IM und Kardiologie)"
    },
    {
      "url" : "KostenstellenJahr",
      "valueDate" : "2025"
    }],
    "url" : "https://elga.moped.at/StructureDefinition/moped-ext-Kostenstelle"
  }],
  "identifier" : [{
    "system" : "http://example.org/lkf-system/funktionscode",
    "value" : "160750"
  },
  {
    "system" : "http://example.org/lkf-system/funktionssubcode",
    "value" : "00"
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
