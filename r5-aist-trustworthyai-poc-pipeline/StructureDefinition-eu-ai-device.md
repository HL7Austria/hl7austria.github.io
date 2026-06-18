# EU AI System Device - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EU AI System Device**

## Resource Profile: EU AI System Device 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-device | *Version*:0.1.0 |
| Draft as of 2026-06-18 | *Computable Name*:EU_AIDevice |

 
A Device profile representing an AI system or software component, including system identification, versioning, intended purpose, and selected regulatory documentation metadata. 

**Usages:**

* Refer to this Profile: [EU AI Execution Audit Event](StructureDefinition-eu-ai-machine-execution-audit-event.md), [EU AI Act Model Card](StructureDefinition-eu-ai-model-card.md), [EU AI Generated Observation](StructureDefinition-eu-ai-observation.md) and [EU AI Provenance](StructureDefinition-eu-ai-provenance.md)
* Examples for this Profile: [Device/device-riskassist-ai](Device-device-riskassist-ai.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir.ig.eu.aitransparency|current/StructureDefinition/StructureDefinition-eu-ai-device.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-eu-ai-device.csv), [Excel](StructureDefinition-eu-ai-device.xlsx), [Schematron](StructureDefinition-eu-ai-device.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "eu-ai-device",
  "url" : "http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-device",
  "version" : "0.1.0",
  "name" : "EU_AIDevice",
  "title" : "EU AI System Device",
  "status" : "draft",
  "date" : "2026-06-18T11:52:19+00:00",
  "publisher" : "Selina Adlberger",
  "description" : "A Device profile representing an AI system or software component, including system identification, versioning, intended purpose, and selected regulatory documentation metadata.",
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "interface",
    "uri" : "http://hl7.org/fhir/interface",
    "name" : "Interface Pattern"
  },
  {
    "identity" : "udi",
    "uri" : "http://fda.gov/UDI",
    "name" : "UDI Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Device",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Device",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Device",
      "path" : "Device"
    },
    {
      "id" : "Device.extension",
      "path" : "Device.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 2
    },
    {
      "id" : "Device.extension:dataTransfer",
      "path" : "Device.extension",
      "sliceName" : "dataTransfer",
      "short" : "Third-Country Transfer Data",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/third-country-data-transfer"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Device.extension:modelCard",
      "path" : "Device.extension",
      "sliceName" : "modelCard",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/ext-model-card"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Device.identifier",
      "path" : "Device.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "type"
        }],
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Device.identifier:euDatabaseId",
      "path" : "Device.identifier",
      "sliceName" : "euDatabaseId",
      "short" : "EU AI database registration identifier",
      "definition" : "Identifier used to document the AI system's registration entry in the EU AI database or an equivalent AI system registry.",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Device.identifier:euDatabaseId.type",
      "path" : "Device.identifier.type",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/EUAIActCodeSystem",
          "code" : "eu-ai-database-id",
          "display" : "EU AI Database Identifier"
        }]
      },
      "mustSupport" : true
    },
    {
      "id" : "Device.identifier:euDatabaseId.system",
      "path" : "Device.identifier.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Device.identifier:euDatabaseId.value",
      "path" : "Device.identifier.value",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Device.manufacturer",
      "path" : "Device.manufacturer",
      "short" : "Name of the AI developer/manufacturer",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Device.name",
      "path" : "Device.name",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Device.name.value",
      "path" : "Device.name.value",
      "short" : "System Name",
      "mustSupport" : true
    },
    {
      "id" : "Device.version",
      "path" : "Device.version",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Device.version.value",
      "path" : "Device.version.value",
      "short" : "System Version",
      "mustSupport" : true
    },
    {
      "id" : "Device.conformsTo",
      "path" : "Device.conformsTo",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Device.conformsTo.specification",
      "path" : "Device.conformsTo.specification",
      "short" : "QMS Certification"
    },
    {
      "id" : "Device.property",
      "path" : "Device.property",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "type"
        }],
        "rules" : "open"
      },
      "min" : 4
    },
    {
      "id" : "Device.property:ceMark",
      "path" : "Device.property",
      "sliceName" : "ceMark",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Device.property:ceMark.type",
      "path" : "Device.property.type",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/EUAIActCodeSystem",
          "code" : "ce-mark"
        }]
      }
    },
    {
      "id" : "Device.property:ceMark.value[x]",
      "path" : "Device.property.value[x]",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Device.property:notifiedBody",
      "path" : "Device.property",
      "sliceName" : "notifiedBody",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Device.property:notifiedBody.type",
      "path" : "Device.property.type",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/EUAIActCodeSystem",
          "code" : "notified-body-id"
        }]
      }
    },
    {
      "id" : "Device.property:notifiedBody.value[x]",
      "path" : "Device.property.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Device.property:expectedLifetime",
      "path" : "Device.property",
      "sliceName" : "expectedLifetime",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Device.property:expectedLifetime.type",
      "path" : "Device.property.type",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/EUAIActCodeSystem",
          "code" : "expected-lifetime"
        }]
      }
    },
    {
      "id" : "Device.property:expectedLifetime.value[x]",
      "path" : "Device.property.value[x]",
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Device.property:medicalPurpose",
      "path" : "Device.property",
      "sliceName" : "medicalPurpose",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Device.property:medicalPurpose.type",
      "path" : "Device.property.type",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/EUAIActCodeSystem",
          "code" : "medical-purpose"
        }]
      }
    },
    {
      "id" : "Device.property:medicalPurpose.value[x]",
      "path" : "Device.property.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Device.property:targetPopulation",
      "path" : "Device.property",
      "sliceName" : "targetPopulation",
      "min" : 1,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Device.property:targetPopulation.type",
      "path" : "Device.property.type",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/EUAIActCodeSystem",
          "code" : "target-population"
        }]
      }
    },
    {
      "id" : "Device.property:targetPopulation.value[x]",
      "path" : "Device.property.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Device.owner",
      "path" : "Device.owner",
      "short" : "Healthcare provider responsible for the AI system",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-organization"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Device.contact",
      "path" : "Device.contact",
      "short" : "Manufacturer Contact AND DPO Contact Details",
      "min" : 2,
      "mustSupport" : true
    },
    {
      "id" : "Device.note",
      "path" : "Device.note",
      "short" : "Maintenance Requirements",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```
