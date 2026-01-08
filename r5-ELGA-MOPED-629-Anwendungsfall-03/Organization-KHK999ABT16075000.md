# ELGA.MOPED\KHK999ABT16075000 - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **KHK999ABT16075000**

## Example Organization: KHK999ABT16075000

Profile: [MOPED Organization Abteilung](StructureDefinition-MopedOrganizationAbteilung.md)

> **Kostenstelle**
* InterneKostenstellennummer: 1250
* InterneKostenstellenbezeichnung: Erstversorgungseinheit (IM und Kardiologie)
* KostenstellenJahr: 2025

**identifier**: `http://example.org/lkf-system/funktionscode`/160750, `http://example.org/lkf-system/funktionssubcode`/00

**type**: Hospital Department

**partOf**: [Organization Testkrankenhaus](Organization-KHK999.md)



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "KHK999ABT16075000",
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
          "valueUnsignedInt" : 1250
        },
        {
          "url" : "InterneKostenstellenbezeichnung",
          "valueString" : "Erstversorgungseinheit (IM und Kardiologie)"
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
      "value" : "160750"
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
