# EU AI Practitioner Role - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **EU AI Practitioner Role**

## Resource Profile: EU AI Practitioner Role 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-practitionerrole | *Version*:0.1.0 |
| Draft as of 2026-06-18 | *Computable Name*:EU_AIPractitionerRole |

 
A PractitionerRole profile representing the role, qualification context, specialty, and AI-related training information of the human reviewer involved in oversight of an AI-supported workflow. 

**Usages:**

* Refer to this Profile: [EU AI Human Oversight Assessment](StructureDefinition-eu-ai-human-oversight.md)
* Examples for this Profile: [PractitionerRole/practitionerrole-reviewer-001](PractitionerRole-practitionerrole-reviewer-001.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir.ig.eu.aitransparency|current/StructureDefinition/StructureDefinition-eu-ai-practitionerrole.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-eu-ai-practitionerrole.csv), [Excel](StructureDefinition-eu-ai-practitionerrole.xlsx), [Schematron](StructureDefinition-eu-ai-practitionerrole.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "eu-ai-practitionerrole",
  "url" : "http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-practitionerrole",
  "version" : "0.1.0",
  "name" : "EU_AIPractitionerRole",
  "title" : "EU AI Practitioner Role",
  "status" : "draft",
  "date" : "2026-06-18T12:04:51+00:00",
  "publisher" : "Selina Adlberger",
  "description" : "A PractitionerRole profile representing the role, qualification context, specialty, and AI-related training information of the human reviewer involved in oversight of an AI-supported workflow.",
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 V2 Mapping"
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
    "identity" : "servd",
    "uri" : "http://www.omg.org/spec/ServD/1.0/",
    "name" : "ServD"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "PractitionerRole",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/PractitionerRole",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "PractitionerRole",
      "path" : "PractitionerRole"
    },
    {
      "id" : "PractitionerRole.extension",
      "path" : "PractitionerRole.extension",
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
      "id" : "PractitionerRole.extension:trainingFlag",
      "path" : "PractitionerRole.extension",
      "sliceName" : "trainingFlag",
      "short" : "Flag indicating system-specific training completed",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/ai-system-training-status"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.practitioner",
      "path" : "PractitionerRole.practitioner",
      "short" : "Reference to the specific human (Practitioner)",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.organization",
      "path" : "PractitionerRole.organization",
      "short" : "Organization responsible for the oversight process",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://example.org/fhir/eu-ai-transparency/StructureDefinition/eu-ai-organization"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.code",
      "path" : "PractitionerRole.code",
      "short" : "Specific role or seniority (e.g., Senior Physician, Medical Lead)",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.specialty",
      "path" : "PractitionerRole.specialty",
      "short" : "Clinical specialty required for oversight",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```
