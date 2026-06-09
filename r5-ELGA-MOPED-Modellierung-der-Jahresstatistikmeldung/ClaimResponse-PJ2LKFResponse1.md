# ELGA.MOPED\PJ2LKFResponse1 - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PJ2LKFResponse1**

## Example ClaimResponse: PJ2LKFResponse1

Profiles: [AT MOPED ClaimResponse LKFResponse Basis Profil](StructureDefinition-at-moped-claimresponse-lkfresponse-basis.md), `https://elga.moped.at/StructureDefinition/AtMopedClaimResponseLKFResponseBasis`

**Abrechnung - Knoten**: [LKF Abrechnungsknoten: C](CodeSystem-LKFAbrechnungsKnotenCS.md#LKFAbrechnungsKnotenCS-C) (C)

**status**: Active

**type**: LKF Response

**use**: Claim

**patient**: [Santiago Schnabeltier Test Male, DoB: 1985-03-19](Patient-PJ2Patient.md)

**created**: 2025-02-24

**requestor**: [Organization Herz Jesu-Krankenhaus](Organization-OrganizationHerzJesuKrankenhaus.md)

**request**: [Claim: extension = C (LKF Abrechnungsknoten#C),Ja (Abrechnung des stationären Aufenthalts/ambulanten Besuchs erfolgt über den Landesgesundheitsfonds/PRIKRAF) (Fondsrelevanz#J); status = active; type = LKF Request; subType = LKF Vorläufige Meldung; use = claim; created = 2025-02-24; diagnosisRelatedGroup = Frakturen der unteren Extremität/Becken, außer Vorfuß](Claim-PJ2LKFRequest1.md)

**outcome**: Processing Complete

**decision**: Approved

**diagnosisRelatedGroup**: Frakturen der unteren Extremität/Becken, außer Vorfuß



## Resource Content

```json
{
  "resourceType" : "ClaimResponse",
  "id" : "PJ2LKFResponse1",
  "meta" : {
    "profile" : ["https://elga.moped.at/StructureDefinition/at-moped-claimresponse-lkfresponse-basis",
    "https://elga.moped.at/StructureDefinition/AtMopedClaimResponseLKFResponseBasis"]
  },
  "extension" : [{
    "url" : "https://elga.moped.at/StructureDefinition/moped-ext-diagnoseKnoten",
    "valueCoding" : {
      "system" : "https://elga.moped.at/CodeSystem/LKFAbrechnungsKnotenCS",
      "code" : "C"
    }
  }],
  "status" : "active",
  "type" : {
    "coding" : [{
      "system" : "https://elga.moped.at/CodeSystem/MopedClaimTypeCS",
      "code" : "LKFRESP"
    }]
  },
  "use" : "claim",
  "patient" : {
    "reference" : "Patient/PJ2Patient"
  },
  "created" : "2025-02-24",
  "requestor" : {
    "reference" : "Organization/OrganizationHerzJesuKrankenhaus"
  },
  "request" : {
    "reference" : "Claim/PJ2LKFRequest1"
  },
  "outcome" : "complete",
  "decision" : {
    "coding" : [{
      "system" : "http://hl7.org/fhir/claim-decision",
      "code" : "approved"
    }]
  },
  "diagnosisRelatedGroup" : {
    "coding" : [{
      "system" : "https://elga.moped.at/CodeSystem/LKFHauptdiagnosegruppenCS",
      "code" : "HDG15.03"
    }]
  }
}

```
