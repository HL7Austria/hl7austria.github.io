# HL7® AT Core ExtendedContactDetail Profile - HL7® Austria FHIR® Core Implementation Guide v2.1.0

## Data Type Profile: HL7® AT Core ExtendedContactDetail Profile 

 
HL7® Austria FHIR® Core Profile to use the profile for address data in Austria on the datatype ExtendedContactDetail. 

**Usages:**

* Use this DataType Profile: [HL7® AT Core Location Profile](StructureDefinition-at-core-location.md), [HL7® AT Core Organization Profile](StructureDefinition-at-core-organization.md) and [HL7® AT Core PractitionerRole Profile](StructureDefinition-at-core-practitionerRole.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.core.r5|current/StructureDefinition/StructureDefinition-at-core-extendedContactDetail.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-at-core-extendedContactDetail.csv), [Excel](../StructureDefinition-at-core-extendedContactDetail.xlsx), [Schematron](../StructureDefinition-at-core-extendedContactDetail.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-core-extendedContactDetail",
  "url" : "https://fhir.hl7.at/core/r5/StructureDefinition/at-core-extendedContactDetail",
  "version" : "2.1.0",
  "name" : "HL7ATCoreExtendedContactDetail",
  "title" : "HL7® AT Core ExtendedContactDetail Profile",
  "status" : "active",
  "date" : "2026-09-11T09:39:02+00:00",
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
  "description" : "HL7® Austria FHIR® Core Profile to use the profile for address data in Austria on the datatype ExtendedContactDetail.",
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "ExtendedContactDetail",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ExtendedContactDetail",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "ExtendedContactDetail",
      "path" : "ExtendedContactDetail"
    },
    {
      "id" : "ExtendedContactDetail.address",
      "path" : "ExtendedContactDetail.address",
      "type" : [{
        "code" : "Address",
        "profile" : ["https://fhir.hl7.at/core/r5/StructureDefinition/at-core-address"]
      }]
    },
    {
      "id" : "ExtendedContactDetail.organization",
      "path" : "ExtendedContactDetail.organization",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/core/r5/StructureDefinition/at-core-organization"]
      }]
    }]
  }
}

```
