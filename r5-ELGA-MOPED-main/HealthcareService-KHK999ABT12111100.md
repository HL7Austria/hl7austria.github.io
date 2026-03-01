# ELGA.MOPED\KHK999ABT12111100 - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **KHK999ABT12111100**

## Example HealthcareService: KHK999ABT12111100

Profile: [MOPED KH Organisationseinheiten](StructureDefinition-MopedKHOrganisationseinheit.md)

> **Kostenstelle**
* InterneKostenstellennummer: 1200
* InterneKostenstellenbezeichnung: Innere Medizin � allgemein
* SpezielleOrganisationsform: [Spezielle Organisationsformen: A](CodeSystem-SpezielleOrganisationsformenCS.md#SpezielleOrganisationsformenCS-A) (Abteilung)
* KostenstellenJahr: 2025

**identifier**: `http://example.org/lkf-system/funktionscode`/121111, `http://example.org/lkf-system/funktionssubcode`/00

**providedBy**: [Organization Testkrankenhaus](Organization-KHK999.md)

**type**: Hospital Services

**location**: [Location](Location-LocationKHK999.md)



## Resource Content

```json
{
  "resourceType" : "HealthcareService",
  "id" : "KHK999ABT12111100",
  "meta" : {
    "profile" : ["https://elga.moped.at/StructureDefinition/MopedKHOrganisationseinheit"]
  },
  "extension" : [{
    "extension" : [{
      "url" : "InterneKostenstellennummer",
      "valueUnsignedInt" : 1200
    },
    {
      "url" : "InterneKostenstellenbezeichnung",
      "valueString" : "Innere Medizin � allgemein"
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
    "value" : "121111"
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
