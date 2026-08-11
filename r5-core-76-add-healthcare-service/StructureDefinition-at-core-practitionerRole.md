# HL7.AT.FHIR.CORE.R5\HL7® AT Core PractitionerRole Profile - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HL7® AT Core PractitionerRole Profile**

## Resource Profile: HL7® AT Core PractitionerRole Profile 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/core/r5/StructureDefinition/at-core-practitionerRole | *Version*:2.1.0 | |
| Active as of 2026-08-11 | *Responsible:*[HL7® Austria, TC FHIR®](https://hl7.at/technische-komitees/tc-fhir/) | *Computable Name*:HL7ATCorePractitionerRole |

 
HL7® Austria FHIR® Core Profile for practitioner role data in Austria. 

**Usages:**

* Examples for this Profile: [PractitionerRole/HL7ATCorePractitionerRoleExample01](PractitionerRole-HL7ATCorePractitionerRoleExample01.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.core.r5|current/StructureDefinition/StructureDefinition-at-core-practitionerRole.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-core-practitionerRole.csv), [Excel](StructureDefinition-at-core-practitionerRole.xlsx), [Schematron](StructureDefinition-at-core-practitionerRole.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-core-practitionerRole",
  "url" : "https://fhir.hl7.at/core/r5/StructureDefinition/at-core-practitionerRole",
  "version" : "2.1.0",
  "name" : "HL7ATCorePractitionerRole",
  "title" : "HL7® AT Core PractitionerRole Profile",
  "status" : "active",
  "date" : "2026-08-11T21:36:48+00:00",
  "publisher" : "HL7® Austria, TC FHIR®",
  "contact" : [{
    "name" : "HL7® Austria, TC FHIR®",
    "telecom" : [{
      "system" : "url",
      "value" : "https://hl7.at/technische-komitees/tc-fhir/"
    }]
  },
  {
    "name" : "Technical Committee for FHIR® at HL7® Austria",
    "telecom" : [{
      "system" : "email",
      "value" : "mailto:tc-fhir@hl7.at"
    }]
  }],
  "description" : "HL7® Austria FHIR® Core Profile for practitioner role data in Austria.",
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
      "id" : "PractitionerRole.practitioner",
      "path" : "PractitionerRole.practitioner",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/core/r5/StructureDefinition/at-core-practitioner"]
      }]
    },
    {
      "id" : "PractitionerRole.organization",
      "path" : "PractitionerRole.organization",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/core/r5/StructureDefinition/at-core-organization"]
      }]
    },
    {
      "id" : "PractitionerRole.code",
      "path" : "PractitionerRole.code",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://termgit.elga.gv.at/ValueSet/hl7-at-practitionerrole"
      }
    },
    {
      "id" : "PractitionerRole.contact",
      "path" : "PractitionerRole.contact",
      "type" : [{
        "code" : "ExtendedContactDetail",
        "profile" : ["https://fhir.hl7.at/core/r5/StructureDefinition/at-core-extendedContactDetail"]
      }]
    }]
  }
}

```
