# ELGA.MOPED\KAK999ABT16518011 - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **KAK999ABT16518011**

## Example HealthcareService: KAK999ABT16518011

Profile: `https://elga.moped.at/StructureDefinition/AtMopedOrganizationOrganisationseinheitKA`

> **Kostenstelle**
* InterneKostenstellennummer: 1300
* InterneKostenstellenbezeichnung: Schlaflabor
* SpezielleOrganisationsform: [Spezielle Organisationsformen: A](CodeSystem-SpezielleOrganisationsformenCS.md#SpezielleOrganisationsformenCS-A) (Abteilung)
* KostenstellenJahr: 2025

**identifier**: `http://example.org/lkf-system/funktionscode`/16518011

**providedBy**: [Organization Testkrankenhaus](Organization-KAK999.md)

**type**: Hospital Services

**location**: [Location](Location-LocationKAK999.md)



## Resource Content

```json
{
  "resourceType" : "HealthcareService",
  "id" : "KAK999ABT16518011",
  "meta" : {
    "profile" : ["https://elga.moped.at/StructureDefinition/AtMopedOrganizationOrganisationseinheitKA"]
  },
  "extension" : [{
    "extension" : [{
      "url" : "InterneKostenstellennummer",
      "valueUnsignedInt" : 1300
    },
    {
      "url" : "InterneKostenstellenbezeichnung",
      "valueString" : "Schlaflabor"
    },
    {
      "url" : "SpezielleOrganisationsform",
      "valueCoding" : {
        "system" : "https://elga.moped.at/CodeSystem/SpezielleOrganisationsformenCS",
        "code" : "A"
      }
    },
    {
      "url" : "KostenstellenJahr",
      "valueDate" : "2025"
    }],
    "url" : "https://elga.moped.at/StructureDefinition/moped-ext-Kostenstelle"
  }],
  "identifier" : [{
    "system" : "http://example.org/lkf-system/funktionscode",
    "value" : "16518011"
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
