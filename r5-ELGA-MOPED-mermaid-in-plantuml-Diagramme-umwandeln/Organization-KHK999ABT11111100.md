# ELGA.MOPED\KHK999ABT11111100 - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **KHK999ABT11111100**

## Example Organization: KHK999ABT11111100

Profile: [MOPED Organization Abteilung](StructureDefinition-MopedOrganizationAbteilung.md)

> **Kostenstelle**
* InterneKostenstellennummer: 1000
* InterneKostenstellenbezeichnung: Innere Medizin � allgemein
* SpezielleOrganisationsform: [Spezielle Organisationsformen: F](CodeSystem-SpezielleOrganisationsformenCS.md#SpezielleOrganisationsformenCS-F) (Fachschwerpunkt)
* KostenstellenJahr: 2025

**identifier**: `http://example.org/lkf-system/funktionscode`/111111, `http://example.org/lkf-system/funktionssubcode`/00

**type**: Hospital Department

**partOf**: [Organization Testkrankenhaus](Organization-KHK999.md)



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "KHK999ABT11111100",
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
          "valueUnsignedInt" : 1000
        },
        {
          "url" : "InterneKostenstellenbezeichnung",
          "valueString" : "Innere Medizin � allgemein"
        },
        {
          "url" : "SpezielleOrganisationsform",
          "valueCoding" : {
            "system" : "https://elga.moped.at/CodeSystem/SpezielleOrganisationsformenCS",
            "code" : "F"
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
    "reference" : "Organization/KHK999"
  }
}

```
