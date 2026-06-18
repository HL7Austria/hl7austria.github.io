# Third-Country Data Transfer - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Third-Country Data Transfer**

## Extension: Third-Country Data Transfer 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/eu-ai-transparency/StructureDefinition/third-country-data-transfer | *Version*:0.1.0 |
| Draft as of 2026-06-18 | *Computable Name*:ThirdCountryDataTransfer |

Captures if patient data is transferred outside the EU by this device.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [EU AI System Device](StructureDefinition-eu-ai-device.md)
* Examples for this Extension: [Device/device-riskassist-ai](Device-device-riskassist-ai.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir.ig.eu.aitransparency|current/StructureDefinition/StructureDefinition-third-country-data-transfer.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-third-country-data-transfer.csv), [Excel](StructureDefinition-third-country-data-transfer.xlsx), [Schematron](StructureDefinition-third-country-data-transfer.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "third-country-data-transfer",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "http://example.org/fhir/eu-ai-transparency/StructureDefinition/third-country-data-transfer",
  "version" : "0.1.0",
  "name" : "ThirdCountryDataTransfer",
  "title" : "Third-Country Data Transfer",
  "status" : "draft",
  "date" : "2026-06-18T12:04:51+00:00",
  "publisher" : "Selina Adlberger",
  "description" : "Captures if patient data is transferred outside the EU by this device.",
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "Device"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Third-Country Data Transfer",
      "definition" : "Captures if patient data is transferred outside the EU by this device."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "min" : 1
    },
    {
      "id" : "Extension.extension:transferFlag",
      "path" : "Extension.extension",
      "sliceName" : "transferFlag",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:transferFlag.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:transferFlag.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "transferFlag"
    },
    {
      "id" : "Extension.extension:transferFlag.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Extension.extension:destinationCountry",
      "path" : "Extension.extension",
      "sliceName" : "destinationCountry",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:destinationCountry.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:destinationCountry.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "destinationCountry"
    },
    {
      "id" : "Extension.extension:destinationCountry.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "code"
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://example.org/fhir/eu-ai-transparency/StructureDefinition/third-country-data-transfer"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
