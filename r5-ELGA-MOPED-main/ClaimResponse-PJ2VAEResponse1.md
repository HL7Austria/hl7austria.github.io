# ELGA.MOPED\PJ2VAEResponse1 - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PJ2VAEResponse1**

## Example ClaimResponse: PJ2VAEResponse1

Profile: [MOPED VAEResponse](StructureDefinition-MopedVAEResponse.md)

> **VerpflegskostenBeitragsbefreiung**
* Befreiung: [Befreiung für den Verpflegskostenbeitrag: N](CodeSystem-VerpflegskostenBeitragsbefreiungCS.md#VerpflegskostenBeitragsbefreiungCS-N) (Es liegt keine Befreiung vom Verpflegskostenbeitrag vor.)
* Zeitraum: 2024-08-26 --> (ongoing)

> **Supporting Info Extension for ClaimResponse - Sonderklasse Slice**
* category: Allgemeine Gebührenklasse/Sonderklasse
* code: Allgemeine Gebührenklasse
* sequence: 2
* timing: 2024-08-08 08:21:00+0200 --> (ongoing)

> **Supporting Info Extension for ClaimResponse - Vortageanzahl auf Kostenbeitrag**
* category: Vortageanzahl auf Kostenbeitrag
* value: 0
* sequence: 4

**status**: Active

**type**: VAE Response

**use**: Preauthorization

**patient**: [Santiago Schnabeltier Test (official) Male, DoB: 1985-03-19 ( Social Security Number: 2873111374)](Patient-PJ2Patient.md)

**created**: 2025-02-24

**insurer**: [Organization Österreichische Gesundheitskasse Oberösterreich](Organization-SV14.md)

**requestor**: [Organization Krankenhaus der Barmherzigen Schwestern vom Hl. Vinzenz von Paul Ried](Organization-OrganizationKrankenhausRied.md)

**request**: [Claim: status = active; type = VAE Request; subType = initiale VAE; use = preauthorization; created = 2025-02-17](Claim-PJ2VAERequest1.md)

**outcome**: Processing Complete

**decision**: bewilligt (nur für stationären Bereich)

**preAuthPeriod**: 2024-08-08 --> 2024-08-26



## Resource Content

```json
{
  "resourceType" : "ClaimResponse",
  "id" : "PJ2VAEResponse1",
  "meta" : {
    "profile" : ["https://elga.moped.at/StructureDefinition/MopedVAEResponse"]
  },
  "extension" : [{
    "extension" : [{
      "url" : "Befreiung",
      "valueCoding" : {
        "system" : "https://elga.moped.at/CodeSystem/VerpflegskostenBeitragsbefreiungCS",
        "code" : "N"
      }
    },
    {
      "url" : "Zeitraum",
      "valuePeriod" : {
        "start" : "2024-08-26"
      }
    }],
    "url" : "https://elga.moped.at/StructureDefinition/moped-ext-verpflegskostenBeitragsbefreiung"
  },
  {
    "extension" : [{
      "url" : "category",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://elga.moped.at/CodeSystem/ClaimSupportingInformationCategoryCS",
          "code" : "KLAS"
        }]
      }
    },
    {
      "url" : "code",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://elga.moped.at/CodeSystem/SonderklasseCS",
          "code" : "A"
        }]
      }
    },
    {
      "url" : "sequence",
      "valuePositiveInt" : 2
    },
    {
      "url" : "timing",
      "valuePeriod" : {
        "start" : "2024-08-08T08:21:00+02:00"
      }
    }],
    "url" : "https://elga.moped.at/StructureDefinition/MopedSupportingInfoSonderklasse"
  },
  {
    "extension" : [{
      "url" : "category",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://elga.moped.at/CodeSystem/ClaimSupportingInformationCategoryCS",
          "code" : "VTAGE"
        }]
      }
    },
    {
      "url" : "value",
      "valueQuantity" : {
        "value" : 0
      }
    },
    {
      "url" : "sequence",
      "valuePositiveInt" : 4
    }],
    "url" : "https://elga.moped.at/StructureDefinition/MopedSupportingInfoVortageanzahlAufKostenbeitrag"
  }],
  "status" : "active",
  "type" : {
    "coding" : [{
      "system" : "https://elga.moped.at/CodeSystem/MopedClaimTypeCS",
      "code" : "VAERESP"
    }]
  },
  "use" : "preauthorization",
  "patient" : {
    "reference" : "Patient/PJ2Patient"
  },
  "created" : "2025-02-24",
  "insurer" : {
    "reference" : "Organization/SV14"
  },
  "requestor" : {
    "reference" : "Organization/OrganizationKrankenhausRied"
  },
  "request" : {
    "reference" : "Claim/PJ2VAERequest1"
  },
  "outcome" : "complete",
  "decision" : {
    "coding" : [{
      "system" : "https://elga.moped.at/CodeSystem/VAEStatusCS",
      "code" : "00"
    }]
  },
  "preAuthPeriod" : {
    "start" : "2024-08-08",
    "end" : "2024-08-26"
  }
}

```
