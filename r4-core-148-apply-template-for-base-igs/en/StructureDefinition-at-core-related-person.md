# HL7® AT Core RelatedPerson Profile - HL7® Austria FHIR® Core Implementation Guide v2.1.0

## Resource Profile: HL7® AT Core RelatedPerson Profile 

**Usages:**

* Examples for this Profile: [RelatedPerson/RelatedPersonMartinGruber](RelatedPerson-RelatedPersonMartinGruber.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.core.r4|current/StructureDefinition/StructureDefinition-at-core-related-person.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-at-core-related-person.csv), [Excel](../StructureDefinition-at-core-related-person.xlsx), [Schematron](../StructureDefinition-at-core-related-person.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-core-related-person",
  "url" : "https://fhir.hl7.at/core/r4/StructureDefinition/at-core-related-person",
  "version" : "2.1.0",
  "name" : "HL7ATCoreRelatedPerson",
  "title" : "HL7® AT Core RelatedPerson Profile",
  "status" : "active",
  "date" : "2026-10-20T06:06:44+00:00",
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
  "description" : "HL7® Austria FHIR® Core Profile for a related person in Austria.\r\nThe HL7® AT Core RelatedPerson is based upon the core FHIR® RelatedPeson Resource and designed to meet the applicable demographic data elements in Austria. Note, this extension represents the common structure of a person information within Austrian information systems.",
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
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "RelatedPerson",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/RelatedPerson",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "RelatedPerson",
      "path" : "RelatedPerson"
    },
    {
      "id" : "RelatedPerson.identifier",
      "path" : "RelatedPerson.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "type.coding.code"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "RelatedPerson.identifier.type",
      "path" : "RelatedPerson.identifier.type",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://termgit.elga.gv.at/ValueSet/hl7-at-patientidentifier"
      }
    },
    {
      "id" : "RelatedPerson.identifier:socialSecurityNumber",
      "path" : "RelatedPerson.identifier",
      "sliceName" : "socialSecurityNumber",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "RelatedPerson.identifier:socialSecurityNumber.type.coding.system",
      "path" : "RelatedPerson.identifier.type.coding.system",
      "patternUri" : "http://terminology.hl7.org/CodeSystem/v2-0203"
    },
    {
      "id" : "RelatedPerson.identifier:socialSecurityNumber.type.coding.code",
      "path" : "RelatedPerson.identifier.type.coding.code",
      "min" : 1,
      "patternCode" : "SS"
    },
    {
      "id" : "RelatedPerson.identifier:socialSecurityNumber.system",
      "path" : "RelatedPerson.identifier.system",
      "short" : "OID for the Social Security Number in Austria",
      "min" : 1,
      "patternUri" : "urn:oid:1.2.40.0.10.1.4.3.1"
    },
    {
      "id" : "RelatedPerson.identifier:socialSecurityNumber.assigner.display",
      "path" : "RelatedPerson.identifier.assigner.display",
      "patternString" : "Dachverband der österreichischen Sozialversicherungsträger"
    },
    {
      "id" : "RelatedPerson.identifier:bPK",
      "path" : "RelatedPerson.identifier",
      "sliceName" : "bPK",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "RelatedPerson.identifier:bPK.type.coding.system",
      "path" : "RelatedPerson.identifier.type.coding.system",
      "patternUri" : "http://terminology.hl7.org/CodeSystem/v2-0203"
    },
    {
      "id" : "RelatedPerson.identifier:bPK.type.coding.code",
      "path" : "RelatedPerson.identifier.type.coding.code",
      "min" : 1,
      "patternCode" : "NI"
    },
    {
      "id" : "RelatedPerson.identifier:bPK.system",
      "path" : "RelatedPerson.identifier.system",
      "short" : "OID for the bPK in Austria",
      "min" : 1,
      "patternUri" : "urn:oid:1.2.40.0.10.2.1.1.149"
    },
    {
      "id" : "RelatedPerson.identifier:bPK.assigner.display",
      "path" : "RelatedPerson.identifier.assigner.display",
      "patternString" : "Bundesministerium für Inneres"
    },
    {
      "id" : "RelatedPerson.patient",
      "path" : "RelatedPerson.patient",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/core/r4/StructureDefinition/at-core-patient"]
      }]
    },
    {
      "id" : "RelatedPerson.gender.extension",
      "path" : "RelatedPerson.gender.extension",
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
      "id" : "RelatedPerson.gender.extension:AdministrativeGenderAddition",
      "path" : "RelatedPerson.gender.extension",
      "sliceName" : "AdministrativeGenderAddition",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhir.hl7.at/core/r4/StructureDefinition/at-core-ext-gender-administrativeGenderAddition"]
      }]
    },
    {
      "id" : "RelatedPerson.address",
      "path" : "RelatedPerson.address",
      "type" : [{
        "code" : "Address",
        "profile" : ["https://fhir.hl7.at/core/r4/StructureDefinition/at-core-address"]
      }]
    }]
  }
}

```
