# ELGA.MOPED\PJ1LKFResponse1 - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PJ1LKFResponse1**

## Example ClaimResponse: PJ1LKFResponse1

Profile: [MOPED LKFResponse](StructureDefinition-MopedLKFResponse.md)

**Abrechnung - Knoten**: [LKF Abrechnungsknoten D](CodeSystem-LKFAbrechnungsKnotenCS.md#LKFAbrechnungsKnotenCS-D): D

**status**: Active

**type**: Institutional

**use**: Claim

**patient**: [Sonnenschein Susi (official) Female, DoB: 1969-04-21 ( Social Security Number: 9994210469)](Patient-PJ1Patient.md)

**created**: 2024-10-31

**request**: [Claim: extension = D (LKF Abrechnungsknoten#D),Ja (Abrechnung des stationären Aufenthalts/ambulanten Besuchs erfolgt über den Landesgesundheitsfonds/PRIKRAF) (Fondsrelevanz#J); status = active; type = Institutional; use = claim; created = 2024-10-31; diagnosisRelatedGroup = Sonstige Erkrankungen - Nervensystem](Claim-PJ1LKFRequest1.md)

**outcome**: Processing Complete

**decision**: Approved

**diagnosisRelatedGroup**: Sonstige Erkrankungen - Nervensystem



## Resource Content

```json
{
  "resourceType" : "ClaimResponse",
  "id" : "PJ1LKFResponse1",
  "meta" : {
    "profile" : ["https://elga.moped.at/StructureDefinition/MopedLKFResponse"]
  },
  "extension" : [
    {
      "url" : "https://elga.moped.at/StructureDefinition/moped-ext-diagnoseKnoten",
      "valueCoding" : {
        "system" : "https://elga.moped.at/CodeSystem/LKFAbrechnungsKnotenCS",
        "code" : "D"
      }
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
  "use" : "claim",
  "patient" : {
    "reference" : "Patient/PJ1Patient"
  },
  "created" : "2024-10-31",
  "request" : {
    "reference" : "Claim/PJ1LKFRequest1"
  },
  "outcome" : "complete",
  "decision" : {
    "coding" : [
      {
        "system" : "http://hl7.org/fhir/claim-decision",
        "code" : "approved"
      }
    ]
  },
  "diagnosisRelatedGroup" : {
    "coding" : [
      {
        "system" : "https://elga.moped.at/CodeSystem/LKFHauptdiagnosegruppenCS",
        "code" : "HDG01.31"
      }
    ]
  }
}

```
