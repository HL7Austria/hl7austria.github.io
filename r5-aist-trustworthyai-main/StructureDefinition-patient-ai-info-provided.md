# Patient AI Info Provided Flag - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Patient AI Info Provided Flag**

## Extension: Patient AI Info Provided Flag 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/eu-ai-transparency/StructureDefinition/patient-ai-info-provided | *Version*:0.1.0 |
| Draft as of 2026-06-18 | *Computable Name*:PatientAIInfoProvidedFlag |

Confirmation that the patient was informed about the use of AI systems according to AI Act transparency rules.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [EU AI Consent and Processing Context](StructureDefinition-eu-ai-consent.md)
* Examples for this Extension: [Consent/sc-02-validation-consent-ai-use-001](Consent-sc-02-validation-consent-ai-use-001.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir.ig.eu.aitransparency|current/StructureDefinition/StructureDefinition-patient-ai-info-provided.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-patient-ai-info-provided.csv), [Excel](StructureDefinition-patient-ai-info-provided.xlsx), [Schematron](StructureDefinition-patient-ai-info-provided.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "patient-ai-info-provided",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "http://example.org/fhir/eu-ai-transparency/StructureDefinition/patient-ai-info-provided",
  "version" : "0.1.0",
  "name" : "PatientAIInfoProvidedFlag",
  "title" : "Patient AI Info Provided Flag",
  "status" : "draft",
  "date" : "2026-06-18T12:04:51+00:00",
  "publisher" : "Selina Adlberger",
  "description" : "Confirmation that the patient was informed about the use of AI systems according to AI Act transparency rules.",
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
    "expression" : "Consent"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Patient AI Info Provided Flag",
      "definition" : "Confirmation that the patient was informed about the use of AI systems according to AI Act transparency rules."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://example.org/fhir/eu-ai-transparency/StructureDefinition/patient-ai-info-provided"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
