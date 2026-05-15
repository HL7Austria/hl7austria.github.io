# ELGA.MOPED\PJ2Coverage - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PJ2Coverage**

## Example Coverage: PJ2Coverage

Profile: [MOPED Coverage](StructureDefinition-MopedCoverage.md)

**identifier**: `urn:oid:1.2.40.0.10.1.4.3.9.1`/FJK5MCDPMRCY

**status**: Active

**kind**: Insurance

**policyHolder**: [Santiago Schnabeltier Test Male, DoB: 1985-03-19](Patient-PJ2Patient.md)

**beneficiary**: [Santiago Schnabeltier Test Male, DoB: 1985-03-19](Patient-PJ2Patient.md)

**insurer**: [Organization Österreichische Gesundheitskasse Oberösterreich](Organization-SV14.md)

### Classes

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Value** |
| * | Group | `http://svc.co.at/CodeSystem/ecard-versichertenkategorie-cs`/01 |



## Resource Content

```json
{
  "resourceType" : "Coverage",
  "id" : "PJ2Coverage",
  "meta" : {
    "profile" : ["https://elga.moped.at/StructureDefinition/MopedCoverage"]
  },
  "identifier" : [{
    "system" : "urn:oid:1.2.40.0.10.1.4.3.9.1",
    "value" : "FJK5MCDPMRCY",
    "assigner" : {
      "reference" : "Organization/OrganizationKrankenhausRied"
    }
  }],
  "status" : "active",
  "kind" : "insurance",
  "policyHolder" : {
    "reference" : "Patient/PJ2Patient"
  },
  "beneficiary" : {
    "reference" : "Patient/PJ2Patient"
  },
  "insurer" : {
    "reference" : "Organization/SV14"
  },
  "class" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/coverage-class",
        "code" : "group"
      }]
    },
    "value" : {
      "system" : "http://svc.co.at/CodeSystem/ecard-versichertenkategorie-cs",
      "value" : "01"
    }
  }]
}

```
