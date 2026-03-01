# ELGA.MOPED\AbteilungKHRied4 - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AbteilungKHRied4**

## Example HealthcareService: AbteilungKHRied4

Profile: [MOPED KH Organisationseinheiten](StructureDefinition-MopedKHOrganisationseinheit.md)

**identifier**: `http://example.org/lkf-system/funktionscode`/100000, `http://example.org/lkf-system/funktionssubcode`/00

**providedBy**: [Organization Krankenhaus der Barmherzigen Schwestern vom Hl. Vinzenz von Paul Ried](Organization-OrganizationKrankenhausRied.md)

**category**: Hospital

**type**: Hospital Services

**location**: [Location](Location-LocationKHRied.md)



## Resource Content

```json
{
  "resourceType" : "HealthcareService",
  "id" : "AbteilungKHRied4",
  "meta" : {
    "profile" : ["https://elga.moped.at/StructureDefinition/MopedKHOrganisationseinheit"]
  },
  "identifier" : [{
    "system" : "http://example.org/lkf-system/funktionscode",
    "value" : "100000"
  },
  {
    "system" : "http://example.org/lkf-system/funktionssubcode",
    "value" : "00"
  }],
  "providedBy" : {
    "reference" : "Organization/OrganizationKrankenhausRied"
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
    "reference" : "Location/LocationKHRied"
  }]
}

```
