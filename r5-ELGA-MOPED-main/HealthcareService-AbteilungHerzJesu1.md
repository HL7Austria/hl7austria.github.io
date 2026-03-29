# ELGA.MOPED\AbteilungHerzJesu1 - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AbteilungHerzJesu1**

## Example HealthcareService: AbteilungHerzJesu1

Profile: [MOPED KH Organisationseinheiten](StructureDefinition-MopedKHOrganisationseinheit.md)

> **Kostenstelle**
* InterneKostenstellennummer: 11160
* InterneKostenstellenbezeichnung: Schlaflabor (Interne)
* SpezielleOrganisationsform: [Spezielle Organisationsformen: A](CodeSystem-SpezielleOrganisationsformenCS.md#SpezielleOrganisationsformenCS-A) (Abteilung)
* KostenstellenJahr: 2024

**identifier**: `http://example.org/lkf-system/funktionscode`/13118000

**providedBy**: [Organization Herz Jesu-Krankenhaus](Organization-OrganizationHerzJesuKrankenhaus.md)

**category**: Hospital

**type**: Hospital Services

**location**: [Location](Location-LocationKHHerzJesu.md)



## Resource Content

```json
{
  "resourceType" : "HealthcareService",
  "id" : "AbteilungHerzJesu1",
  "meta" : {
    "profile" : ["https://elga.moped.at/StructureDefinition/MopedKHOrganisationseinheit"]
  },
  "extension" : [{
    "extension" : [{
      "url" : "InterneKostenstellennummer",
      "valueUnsignedInt" : 11160
    },
    {
      "url" : "InterneKostenstellenbezeichnung",
      "valueString" : "Schlaflabor (Interne)"
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
      "valueDate" : "2024"
    }],
    "url" : "https://elga.moped.at/StructureDefinition/moped-ext-Kostenstelle"
  }],
  "identifier" : [{
    "system" : "http://example.org/lkf-system/funktionscode",
    "value" : "13118000"
  }],
  "providedBy" : {
    "reference" : "Organization/OrganizationHerzJesuKrankenhaus"
  },
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/service-category",
      "code" : "35"
    }]
  }],
  "type" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/service-type",
      "code" : "361"
    }]
  }],
  "location" : [{
    "reference" : "Location/LocationKHHerzJesu"
  }]
}

```
