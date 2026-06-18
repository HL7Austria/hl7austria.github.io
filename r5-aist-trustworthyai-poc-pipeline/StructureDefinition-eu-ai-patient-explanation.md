# EU AI Patient Explanation Communication - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EU AI Patient Explanation Communication**

## Resource Profile: EU AI Patient Explanation Communication 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-patient-explanation | *Version*:0.1.0 |
| Draft as of 2026-06-18 | *Computable Name*:EU_AIPatientExplanation |

 
A Communication profile documenting patient-facing information about the AI-supported workflow, including the role of the AI system and the related clinical review where applicable. 

**Usages:**

* Examples for this Profile: [Communication/Communication-sc-02-patient-explanation-001](Communication-Communication-sc-02-patient-explanation-001.md)

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
  "date" : "2026-06-18T11:52:19+00:00",
  "publisher" : "Selina Adlberger",
  "description" : "A Communication profile documenting patient-facing information about the AI-supported workflow, including the role of the AI system and the related clinical review where applicable.",
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
      "id" : "Communication.extension",
      "path" : "Communication.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Communication.extension:explanationRequested",
      "path" : "Communication.extension",
      "sliceName" : "explanationRequested",
      "short" : "Flag: Did the patient/data subject actively request this explanation?",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-explanation-requested"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Communication.status",
      "path" : "Communication.status",
      "short" : "preparation | in-progress | completed | not-done",
      "mustSupport" : true
    },
    {
      "id" : "Communication.category",
      "path" : "Communication.category",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/communication-category",
          "code" : "instruction",
          "display" : "Instruction"
        }]
      }
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
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-human-oversight"]
      }],
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
      "short" : "The explanation text OR a reference to a formal explanation document",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Communication.payload.content[x]",
      "path" : "Communication.payload.content[x]",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/DocumentReference"]
      },
      {
        "code" : "CodeableConcept"
      }]
    }]
  }
}

```
