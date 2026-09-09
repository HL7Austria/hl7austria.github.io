# Trust AI Responsible Organization - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Trust AI Responsible Organization**

## Resource Profile: Trust AI Responsible Organization 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/trust-ai-transparency/StructureDefinition/trust-ai-organization | *Version*:0.1.0 |
| Draft as of 2026-09-09 | *Computable Name*:Trust_AIOrganization |

 
An Organization profile representing an organization involved in manufacturing, providing, deploying, or operating an AI system, including relevant accountability and contact information. 

**Usages:**

* Refer to this Profile: [Trust AI System Device](StructureDefinition-trust-ai-device.md) and [Trust AI Practitioner Role](StructureDefinition-trust-ai-practitionerrole.md)
* Examples for this Profile: [Example Diagnostic Center](Organization-dr-organization.md), [Example Hospital](Organization-organization-examplehospital.md) and [ExampleMed AI GmbH](Organization-organization-examplemed.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/fhir.ig.trust.aitransparency|current/StructureDefinition/StructureDefinition-trust-ai-organization.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-trust-ai-organization.csv), [Excel](StructureDefinition-trust-ai-organization.xlsx), [Schematron](StructureDefinition-trust-ai-organization.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "trust-ai-organization",
  "url" : "http://example.org/fhir/trust-ai-transparency/StructureDefinition/trust-ai-organization",
  "version" : "0.1.0",
  "name" : "Trust_AIOrganization",
  "title" : "Trust AI Responsible Organization",
  "status" : "draft",
  "date" : "2026-09-09T11:13:25+00:00",
  "publisher" : "Selina Adlberger",
  "description" : "An Organization profile representing an organization involved in manufacturing, providing, deploying, or operating an AI system, including relevant accountability and contact information.",
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
  "type" : "Organization",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Organization",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Organization",
      "path" : "Organization"
    },
    {
      "id" : "Organization.extension",
      "path" : "Organization.extension",
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
      "id" : "Organization.extension:DPIAReference",
      "path" : "Organization.extension",
      "sliceName" : "DPIAReference",
      "short" : "Reference to the DPIA Document",
      "requirements" : "GDPR Art. 35 | DPIA Reference",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://example.org/fhir/trust-ai-transparency/StructureDefinition/trust-ai-dpia-reference"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Organization.name",
      "path" : "Organization.name",
      "short" : "Name of the legal entity",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Organization.contact",
      "path" : "Organization.contact",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "purpose"
        }],
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Organization.contact:officialContact",
      "path" : "Organization.contact",
      "sliceName" : "officialContact",
      "short" : "Official contact details of the legal entity",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Organization.contact:officialContact.purpose",
      "path" : "Organization.contact.purpose",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/contactentity-type",
          "code" : "ADMIN"
        }]
      }
    },
    {
      "id" : "Organization.contact:officialContact.telecom",
      "path" : "Organization.contact.telecom",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Organization.contact:dpo",
      "path" : "Organization.contact",
      "sliceName" : "dpo",
      "short" : "Data Protection Officer",
      "requirements" : "GDPR Art. 13 | DPO Contact Details",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Organization.contact:dpo.purpose",
      "path" : "Organization.contact.purpose",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://example.org/fhir/trust-ai-transparency/CodeSystem/trust-ai-contact-purpose-cs",
          "code" : "dpo",
          "display" : "Data Protection Officer"
        }]
      }
    },
    {
      "id" : "Organization.contact:dpo.name",
      "path" : "Organization.contact.name",
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Organization.contact:dpo.telecom",
      "path" : "Organization.contact.telecom",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Organization.contact:incident",
      "path" : "Organization.contact",
      "sliceName" : "incident",
      "short" : "AI Incident Reporting Contact",
      "requirements" : "AI Act Art. 17 | QMS Certification",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Organization.contact:incident.purpose",
      "path" : "Organization.contact.purpose",
      "min" : 1,
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://example.org/fhir/trust-ai-transparency/CodeSystem/trust-ai-contact-purpose-cs",
          "code" : "ai-incident-reporting",
          "display" : "AI Incident Reporting Contact"
        }]
      }
    },
    {
      "id" : "Organization.contact:incident.name",
      "path" : "Organization.contact.name",
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Organization.contact:incident.telecom",
      "path" : "Organization.contact.telecom",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```
