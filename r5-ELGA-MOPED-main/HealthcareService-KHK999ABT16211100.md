# ELGA.MOPED\KHK999ABT16211100 - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **KHK999ABT16211100**

## Example HealthcareService: KHK999ABT16211100

Profile: [MOPED KH Organisationseinheiten](StructureDefinition-MopedKHOrganisationseinheit.md)

> **Kostenstelle**
* InterneKostenstellennummer: 1300
* InterneKostenstellenbezeichnung: Chirurgieambulanz
* SpezielleOrganisationsform: [Spezielle Organisationsformen: A](CodeSystem-SpezielleOrganisationsformenCS.md#SpezielleOrganisationsformenCS-A) (Abteilung)
* KostenstellenJahr: 2025

**identifier**: `http://example.org/lkf-system/funktionscode`/16211100

**providedBy**: [Organization Testkrankenhaus](Organization-KHK999.md)

**type**: Hospital Services

**location**: [Location](Location-LocationKHK999.md)



## Resource Content

```json
{
  "resourceType" : "HealthcareService",
  "id" : "KHK999ABT16211100",
  "meta" : {
    "profile" : ["https://elga.moped.at/StructureDefinition/MopedKHOrganisationseinheit"]
  },
  "extension" : [{
    "extension" : [{
      "url" : "InterneKostenstellennummer",
      "valueUnsignedInt" : 1300
    },
    {
      "url" : "InterneKostenstellenbezeichnung",
      "valueString" : "Chirurgieambulanz"
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
    "value" : "16211100"
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
