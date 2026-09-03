# Device: RiskAssist AI - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Device: RiskAssist AI**

## Example Device: Device: RiskAssist AI

Profile: [EU AI System Device](StructureDefinition-eu-ai-device.md)

> **Third-Country Data Transfer**
* transferFlag: false

**Model Card Reference**: [DocumentReference: extension = Not Clinically Validated,,,; status = current; type = AI Model Card; date = 2026-03-01 10:00:00+0000; description = Synthetic model card for a deterministic AI-output simulation component used in the PoC.](DocumentReference-modelcard-riskassist-ai.md)

**EU Conformity Declaration Reference**: [DocumentReference: status = current](DocumentReference-eu-conformity-declaration.md)

**identifier**: EU AI Registration Number/EU-AI-000123

**status**: Active

**manufacturer**: ExampleMed AI GmbH

### Names

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Value** | **Type** | **Display** |
| * | RiskAssist AI | Registered name | true |

### Versions

| | |
| :--- | :--- |
| - | **Value** |
| * | 1.0.0 |

### ConformsTos

| | | |
| :--- | :--- | :--- |
| - | **Category** | **Specification** |
| * | quality-management-system | Synthetic QMS certification reference for PoC purposes. |

> **property****type**: CE Marking Status**value**: true

> **property****type**: Notified Body Identifier**value**: NB-0000

> **property****type**: Expected Lifetime**value**: 5 years (Details: UCUM codea = 'a')

> **property****type**: Intended Purpose**value**: Supportive risk stratification in acute care settings

> **property****type**: Target Population**value**: Adult patients with suspected infection in an acute care setting

**owner**: [Organization Example Hospital](Organization-organization-examplehospital.md)

**note**: , 

> 

Synthetic maintenance information for PoC purposes.


> 

AI-assisted early warning risk assessment based on synthetic NEWS2-inspired vital parameters.




## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "device-riskassist-ai",
  "meta" : {
    "profile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-device"]
  },
  "extension" : [{
    "extension" : [{
      "url" : "transferFlag",
      "valueBoolean" : false
    }],
    "url" : "http://example.org/fhir/eu-ai-transparency/StructureDefinition/third-country-data-transfer"
  },
  {
    "url" : "http://example.org/fhir/eu-ai-transparency/StructureDefinition/ext-model-card",
    "valueReference" : {
      "reference" : "DocumentReference/modelcard-riskassist-ai"
    }
  },
  {
    "url" : "http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-conformity-reference",
    "valueReference" : {
      "reference" : "DocumentReference/eu-conformity-declaration"
    }
  }],
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/eu-ai-identifier-type-cs",
        "code" : "eu-ai-registration-number"
      }]
    },
    "system" : "http://example.org/fhir/sid/eu-ai-database",
    "value" : "EU-AI-000123"
  }],
  "status" : "active",
  "manufacturer" : "ExampleMed AI GmbH",
  "name" : [{
    "value" : "RiskAssist AI",
    "type" : "registered-name",
    "display" : true
  }],
  "version" : [{
    "value" : "1.0.0"
  }],
  "conformsTo" : [{
    "category" : {
      "text" : "quality-management-system"
    },
    "specification" : {
      "text" : "Synthetic QMS certification reference for PoC purposes."
    }
  }],
  "property" : [{
    "type" : {
      "coding" : [{
        "system" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/eu-ai-system-property-cs",
        "code" : "ce-mark"
      }]
    },
    "valueBoolean" : true
  },
  {
    "type" : {
      "coding" : [{
        "system" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/eu-ai-system-property-cs",
        "code" : "notified-body-id"
      }]
    },
    "valueString" : "NB-0000"
  },
  {
    "type" : {
      "coding" : [{
        "system" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/eu-ai-system-property-cs",
        "code" : "expected-lifetime"
      }]
    },
    "valueQuantity" : {
      "value" : 5,
      "unit" : "years",
      "system" : "http://unitsofmeasure.org",
      "code" : "a"
    }
  },
  {
    "type" : {
      "coding" : [{
        "system" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/eu-ai-system-property-cs",
        "code" : "intended-purpose"
      }]
    },
    "valueString" : "Supportive risk stratification in acute care settings"
  },
  {
    "type" : {
      "coding" : [{
        "system" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/eu-ai-system-property-cs",
        "code" : "target-population"
      }]
    },
    "valueCodeableConcept" : {
      "text" : "Adult patients with suspected infection in an acute care setting"
    }
  }],
  "owner" : {
    "reference" : "Organization/organization-examplehospital"
  },
  "note" : [{
    "text" : "Synthetic maintenance information for PoC purposes."
  },
  {
    "text" : "AI-assisted early warning risk assessment based on synthetic NEWS2-inspired vital parameters."
  }]
}

```
