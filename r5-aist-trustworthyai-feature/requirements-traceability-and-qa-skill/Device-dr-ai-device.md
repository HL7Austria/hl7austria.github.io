# Device: DiagnosticAssist AI - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Device: DiagnosticAssist AI**

## Example Device: Device: DiagnosticAssist AI

Profile: [Trust AI System Device](StructureDefinition-trust-ai-device.md)

> **Third-Country Data Transfer**
* transferFlag: false

**Model Card Reference**: [DocumentReference: extension = Not Clinically Validated,,,; status = current; type = AI Model Card; date = 2026-03-01 10:00:00+0000; description = Synthetic model card for an AI system generating diagnostic reports from structured clinical input.](DocumentReference-dr-model-card.md)

**EU Conformity Declaration Reference**: [DocumentReference: status = current](DocumentReference-eu-conformity-declaration-2.md)

**identifier**: Trust AI Registration Number/trust-ai-DIAG-001

**status**: Active

**manufacturer**: Example AI Medical GmbH

### Names

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Type** |
| * | DiagnosticAssist AI | Registered name |

### Versions

| | |
| :--- | :--- |
| - | **Value** |
| * | 1.0.0 |

### ConformsTos

| | |
| :--- | :--- |
| - | **Specification** |
| * | Synthetic quality management certification |

> **property****type**: CE Marking Status**value**: true

> **property****type**: Expected Lifetime**value**: 5 years (Details: UCUM codea = 'a')

> **property****type**: Intended Purpose**value**: Support diagnostic assessment from clinical findings

> **property****type**: Target Population**value**: Adult patients

**owner**: [Organization Example Diagnostic Center](Organization-dr-organization.md)

**contact**: [manufacturer@example-ai-medical.example](mailto:manufacturer@example-ai-medical.example), [dpo@example-ai-medical.example](mailto:dpo@example-ai-medical.example)

**note**: 

> 

Annual maintenance and validation required.




## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "dr-ai-device",
  "meta" : {
    "profile" : ["http://example.org/fhir/trust-ai-transparency/StructureDefinition/trust-ai-device"]
  },
  "extension" : [{
    "extension" : [{
      "url" : "transferFlag",
      "valueBoolean" : false
    }],
    "url" : "http://example.org/fhir/trust-ai-transparency/StructureDefinition/third-country-data-transfer"
  },
  {
    "url" : "http://example.org/fhir/trust-ai-transparency/StructureDefinition/ext-model-card",
    "valueReference" : {
      "reference" : "DocumentReference/dr-model-card"
    }
  },
  {
    "url" : "http://example.org/fhir/trust-ai-transparency/StructureDefinition/trust-ai-conformity-reference",
    "valueReference" : {
      "reference" : "DocumentReference/eu-conformity-declaration-2"
    }
  }],
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://example.org/fhir/trust-ai-transparency/CodeSystem/trust-ai-identifier-type-cs",
        "code" : "trust-ai-registration-number"
      }]
    },
    "system" : "http://example.org/fhir/sid/trust-ai-database",
    "value" : "trust-ai-DIAG-001"
  }],
  "status" : "active",
  "manufacturer" : "Example AI Medical GmbH",
  "name" : [{
    "value" : "DiagnosticAssist AI",
    "type" : "registered-name"
  }],
  "version" : [{
    "value" : "1.0.0"
  }],
  "conformsTo" : [{
    "specification" : {
      "text" : "Synthetic quality management certification"
    }
  }],
  "property" : [{
    "type" : {
      "coding" : [{
        "system" : "http://example.org/fhir/trust-ai-transparency/CodeSystem/trust-ai-system-property-cs",
        "code" : "ce-mark"
      }]
    },
    "valueBoolean" : true
  },
  {
    "type" : {
      "coding" : [{
        "system" : "http://example.org/fhir/trust-ai-transparency/CodeSystem/trust-ai-system-property-cs",
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
        "system" : "http://example.org/fhir/trust-ai-transparency/CodeSystem/trust-ai-system-property-cs",
        "code" : "intended-purpose"
      }]
    },
    "valueString" : "Support diagnostic assessment from clinical findings"
  },
  {
    "type" : {
      "coding" : [{
        "system" : "http://example.org/fhir/trust-ai-transparency/CodeSystem/trust-ai-system-property-cs",
        "code" : "target-population"
      }]
    },
    "valueCodeableConcept" : {
      "text" : "Adult patients"
    }
  }],
  "owner" : {
    "reference" : "Organization/dr-organization"
  },
  "contact" : [{
    "system" : "email",
    "value" : "manufacturer@example-ai-medical.example"
  },
  {
    "system" : "email",
    "value" : "dpo@example-ai-medical.example"
  }],
  "note" : [{
    "text" : "Annual maintenance and validation required."
  }]
}

```
