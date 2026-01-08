# ELGA.MOPED\KHK999ABT16111111 - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **KHK999ABT16111111**

## Example Organization: KHK999ABT16111111

Profile: [MOPED Organization Abteilung](StructureDefinition-MopedOrganizationAbteilung.md)

> **Kostenstelle**
* InterneKostenstellennummer: 1299
* InterneKostenstellenbezeichnung: Innere Medizin � allgemein
* KostenstellenJahr: 2025

**identifier**: `http://example.org/lkf-system/funktionscode`/161111, `http://example.org/lkf-system/funktionssubcode`/11

**type**: Hospital Department

**partOf**: [Organization Testkrankenhaus](Organization-KHK999.md)



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "KHK999ABT16111111",
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
          "valueUnsignedInt" : 1299
        },
        {
          "url" : "InterneKostenstellenbezeichnung",
          "valueString" : "Innere Medizin � allgemein"
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
      "value" : "161111"
    },
    {
      "system" : "http://example.org/lkf-system/funktionssubcode",
      "value" : "11"
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
