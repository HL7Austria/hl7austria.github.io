# EU AI System Device - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EU AI System Device**

## Resource Profile: EU AI System Device 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-device | *Version*:0.1.0 |
| Draft as of 2026-09-02 | *Computable Name*:EU_AIDevice |

 
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
  "date" : "2026-09-02T10:48:14+00:00",
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
      "short" : "Reference to the AI model card",
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
      "short" : "EU AI database registration number",
      "definition" : "The unique registration number assigned to the high-risk AI system in the official EU AI database.",
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
          "system" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/eu-ai-identifier-type-cs",
          "code" : "eu-ai-registration-number"
        }]
      }
    },
    {
      "id" : "Device.identifier:euDatabaseId.system",
      "path" : "Device.identifier.system",
      "min" : 1
    },
    {
      "id" : "Device.identifier:euDatabaseId.value",
      "path" : "Device.identifier.value",
      "min" : 1
    },
    {
      "id" : "Device.manufacturer",
      "path" : "Device.manufacturer",
      "short" : "Name of the AI manufacturer",
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
      "short" : "System Name"
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
      "short" : "System Version"
    },
    {
      "id" : "Device.conformsTo",
      "path" : "Device.conformsTo",
      "short" : "Applicable standards and certifications",
      "mustSupport" : true
    },
    {
      "id" : "Device.conformsTo.specification",
      "path" : "Device.conformsTo.specification",
      "short" : "Standard, specification, or certification",
      "mustSupport" : true
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
      "short" : "CE marking status",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Device.property:ceMark.type",
      "path" : "Device.property.type",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/eu-ai-system-property-cs",
          "code" : "ce-mark"
        }]
      }
    },
    {
      "id" : "Device.property:notifiedBody",
      "path" : "Device.property",
      "sliceName" : "notifiedBody",
      "short" : "Notified body identification number",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Device.property:notifiedBody.type",
      "path" : "Device.property.type",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/eu-ai-system-property-cs",
          "code" : "notified-body-id"
        }]
      }
    },
    {
      "id" : "Device.property:expectedLifetime",
      "path" : "Device.property",
      "sliceName" : "expectedLifetime",
      "short" : "Expected system lifetime",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Device.property:expectedLifetime.type",
      "path" : "Device.property.type",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/eu-ai-system-property-cs",
          "code" : "expected-lifetime"
        }]
      }
    },
    {
      "id" : "Device.property:intendedPurpose",
      "path" : "Device.property",
      "sliceName" : "intendedPurpose",
      "short" : "Intended purpose",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Device.property:intendedPurpose.type",
      "path" : "Device.property.type",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/eu-ai-system-property-cs",
          "code" : "intended-purpose"
        }]
      }
    },
    {
      "id" : "Device.property:targetPopulation",
      "path" : "Device.property",
      "sliceName" : "targetPopulation",
      "short" : "Target population",
      "min" : 1,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Device.property:targetPopulation.type",
      "path" : "Device.property.type",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/eu-ai-system-property-cs",
          "code" : "target-population"
        }]
      }
    },
    {
      "id" : "Device.owner",
      "path" : "Device.owner",
      "short" : "Organization responsible for the AI system",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-organization"]
      }],
      "mustSupport" : true
    }]
  }
}

```
