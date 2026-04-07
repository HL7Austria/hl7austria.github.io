# ELGA.MOPED\Supporting Info Extension for ClaimResponse - Vortageanzahl auf Kostenbeitrag - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Supporting Info Extension for ClaimResponse - Vortageanzahl auf Kostenbeitrag**

## Extension: Supporting Info Extension for ClaimResponse - Vortageanzahl auf Kostenbeitrag 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/MopedSupportingInfoVortageanzahlAufKostenbeitrag | *Version*:0.1.0 | |
| Draft as of 2026-04-07 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MopedSupportingInfoVortageanzahlAufKostenbeitrag |

Additional information codes regarding exceptions, special considerations, the condition, situation, prior or concurrent issues

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [MOPED VAEResponse](StructureDefinition-MopedVAEResponse.md)
* Examples for this Extension: [ClaimResponse/PJ1VAEResponse1](ClaimResponse-PJ1VAEResponse1.md) and [ClaimResponse/PJ2VAEResponse1](ClaimResponse-PJ2VAEResponse1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/MopedSupportingInfoVortageanzahlAufKostenbeitrag)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MopedSupportingInfoVortageanzahlAufKostenbeitrag.csv), [Excel](StructureDefinition-MopedSupportingInfoVortageanzahlAufKostenbeitrag.xlsx), [Schematron](StructureDefinition-MopedSupportingInfoVortageanzahlAufKostenbeitrag.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MopedSupportingInfoVortageanzahlAufKostenbeitrag",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "https://elga.moped.at/StructureDefinition/MopedSupportingInfoVortageanzahlAufKostenbeitrag",
  "version" : "0.1.0",
  "name" : "MopedSupportingInfoVortageanzahlAufKostenbeitrag",
  "title" : "Supporting Info Extension for ClaimResponse - Vortageanzahl auf Kostenbeitrag",
  "status" : "draft",
  "date" : "2026-04-07T19:34:12+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "Additional information codes regarding exceptions, special considerations, the condition, situation, prior or concurrent issues",
  "fhirVersion" : "5.0.0",
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "ClaimResponse"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Supporting Info Extension for ClaimResponse - Vortageanzahl auf Kostenbeitrag",
      "definition" : "Additional information codes regarding exceptions, special considerations, the condition, situation, prior or concurrent issues"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "min" : 3
    },
    {
      "id" : "Extension.extension:sequence",
      "path" : "Extension.extension",
      "sliceName" : "sequence",
      "short" : "Information instance identifier",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:sequence.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:sequence.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "sequence"
    },
    {
      "id" : "Extension.extension:sequence.value[x]",
      "path" : "Extension.extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "positiveInt"
      }]
    },
    {
      "id" : "Extension.extension:category",
      "path" : "Extension.extension",
      "sliceName" : "category",
      "short" : "Classification of the supplied information",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:category.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:category.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "category"
    },
    {
      "id" : "Extension.extension:category.value[x]",
      "path" : "Extension.extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://elga.moped.at/ValueSet/ClaimSupportingInformationCategoryVS"
      }
    },
    {
      "id" : "Extension.extension:category.value[x].coding",
      "path" : "Extension.extension.value[x].coding",
      "patternCoding" : {
        "system" : "https://elga.moped.at/CodeSystem/ClaimSupportingInformationCategoryCS",
        "code" : "VTAGE"
      }
    },
    {
      "id" : "Extension.extension:code",
      "path" : "Extension.extension",
      "sliceName" : "code",
      "short" : "Type of information",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:code.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:code.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "code"
    },
    {
      "id" : "Extension.extension:code.value[x]",
      "path" : "Extension.extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://elga.moped.at/ValueSet/SonderklasseVS"
      }
    },
    {
      "id" : "Extension.extension:timing",
      "path" : "Extension.extension",
      "sliceName" : "timing",
      "short" : "When it occurred",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:timing.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:timing.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "timing"
    },
    {
      "id" : "Extension.extension:timing.value[x]",
      "path" : "Extension.extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "date"
      },
      {
        "code" : "Period"
      }]
    },
    {
      "id" : "Extension.extension:value",
      "path" : "Extension.extension",
      "sliceName" : "value",
      "short" : "Data to be provided",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:value.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:value.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "value"
    },
    {
      "id" : "Extension.extension:value.value[x]",
      "path" : "Extension.extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Quantity"
      }]
    },
    {
      "id" : "Extension.extension:value.value[x].value",
      "path" : "Extension.extension.value[x].value",
      "min" : 1
    },
    {
      "id" : "Extension.extension:reason",
      "path" : "Extension.extension",
      "sliceName" : "reason",
      "short" : "Explanation for the information",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:reason.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:reason.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "reason"
    },
    {
      "id" : "Extension.extension:reason.value[x]",
      "path" : "Extension.extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://elga.moped.at/StructureDefinition/MopedSupportingInfoVortageanzahlAufKostenbeitrag"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
