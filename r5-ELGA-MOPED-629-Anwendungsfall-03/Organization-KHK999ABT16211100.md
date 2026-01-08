# ELGA.MOPED\KHK999ABT16211100 - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **KHK999ABT16211100**

## Example Organization: KHK999ABT16211100

Profile: [MOPED Organization Abteilung](StructureDefinition-MopedOrganizationAbteilung.md)

> **Kostenstelle**
* InterneKostenstellennummer: 1300
* InterneKostenstellenbezeichnung: Chirurgieambulanz
* SpezielleOrganisationsform: [Spezielle Organisationsform A](CodeSystem-SpezielleOrganisationsformCS.md#SpezielleOrganisationsformCS-A): Abteilung
* KostenstellenJahr: 2025

**identifier**: `http://example.org/lkf-system/funktionscode`/162111, `http://example.org/lkf-system/funktionssubcode`/00

**type**: Hospital Department

**partOf**: [Organization Testkrankenhaus](Organization-KHK999.md)



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "KHK999ABT16211100",
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
          "valueUnsignedInt" : 1300
        },
        {
          "url" : "InterneKostenstellenbezeichnung",
          "valueString" : "Chirurgieambulanz"
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
          "valueDate" : "2025"
        }
      ],
      "url" : "https://elga.moped.at/StructureDefinition/moped-ext-Kostenstelle"
    }
  ],
  "identifier" : [
    {
      "system" : "http://example.org/lkf-system/funktionscode",
      "value" : "162111"
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
    "reference" : "Organization/KHK999"
  }
}

```
