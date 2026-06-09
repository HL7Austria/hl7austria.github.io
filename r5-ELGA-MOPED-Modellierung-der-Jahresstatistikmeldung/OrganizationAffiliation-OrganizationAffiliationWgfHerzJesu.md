# ELGA.MOPED\OrganizationAffiliationWgfHerzJesu - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **OrganizationAffiliationWgfHerzJesu**

## Example OrganizationAffiliation: OrganizationAffiliationWgfHerzJesu

**active**: true

**organization**: [Organization Wiener Gesundheitsfonds (WGF)](Organization-OrganizationLGF.md)

**participatingOrganization**: [Organization Herz Jesu-Krankenhaus](Organization-OrganizationHerzJesuKrankenhaus.md)

**code**: Provider



## Resource Content

```json
{
  "resourceType" : "OrganizationAffiliation",
  "id" : "OrganizationAffiliationWgfHerzJesu",
  "active" : true,
  "organization" : {
    "reference" : "Organization/OrganizationLGF"
  },
  "participatingOrganization" : {
    "reference" : "Organization/OrganizationHerzJesuKrankenhaus"
  },
  "code" : [{
    "coding" : [{
      "system" : "http://hl7.org/fhir/organization-role",
      "code" : "provider"
    }]
  }]
}

```
