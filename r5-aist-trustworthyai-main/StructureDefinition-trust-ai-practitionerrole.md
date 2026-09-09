# Trust AI Practitioner Role - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Trust AI Practitioner Role**

## Resource Profile: Trust AI Practitioner Role 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/trust-ai-transparency/StructureDefinition/trust-ai-practitionerrole | *Version*:0.1.0 |
| Draft as of 2026-09-09 | *Computable Name*:Trust_AIPractitionerRole |

 
A PractitionerRole profile representing the role, qualification context, specialty, and AI-related training information of the human reviewer involved in oversight of an AI-supported workflow. 

**Usages:**

* Refer to this Profile: [Trust AI Human Oversight Assessment](StructureDefinition-trust-ai-human-oversight.md)
* Examples for this Profile: [PractitionerRole/dr-practitioner-role](PractitionerRole-dr-practitioner-role.md) and [PractitionerRole/practitionerrole-reviewer-001](PractitionerRole-practitionerrole-reviewer-001.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir.ig.trust.aitransparency|current/StructureDefinition/StructureDefinition-trust-ai-practitionerrole.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-trust-ai-practitionerrole.csv), [Excel](StructureDefinition-trust-ai-practitionerrole.xlsx), [Schematron](StructureDefinition-trust-ai-practitionerrole.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "trust-ai-practitionerrole",
  "url" : "http://example.org/fhir/trust-ai-transparency/StructureDefinition/trust-ai-practitionerrole",
  "version" : "0.1.0",
  "name" : "Trust_AIPractitionerRole",
  "title" : "Trust AI Practitioner Role",
  "status" : "draft",
  "date" : "2026-09-09T11:13:25+00:00",
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
      }
    },
    {
      "id" : "PractitionerRole.extension:trainingStatus",
      "path" : "PractitionerRole.extension",
      "sliceName" : "trainingStatus",
      "short" : "Whether relevant AI training has been documented",
      "requirements" : "AI Act Art. 14 | Qualification of Actor",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://example.org/fhir/trust-ai-transparency/StructureDefinition/ai-system-training-status"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.practitioner",
      "path" : "PractitionerRole.practitioner",
      "short" : "Reference to the specific human (Practitioner)",
      "requirements" : "AI Act Art. 14 | Responsible Actor",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.organization",
      "path" : "PractitionerRole.organization",
      "short" : "Organization in which the practitioner performs the oversight role",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://example.org/fhir/trust-ai-transparency/StructureDefinition/trust-ai-organization"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.code",
      "path" : "PractitionerRole.code",
      "short" : "Professional role relevant to the human oversight activity",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.specialty",
      "path" : "PractitionerRole.specialty",
      "short" : "Clinical specialty supporting competence for human oversight",
      "requirements" : "AI Act Art. 14 | Qualification of Actor",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```
