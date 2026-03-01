# ELGA.MOPED\PJ1Coverage - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PJ1Coverage**

## Example Coverage: PJ1Coverage

Profile: [MOPED Coverage](StructureDefinition-MopedCoverage.md)

**identifier**: `urn:oid:1.2.40.0.10.1.4.3.9.1`/XB4G37PFN9FJ

**status**: Active

**kind**: Insurance

**policyHolder**: [Sonnenschein Susi (official) Female, DoB: 1969-04-21 ( Social Security Number: 9994210469)](Patient-PJ1Patient.md)

**beneficiary**: [Sonnenschein Susi (official) Female, DoB: 1969-04-21 ( Social Security Number: 9994210469)](Patient-PJ1Patient.md)

**insurer**: [Organization Österreichische Gesundheitskasse Wien](Organization-SV11.md)

### Classes

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Value** |
| * | Group | `http://svc.co.at/CodeSystem/ecard-versichertenkategorie-cs`/01 |



## Resource Content

```json
{
  "resourceType" : "Coverage",
  "id" : "PJ1Coverage",
  "meta" : {
    "profile" : ["https://elga.moped.at/StructureDefinition/MopedCoverage"]
  },
  "identifier" : [{
    "system" : "urn:oid:1.2.40.0.10.1.4.3.9.1",
    "value" : "XB4G37PFN9FJ",
    "assigner" : {
      "reference" : "Organization/OrganizationHerzJesuKrankenhaus"
    }
  }],
  "status" : "active",
  "kind" : "insurance",
  "policyHolder" : {
    "reference" : "Patient/PJ1Patient"
  },
  "beneficiary" : {
    "reference" : "Patient/PJ1Patient"
  },
  "insurer" : {
    "reference" : "Organization/SV11"
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
