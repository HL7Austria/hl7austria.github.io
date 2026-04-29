# ELGA.MOPED\AbteilungKARied4 - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AbteilungKARied4**

## Example HealthcareService: AbteilungKARied4

Profile: [MOPED KA Organisationseinheiten](StructureDefinition-MopedKAOrganisationseinheit.md)

**identifier**: `http://example.org/lkf-system/funktionscode`/10000000

**providedBy**: [Organization Krankenhaus der Barmherzigen Schwestern vom Hl. Vinzenz von Paul Ried](Organization-OrganizationKrankenhausRied.md)

**category**: Hospital

**type**: Hospital Services

**location**: [Location](Location-LocationKARied.md)



## Resource Content

```json
{
  "resourceType" : "HealthcareService",
  "id" : "AbteilungKARied4",
  "meta" : {
    "profile" : ["https://elga.moped.at/StructureDefinition/MopedKAOrganisationseinheit"]
  },
  "identifier" : [{
    "system" : "http://example.org/lkf-system/funktionscode",
    "value" : "10000000"
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
    "reference" : "Location/LocationKARied"
  }]
}

```
