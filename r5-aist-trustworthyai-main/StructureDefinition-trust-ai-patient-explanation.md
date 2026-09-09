# Trust AI Patient Explanation Communication - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Trust AI Patient Explanation Communication**

## Resource Profile: Trust AI Patient Explanation Communication 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/trust-ai-transparency/StructureDefinition/trust-ai-patient-explanation | *Version*:0.1.0 |
| Draft as of 2026-09-09 | *Computable Name*:Trust_AIPatientExplanation |

 
A Communication profile documenting that an explanation regarding an AI-supported clinical decision was provided to a patient. The explanation may describe the role of the AI system, the related human oversight, and the key elements of the resulting clinical decision in accordance with Article 86 of the Trust AI Act. 

**Usages:**

* Examples for this Profile: [Communication/dr-patient-communication](Communication-dr-patient-communication.md) and [Communication/sc-04-correction-exp-patient-explanation-001](Communication-sc-04-correction-exp-patient-explanation-001.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir.ig.trust.aitransparency|current/StructureDefinition/StructureDefinition-trust-ai-patient-explanation.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-trust-ai-patient-explanation.csv), [Excel](StructureDefinition-trust-ai-patient-explanation.xlsx), [Schematron](StructureDefinition-trust-ai-patient-explanation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "trust-ai-patient-explanation",
  "url" : "http://example.org/fhir/trust-ai-transparency/StructureDefinition/trust-ai-patient-explanation",
  "version" : "0.1.0",
  "name" : "Trust_AIPatientExplanation",
  "title" : "Trust AI Patient Explanation Communication",
  "status" : "draft",
  "date" : "2026-09-09T11:13:25+00:00",
  "publisher" : "Selina Adlberger",
  "description" : "A Communication profile documenting that an explanation regarding an AI-supported clinical decision was provided to a patient. The explanation may describe the role of the AI system, the related human oversight, and the key elements of the resulting clinical decision in accordance with Article 86 of the Trust AI Act.",
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
      "id" : "Communication.extension:aifInfoProvided",
      "path" : "Communication.extension",
      "sliceName" : "aifInfoProvided",
      "short" : "Flag if the patient was informed about the use of AI.",
      "requirements" : "GDPR Art. 13 | Patient Information Provided Flag & AI Act Art. 86 | Patient-Facing Transparency Information",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://example.org/fhir/trust-ai-transparency/StructureDefinition/patient-ai-info-provided-flag"]
      }],
      "mustSupport" : true
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
      "requirements" : "AI Act Art. 86 | Patient-Facing Transparency Information",
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
      "requirements" : "AI Act Art. 86 | Patient-Facing Transparency Information",
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
