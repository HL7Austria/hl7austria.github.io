# Device: AuraScan Pulmo-Net System - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Device: AuraScan Pulmo-Net System**

## Example Device: Device: AuraScan Pulmo-Net System

Profile: [EU AI Act Compliant Device](StructureDefinition-eu-ai-device.md)

**Model Card Reference**: [DocumentReference: extension = ,,; status = current; type = AI Model Card; description = Intended for adult thorax CTs. Residual Risk: Potential for false-positive vascular artifacts.](DocumentReference-modelcard-aurascan.md)

> **Third-Country Data Transfer**
* transferFlag: false
* destinationCountry: AT

**identifier**: EU AI Database Identifier/EU-AI-2042-XJ992

**manufacturer**: Aetheria HealthTech Systems Corp.

### Names

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Type** |
| * | AuraScan Pulmo-Net Diagnostics | Registered name |

### Versions

| | |
| :--- | :--- |
| - | **Value** |
| * | 3.1.0 |

> **conformsTo****specification**: ISO 13485:2016 Medical devices - QMS

> **conformsTo****specification**: EU AI Act High-Risk Compliance

> **property****type**: CE Mark**value**: true

> **property****type**: Notified Body ID**value**: 0123

> **property****type**: Expected Lifetime**value**: 5 years (Details: UCUM codea = 'a')

> **property****type**: Medical Purpose**value**: Automated detection of lung nodules in CT Thorax scans.

> **property****type**: Target Population**value**: Amputation stump

**owner**: [Organization St. Chronos Medical Center](Organization-org-chronos-medical.md)

**contact**: [support@aetheria-health.test](mailto:support@aetheria-health.test), [+49 000 98765432](tel:+4900098765432)

**note**: , 

> 

Maintenance: Hardware calibration required every 12 months.


> 

Security: Software patches are deployed monthly via remote update.




## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "device-aurascan-ai",
  "meta" : {
    "profile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-device"]
  },
  "extension" : [{
    "url" : "http://example.org/fhir/eu-ai-transparency/StructureDefinition/ext-model-card",
    "valueReference" : {
      "reference" : "DocumentReference/modelcard-aurascan"
    }
  },
  {
    "extension" : [{
      "url" : "transferFlag",
      "valueBoolean" : false
    },
    {
      "url" : "destinationCountry",
      "valueCode" : "AT"
    }],
    "url" : "http://example.org/fhir/eu-ai-transparency/StructureDefinition/third-country-data-transfer"
  }],
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/EUAIActCodeSystem",
        "code" : "eu-ai-database-id",
        "display" : "EU AI Database Identifier"
      }]
    },
    "system" : "http://example.org/fhir/eu-ai-transparency/sid/eu-ai-database",
    "value" : "EU-AI-2042-XJ992"
  }],
  "manufacturer" : "Aetheria HealthTech Systems Corp.",
  "name" : [{
    "value" : "AuraScan Pulmo-Net Diagnostics",
    "type" : "registered-name"
  }],
  "version" : [{
    "value" : "3.1.0"
  }],
  "conformsTo" : [{
    "specification" : {
      "text" : "ISO 13485:2016 Medical devices - QMS"
    }
  },
  {
    "specification" : {
      "text" : "EU AI Act High-Risk Compliance"
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
    "valueString" : "0123"
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
    "valueString" : "Automated detection of lung nodules in CT Thorax scans."
  },
  {
    "type" : {
      "coding" : [{
        "system" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/EUAIActCodeSystem",
        "code" : "target-population"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "38033009"
      }]
    }
  }],
  "owner" : {
    "reference" : "Organization/org-chronos-medical"
  },
  "contact" : [{
    "system" : "email",
    "value" : "support@aetheria-health.test",
    "use" : "work"
  },
  {
    "system" : "phone",
    "value" : "+49 000 98765432",
    "use" : "work"
  }],
  "note" : [{
    "text" : "Maintenance: Hardware calibration required every 12 months."
  },
  {
    "text" : "Security: Software patches are deployed monthly via remote update."
  }]
}

```
