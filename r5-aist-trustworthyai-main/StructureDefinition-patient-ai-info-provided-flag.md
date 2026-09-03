# Patient AI Info Provided Flag - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Patient AI Info Provided Flag**

## Extension: Patient AI Info Provided Flag 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/eu-ai-transparency/StructureDefinition/patient-ai-info-provided-flag | *Version*:0.1.0 |
| Draft as of 2026-09-03 | *Computable Name*:PatientAIInfoProvidedFlag |

This flag represents whether the patient has been informed about the AI-related processing activity

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [EU AI Patient Explanation Communication](StructureDefinition-eu-ai-patient-explanation.md)
* Examples for this Extension: [Communication/sc-04-correction-exp-patient-explanation-001](Communication-sc-04-correction-exp-patient-explanation-001.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir.ig.eu.aitransparency|current/StructureDefinition/StructureDefinition-patient-ai-info-provided-flag.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-patient-ai-info-provided-flag.csv), [Excel](StructureDefinition-patient-ai-info-provided-flag.xlsx), [Schematron](StructureDefinition-patient-ai-info-provided-flag.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "patient-ai-info-provided-flag",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "http://example.org/fhir/eu-ai-transparency/StructureDefinition/patient-ai-info-provided-flag",
  "version" : "0.1.0",
  "name" : "PatientAIInfoProvidedFlag",
  "title" : "Patient AI Info Provided Flag",
  "status" : "draft",
  "date" : "2026-09-03T11:53:05+00:00",
  "publisher" : "Selina Adlberger",
  "description" : "This flag represents whether the patient has been informed about the AI-related processing activity",
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
    "expression" : "Communication"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Patient AI Info Provided Flag",
      "definition" : "This flag represents whether the patient has been informed about the AI-related processing activity"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://example.org/fhir/eu-ai-transparency/StructureDefinition/patient-ai-info-provided-flag"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
