# ELGA.MOPED\AbteilungHerzJesu1 - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AbteilungHerzJesu1**

## Example Organization: AbteilungHerzJesu1

Profile: [MOPED Organization Abteilung](StructureDefinition-MopedOrganizationAbteilung.md)

> **Kostenstelle**
* InterneKostenstellennummer: 11160
* InterneKostenstellenbezeichnung: Schlaflabor (Interne)
* SpezielleOrganisationsform: [Spezielle Organisationsform A](CodeSystem-SpezielleOrganisationsformCS.md#SpezielleOrganisationsformCS-A): Abteilung
* KostenstellenJahr: 2024

**identifier**: `http://example.org/lkf-system/funktionscode`/131180, `http://example.org/lkf-system/funktionssubcode`/00

**type**: Hospital Department

**partOf**: [Organization Herz Jesu-Krankenhaus](Organization-OrganizationHerzJesuKrankenhaus.md)



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "AbteilungHerzJesu1",
  "meta" : {
    "profile" : [
      "https://elga.moped.at/StructureDefinition/MopedOrganizationAbteilung"
    ]
  },
  "extension" : [
    {
      "extension" : [
        {
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
            "system" : "https://elga.moped.at/CodeSystem/SpezielleOrganisationsformCS",
            "code" : "A"
          }
        },
        {
          "url" : "KostenstellenJahr",
          "valueDate" : "2024"
        }
      ],
      "url" : "https://elga.moped.at/StructureDefinition/moped-ext-Kostenstelle"
    }
  ],
  "identifier" : [
    {
      "system" : "http://example.org/lkf-system/funktionscode",
      "value" : "131180"
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
    "reference" : "Organization/OrganizationHerzJesuKrankenhaus"
  }
}

```
