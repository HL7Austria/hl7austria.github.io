# Device: RiskAssist AI - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Device: RiskAssist AI**

## Example Device: Device: RiskAssist AI

Profile: [EU AI System Device](StructureDefinition-eu-ai-device.md)

> **Third-Country Data Transfer**
* transferFlag: false

**Model Card Reference**: [DocumentReference: extension = Not Clinically Validated,,,; status = current; type = AI Model Card; description = Synthetic model card for a deterministic AI-output simulation component used in the PoC.](DocumentReference-modelcard-riskassist-ai.md)

**identifier**: EU AI Database Identifier/EU-AI-000123

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

> **property****type**: CE Mark**value**: true

> **property****type**: Notified Body ID**value**: NB-0000

> **property****type**: Expected Lifetime**value**: 5 years (Details: UCUM codea = 'a')

> **property****type**: Medical Purpose**value**: Supportive risk stratification in acute care settings

> **property****type**: Target Population**value**: Adult patients with suspected infection in an acute care setting

**owner**: [Organization Example Hospital](Organization-organization-examplehospital.md)

**contact**: [contact@examplemed.example](mailto:contact@examplemed.example), [dpo@examplemed.example](mailto:dpo@examplemed.example)

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
  }],
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/EUAIActCodeSystem",
        "code" : "eu-ai-database-id",
        "display" : "EU AI Database Identifier"
      }],
      "text" : "EU AI Database Identifier"
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
        "system" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/EUAIActCodeSystem",
        "code" : "ce-mark"
      }]
    },
    "valueBoolean" : true
  },
  {
    "type" : {
      "coding" : [{
        "system" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/EUAIActCodeSystem",
        "code" : "notified-body-id"
      }]
    },
    "valueString" : "NB-0000"
  },
  {
    "type" : {
      "coding" : [{
        "system" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/EUAIActCodeSystem",
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
        "system" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/EUAIActCodeSystem",
        "code" : "medical-purpose"
      }]
    },
    "valueString" : "Supportive risk stratification in acute care settings"
  },
  {
    "type" : {
      "coding" : [{
        "system" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/EUAIActCodeSystem",
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
  "contact" : [{
    "system" : "email",
    "value" : "contact@examplemed.example",
    "use" : "work"
  },
  {
    "system" : "email",
    "value" : "dpo@examplemed.example",
    "use" : "work"
  }],
  "note" : [{
    "text" : "Synthetic maintenance information for PoC purposes."
  },
  {
    "text" : "AI-assisted early warning risk assessment based on synthetic NEWS2-inspired vital parameters."
  }]
}

```
