# ELGA.MOPED\AbteilungKHRied3 - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AbteilungKHRied3**

## Example Organization: AbteilungKHRied3

Profile: [MOPED Organization Abteilung](StructureDefinition-MopedOrganizationAbteilung.md)

**identifier**: `http://example.org/lkf-system/funktionscode`/111111, `http://example.org/lkf-system/funktionssubcode`/00

**type**: Hospital Department

**partOf**: [Organization Krankenhaus der Barmherzigen Schwestern vom Hl. Vinzenz von Paul Ried](Organization-OrganizationKrankenhausRied.md)



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "AbteilungKHRied3",
  "meta" : {
    "profile" : [
      "https://elga.moped.at/StructureDefinition/MopedOrganizationAbteilung"
    ]
  },
  "identifier" : [
    {
      "system" : "http://example.org/lkf-system/funktionscode",
      "value" : "111111"
    },
    {
      "system" : "http://example.org/lkf-system/funktionssubcode",
      "value" : "00"
    }
  ],
  "type" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/organization-type",
          "code" : "dept"
        }
      ]
    }
  ],
  "partOf" : {
    "reference" : "Organization/OrganizationKrankenhausRied"
  }
}

```
