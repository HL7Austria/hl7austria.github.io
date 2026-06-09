# ELGA.MOPED\KAK999ABT16075000 - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **KAK999ABT16075000**

## Example HealthcareService: KAK999ABT16075000

Profile: `https://elga.moped.at/StructureDefinition/AtMopedOrganizationOrganisationseinheitKA`

> **Kostenstelle**
* InterneKostenstellennummer: 1250
* InterneKostenstellenbezeichnung: Erstversorgungseinheit (IM und Kardiologie)
* KostenstellenJahr: 2025

**identifier**: `http://example.org/lkf-system/funktionscode`/16075000

**providedBy**: [Organization Testkrankenhaus](Organization-KAK999.md)

**type**: Hospital Services

**location**: [Location](Location-LocationKAK999.md)



## Resource Content

```json
{
  "resourceType" : "HealthcareService",
  "id" : "KAK999ABT16075000",
  "meta" : {
    "profile" : ["https://elga.moped.at/StructureDefinition/AtMopedOrganizationOrganisationseinheitKA"]
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
    "value" : "16075000"
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
