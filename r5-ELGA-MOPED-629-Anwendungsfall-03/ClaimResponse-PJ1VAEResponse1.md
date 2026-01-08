# ELGA.MOPED\PJ1VAEResponse1 - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PJ1VAEResponse1**

## Example ClaimResponse: PJ1VAEResponse1

Profile: [MOPED VAEResponse](StructureDefinition-MopedVAEResponse.md)

> **VerpflegskostenBeitragsbefreiung**
* Befreiung: [Befreiung für den Verpflegskostenbeitrag N](CodeSystem-VerpflegskostenBeitragsbefreiungCS.md#VerpflegskostenBeitragsbefreiungCS-N): Es liegt keine Befreiung vom Verpflegskostenbeitrag vor.
* Zeitraum: 2024-02-22 --> 2024-08-21

> **Supporting Info Extension for ClaimResponse - Sonderklasse Slice**
* category: Allgemeine Gebührenklasse/Sonderklasse
* code: Allgemeine Gebührenklasse
* sequence: 2
* timing: 2024-02-22 19:33:00+0200 --> (ongoing)

> **Supporting Info Extension for ClaimResponse - Vortageanzahl auf Kostenbeitrag**
* category: Vortageanzahl auf Kostenbeitrag
* value: 2
* sequence: 4

**status**: Active

**type**: Institutional

**use**: Preauthorization

**patient**: [Sonnenschein Susi (official) Female, DoB: 1969-04-21 ( Social Security Number: 9994210469)](Patient-PJ1Patient.md)

**created**: 2025-02-18

**insurer**: [Organization Österreichische Gesundheitskasse Wien](Organization-SV11.md)

**requestor**: [Organization Herz Jesu-Krankenhaus](Organization-OrganizationHerzJesuKrankenhaus.md)

**request**: [Claim: status = active; type = Institutional; use = preauthorization; created = 2025-02-17](Claim-PJ1VAERequest1.md)

**outcome**: Processing Complete

**decision**: bewilligt (nur für stationären Bereich)

**preAuthPeriod**: 2024-02-22 --> 2024-08-21



## Resource Content

```json
{
  "resourceType" : "ClaimResponse",
  "id" : "PJ1VAEResponse1",
  "meta" : {
    "profile" : ["https://elga.moped.at/StructureDefinition/MopedVAEResponse"]
  },
  "extension" : [
    {
      "extension" : [
        {
          "url" : "Befreiung",
          "valueCoding" : {
            "system" : "https://elga.moped.at/CodeSystem/VerpflegskostenBeitragsbefreiungCS",
            "code" : "N"
          }
        },
        {
          "url" : "Zeitraum",
          "valuePeriod" : {
            "start" : "2024-02-22",
            "end" : "2024-08-21"
          }
        }
      ],
      "url" : "https://elga.moped.at/StructureDefinition/moped-ext-verpflegskostenBeitragsbefreiung"
    },
    {
      "extension" : [
        {
          "url" : "category",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "https://elga.moped.at/CodeSystem/ClaimSupportingInformationCategoryCS",
                "code" : "KLAS"
              }
            ]
          }
        },
        {
          "url" : "code",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "https://elga.moped.at/CodeSystem/SonderklasseCS",
                "code" : "A"
              }
            ]
          }
        },
        {
          "url" : "sequence",
          "valuePositiveInt" : 2
        },
        {
          "url" : "timing",
          "valuePeriod" : {
            "start" : "2024-02-22T19:33:00+02:00"
          }
        }
      ],
      "url" : "https://elga.moped.at/StructureDefinition/MopedSupportingInfoSonderklasse"
    },
    {
      "extension" : [
        {
          "url" : "category",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "https://elga.moped.at/CodeSystem/ClaimSupportingInformationCategoryCS",
                "code" : "VTAGE"
              }
            ]
          }
        },
        {
          "url" : "value",
          "valueQuantity" : {
            "value" : 2
          }
        },
        {
          "url" : "sequence",
          "valuePositiveInt" : 4
        }
      ],
      "url" : "https://elga.moped.at/StructureDefinition/MopedSupportingInfoVortageanzahlAufKostenbeitrag"
    }
  ],
  "status" : "active",
  "type" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/claim-type",
        "code" : "institutional"
      }
    ]
  },
  "use" : "preauthorization",
  "patient" : {
    "reference" : "Patient/PJ1Patient"
  },
  "created" : "2025-02-18",
  "insurer" : {
    "reference" : "Organization/SV11"
  },
  "requestor" : {
    "reference" : "Organization/OrganizationHerzJesuKrankenhaus"
  },
  "request" : {
    "reference" : "Claim/PJ1VAERequest1"
  },
  "outcome" : "complete",
  "decision" : {
    "coding" : [
      {
        "system" : "https://elga.moped.at/CodeSystem/VAEStatusCS",
        "code" : "00"
      }
    ]
  },
  "preAuthPeriod" : {
    "start" : "2024-02-22",
    "end" : "2024-08-21"
  }
}

```
