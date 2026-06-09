# ELGA.MOPED\KAK999ABT12111100 - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **KAK999ABT12111100**

## Example HealthcareService: KAK999ABT12111100

Profile: `https://elga.moped.at/StructureDefinition/AtMopedOrganizationOrganisationseinheitKA`

> **Kostenstelle**
* InterneKostenstellennummer: 1200
* InterneKostenstellenbezeichnung: Innere Medizin � allgemein
* SpezielleOrganisationsform: [Spezielle Organisationsformen: A](CodeSystem-SpezielleOrganisationsformenCS.md#SpezielleOrganisationsformenCS-A) (Abteilung)
* KostenstellenJahr: 2025

**identifier**: `http://example.org/lkf-system/funktionscode`/12111100

**providedBy**: [Organization Testkrankenhaus](Organization-KAK999.md)

**type**: Hospital Services

**location**: [Location](Location-LocationKAK999.md)



## Resource Content

```json
{
  "resourceType" : "HealthcareService",
  "id" : "KAK999ABT12111100",
  "meta" : {
    "profile" : ["https://elga.moped.at/StructureDefinition/AtMopedOrganizationOrganisationseinheitKA"]
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
    "value" : "12111100"
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
