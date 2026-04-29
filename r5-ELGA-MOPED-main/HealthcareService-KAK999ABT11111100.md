# ELGA.MOPED\KAK999ABT11111100 - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **KAK999ABT11111100**

## Example HealthcareService: KAK999ABT11111100

Profile: [MOPED KA Organisationseinheiten](StructureDefinition-MopedKAOrganisationseinheit.md)

> **Kostenstelle**
* InterneKostenstellennummer: 1000
* InterneKostenstellenbezeichnung: Innere Medizin � allgemein
* SpezielleOrganisationsform: [Spezielle Organisationsformen: F](CodeSystem-SpezielleOrganisationsformenCS.md#SpezielleOrganisationsformenCS-F) (Fachschwerpunkt)
* KostenstellenJahr: 2025

**identifier**: `http://example.org/lkf-system/funktionscode`/111111, `http://example.org/lkf-system/funktionssubcode`/00

**providedBy**: [Organization Testkrankenhaus](Organization-KAK999.md)

**type**: Hospital Services

**location**: [Location](Location-LocationKAK999.md)



## Resource Content

```json
{
  "resourceType" : "HealthcareService",
  "id" : "KAK999ABT11111100",
  "meta" : {
    "profile" : ["https://elga.moped.at/StructureDefinition/MopedKAOrganisationseinheit"]
  },
  "extension" : [{
    "extension" : [{
      "url" : "InterneKostenstellennummer",
      "valueUnsignedInt" : 1000
    },
    {
      "url" : "InterneKostenstellenbezeichnung",
      "valueString" : "Innere Medizin � allgemein"
    },
    {
      "url" : "SpezielleOrganisationsform",
      "valueCoding" : {
        "system" : "https://elga.moped.at/CodeSystem/SpezielleOrganisationsformenCS",
        "code" : "F"
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
    "value" : "111111"
  },
  {
    "system" : "http://example.org/lkf-system/funktionssubcode",
    "value" : "00"
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
