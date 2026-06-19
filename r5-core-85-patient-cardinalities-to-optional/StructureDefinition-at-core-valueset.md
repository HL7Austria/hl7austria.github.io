# HL7.AT.FHIR.CORE.R5\HL7® AT Core ValueSet Profile - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HL7® AT Core ValueSet Profile**

## Resource Profile: HL7® AT Core ValueSet Profile 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-valueset | *Version*:2.1.0 | |
| Active as of 2026-06-19 | *Responsible:*[HL7® Austria, TC FHIR®](https://hl7.at/technische-komitees/tc-fhir/) | *Computable Name*:HL7ATCoreValueSet |

 
HL7® Austria FHIR® Core Profile for valuesets in Austria. The HL7® AT Core ValueSet is based upon the core FHIR® ValueSet Resource and defines the use of the OID extension. 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.core.r5|current/StructureDefinition/StructureDefinition-at-core-valueset.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-core-valueset.csv), [Excel](StructureDefinition-at-core-valueset.xlsx), [Schematron](StructureDefinition-at-core-valueset.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-core-valueset",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-implements",
    "valueUri" : "http://hl7.org/fhir/StructureDefinition/MetadataResource"
  }],
  "url" : "http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-valueset",
  "version" : "2.1.0",
  "name" : "HL7ATCoreValueSet",
  "title" : "HL7® AT Core ValueSet Profile",
  "status" : "active",
  "date" : "2026-06-19T08:26:21+00:00",
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
  "description" : "HL7® Austria FHIR® Core Profile for valuesets in Austria.\r\nThe HL7® AT Core ValueSet is based upon the core FHIR® ValueSet Resource and defines the use of the OID extension.",
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "objimpl",
    "uri" : "http://hl7.org/fhir/object-implementation",
    "name" : "Object Implementation Information"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "ValueSet",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ValueSet",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ValueSet",
      "path" : "ValueSet"
    },
    {
      "id" : "ValueSet.compose.include.extension",
      "path" : "ValueSet.compose.include.extension",
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
      "id" : "ValueSet.compose.include.extension:systemOID",
      "path" : "ValueSet.compose.include.extension",
      "sliceName" : "systemOID",
      "short" : "OID of the system",
      "definition" : "Alternate representation of the system of a code as OID.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-ext-valueset-systemoid"]
      }]
    },
    {
      "id" : "ValueSet.expansion.contains.extension",
      "path" : "ValueSet.expansion.contains.extension",
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
      "id" : "ValueSet.expansion.contains.extension:systemOID",
      "path" : "ValueSet.expansion.contains.extension",
      "sliceName" : "systemOID",
      "short" : "OID of the system",
      "definition" : "Alternate representation of the system of a code as OID.",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-ext-valueset-systemoid"]
      }]
    }]
  }
}

```
