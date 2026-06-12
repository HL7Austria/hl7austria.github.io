# HL7.AT.FHIR.CORE.R4\System OID - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **System OID**

## Extension: System OID 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-ext-valueset-systemoid | *Version*:2.1.0 | |
| Active as of 2026-06-12 | *Responsible:*[HL7® Austria, TC FHIR®](https://hl7.at/technische-komitees/tc-fhir/) | *Computable Name*:SystemOID |

HL7® Austria FHIR® Core Extension for the capturing of OID in ValueSets to reference the CodeSystem they come from. The extension is used to document the OID of the system of a code referenced in a ValueSet, to align FHIR with the HL7 Austria CDA document guidelines.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [HL7® AT Core ValueSet Profile](StructureDefinition-at-core-valueset.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.core.r4|current/StructureDefinition/StructureDefinition-at-core-ext-valueset-systemoid.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-core-ext-valueset-systemoid.csv), [Excel](StructureDefinition-at-core-ext-valueset-systemoid.xlsx), [Schematron](StructureDefinition-at-core-ext-valueset-systemoid.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-core-ext-valueset-systemoid",
  "url" : "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-ext-valueset-systemoid",
  "version" : "2.1.0",
  "name" : "SystemOID",
  "title" : "System OID",
  "status" : "active",
  "date" : "2026-06-12T11:03:52+00:00",
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
  "description" : "HL7® Austria FHIR® Core Extension for the capturing of OID in ValueSets to reference the CodeSystem they come from.\r\nThe extension is used to document the OID of the system of a code referenced in a ValueSet, to align FHIR with the HL7 Austria CDA document guidelines.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "ValueSet.compose.include"
  },
  {
    "type" : "element",
    "expression" : "ValueSet.expansion.contains"
  },
  {
    "type" : "element",
    "expression" : "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-valueset#ValueSet.compose.include"
  },
  {
    "type" : "element",
    "expression" : "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-valueset#ValueSet.expansion.contains"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "System OID",
      "definition" : "HL7® Austria FHIR® Core Extension for the capturing of OID in ValueSets to reference the CodeSystem they come from.\r\nThe extension is used to document the OID of the system of a code referenced in a ValueSet, to align FHIR with the HL7 Austria CDA document guidelines."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-ext-valueset-systemoid"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "oid"
      }]
    }]
  }
}

```
