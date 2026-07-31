# EU AI Patient Explanation Communication - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EU AI Patient Explanation Communication**

## Resource Profile: EU AI Patient Explanation Communication 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-patient-explanation | *Version*:0.1.0 |
| Draft as of 2026-07-31 | *Computable Name*:EU_AIPatientExplanation |

 
A Communication profile documenting that an explanation regarding an AI-supported clinical decision was provided to a patient. The explanation may describe the role of the AI system, the related human oversight, and the key elements of the resulting clinical decision in accordance with Article 86 of the EU AI Act. 

**Usages:**

* Examples for this Profile: [Communication/sc-04-correction-exp-patient-explanation-001](Communication-sc-04-correction-exp-patient-explanation-001.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir.ig.eu.aitransparency|current/StructureDefinition/StructureDefinition-eu-ai-patient-explanation.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-eu-ai-patient-explanation.csv), [Excel](StructureDefinition-eu-ai-patient-explanation.xlsx), [Schematron](StructureDefinition-eu-ai-patient-explanation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "eu-ai-patient-explanation",
  "url" : "http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-patient-explanation",
  "version" : "0.1.0",
  "name" : "EU_AIPatientExplanation",
  "title" : "EU AI Patient Explanation Communication",
  "status" : "draft",
  "date" : "2026-07-31T11:07:29+00:00",
  "publisher" : "Selina Adlberger",
  "description" : "A Communication profile documenting that an explanation regarding an AI-supported clinical decision was provided to a patient. The explanation may describe the role of the AI system, the related human oversight, and the key elements of the resulting clinical decision in accordance with Article 86 of the EU AI Act.",
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Communication",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Communication",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Communication",
      "path" : "Communication"
    },
    {
      "id" : "Communication.subject",
      "path" : "Communication.subject",
      "short" : "The patient who received the explanation",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Communication.about",
      "path" : "Communication.about",
      "short" : "The specific decision the patient wants to have explained",
      "definition" : "References the AI-generated or AI-supported clinical output, related human oversight assessment, provenance record, or other resource representing the decision or workflow addressed by the patient-facing explanation.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Communication.sent",
      "path" : "Communication.sent",
      "short" : "Date and time the explanation was provided",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Communication.sender",
      "path" : "Communication.sender",
      "short" : "The human-in-the-loop providing the explanation",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/PractitionerRole"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Communication.payload",
      "path" : "Communication.payload",
      "short" : "Patient-facing explanation or reference to an explanation document",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Communication.payload.content[x]",
      "path" : "Communication.payload.content[x]",
      "type" : [{
        "code" : "Attachment"
      },
      {
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/DocumentReference"]
      }]
    }]
  }
}

```
