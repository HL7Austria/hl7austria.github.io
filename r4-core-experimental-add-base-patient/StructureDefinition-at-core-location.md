# HL7.AT.FHIR.CORE.R4\HL7® AT Core Location Profile - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HL7® AT Core Location Profile**

## Resource Profile: HL7® AT Core Location Profile 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-location | *Version*:2.1.0 | |
| Active as of 2026-06-18 | *Responsible:*[HL7® Austria, TC FHIR®](https://hl7.at/technische-komitees/tc-fhir/) | *Computable Name*:HL7ATCoreLocation |

 
HL7® Austria FHIR® Core Profile for location data in Austria. 

**Usages:**

* Refer to this Profile: [HL7® AT Core Location Profile](StructureDefinition-at-core-location.md)
* Examples for this Profile: [Campus Graz](Location-HL7ATCoreLocationGraz.md) and [Campus Linz](Location-HL7ATCoreLocationLinz.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.core.r4|current/StructureDefinition/StructureDefinition-at-core-location.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-core-location.csv), [Excel](StructureDefinition-at-core-location.xlsx), [Schematron](StructureDefinition-at-core-location.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-core-location",
  "url" : "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-location",
  "version" : "2.1.0",
  "name" : "HL7ATCoreLocation",
  "title" : "HL7® AT Core Location Profile",
  "status" : "active",
  "date" : "2026-06-18T08:57:11+00:00",
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
  "description" : "HL7® Austria FHIR® Core Profile for location data in Austria.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Location",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Location",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Location",
      "path" : "Location"
    },
    {
      "id" : "Location.identifier",
      "path" : "Location.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Location.identifier:KANR",
      "path" : "Location.identifier",
      "sliceName" : "KANR",
      "min" : 0,
      "max" : "1",
      "constraint" : [{
        "key" : "inv-kanr-6char",
        "severity" : "error",
        "human" : "KA-Nr (KANR) must follow the 6-character pattern: 'K' + 3 digits + '.' + 1 digit (e.g., K460.1).",
        "expression" : "value.matches('^K[0-9]{3}[.][0-9]$')",
        "source" : "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-location"
      }]
    },
    {
      "id" : "Location.identifier:KANR.system",
      "path" : "Location.identifier.system",
      "short" : "OID for the Krankenanstaltennummer (KA-Nr) in Austria",
      "min" : 1,
      "fixedUri" : "urn:oid:1.2.40.0.34.4.10"
    },
    {
      "id" : "Location.identifier:KANR.value",
      "path" : "Location.identifier.value",
      "short" : "Krankenanstaltennummer (hospital identification number) in the more fine-grained 6-character format, used to represent a hospital site. The 4-character hospital identification number remains an identifier on the Organization resource only. The first 4 characters of the Location KANR SHALL match the Organization KANR.“",
      "min" : 1
    },
    {
      "id" : "Location.identifier:KANR.assigner.display",
      "path" : "Location.identifier.assigner.display",
      "fixedString" : "Österreichisches Bundesministerium für Gesundheit"
    },
    {
      "id" : "Location.address",
      "path" : "Location.address",
      "type" : [{
        "code" : "Address",
        "profile" : ["http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-address"]
      }]
    },
    {
      "id" : "Location.managingOrganization",
      "path" : "Location.managingOrganization",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-organization"]
      }]
    },
    {
      "id" : "Location.partOf",
      "path" : "Location.partOf",
      "type" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy",
          "valueBoolean" : true
        }],
        "code" : "Reference",
        "targetProfile" : ["http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-location"]
      }]
    }]
  }
}

```
