# ELGA.MOPED\AbteilungKARied2 - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AbteilungKARied2**

## Example HealthcareService: AbteilungKARied2

Profiles: [AT MOPED Organization Organisationseinheite KA Profil](StructureDefinition-at-moped-organization-organisationseinheit-KA.md), `https://elga.moped.at/StructureDefinition/AtMopedOrganizationOrganisationseinheitKA`

**identifier**: `http://example.org/lkf-system/funktionscode`/127181, `http://example.org/lkf-system/funktionssubcode`/00

**providedBy**: [Organization Krankenhaus der Barmherzigen Schwestern vom Hl. Vinzenz von Paul Ried](Organization-OrganizationKrankenhausRied.md)

**category**: Hospital

**type**: Hospital Services

**location**: [Location](Location-LocationKARied.md)



## Resource Content

```json
{
  "resourceType" : "HealthcareService",
  "id" : "AbteilungKARied2",
  "meta" : {
    "profile" : ["https://elga.moped.at/StructureDefinition/at-moped-organization-organisationseinheit-KA",
    "https://elga.moped.at/StructureDefinition/AtMopedOrganizationOrganisationseinheitKA"]
  },
  "identifier" : [{
    "system" : "http://example.org/lkf-system/funktionscode",
    "value" : "127181"
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
    "reference" : "Location/LocationKARied"
  }]
}

```
