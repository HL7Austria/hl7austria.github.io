# ELGA.MOPED\KHK999ABT12118102 - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **KHK999ABT12118102**

## Example Organization: KHK999ABT12118102

Profile: [MOPED Organization Abteilung](StructureDefinition-MopedOrganizationAbteilung.md)

> **Kostenstelle**
* InterneKostenstellennummer: 1200
* InterneKostenstellenbezeichnung: Intensivbetreuung (Interne)
* SpezielleOrganisationsform: [Spezielle Organisationsformen: A](CodeSystem-SpezielleOrganisationsformenCS.md#SpezielleOrganisationsformenCS-A) (Abteilung)
* KostenstellenJahr: 2025

**identifier**: `http://example.org/lkf-system/funktionscode`/121181, `http://example.org/lkf-system/funktionssubcode`/02

**type**: Hospital Department

**partOf**: [Organization Testkrankenhaus](Organization-KHK999.md)



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "KHK999ABT12118102",
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
          "valueUnsignedInt" : 1200
        },
        {
          "url" : "InterneKostenstellenbezeichnung",
          "valueString" : "Intensivbetreuung (Interne)"
        },
        {
          "url" : "SpezielleOrganisationsform",
          "valueCoding" : {
            "system" : "https://elga.moped.at/CodeSystem/SpezielleOrganisationsformenCS",
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
      "value" : "121181"
    },
    {
      "system" : "http://example.org/lkf-system/funktionssubcode",
      "value" : "02"
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
