# HL7.AT.FHIR.CORE.R4\Address Additional Information - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Address Additional Information**

## Extension: Address Additional Information 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/core/r4/StructureDefinition/at-core-ext-address-additionalInformation | *Version*:2.1.0 | |
| Active as of 2026-08-20 | *Responsible:*[HL7® Austria, TC FHIR®](https://hl7.at/technische-komitees/tc-fhir/) | *Computable Name*:AddressAdditionalInformation |

HL7® Austria FHIR® Core Extension for the additional information part of the Austrian address.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [HL7® AT Core Address Profile](StructureDefinition-at-core-address.md)
* Examples for this Extension: [Amadeus Spital](Organization-HL7ATCoreOrganizationExample01.md), [Patient/HL7ATCorePatientExample01](Patient-HL7ATCorePatientExample01.md), [Patient/HL7ATCorePatientExample04-Full](Patient-HL7ATCorePatientExample04-Full.md), [Patient/HL7ATCorePatientExample05-FullElga](Patient-HL7ATCorePatientExample05-FullElga.md)... Show 3 more, [Patient/HL7ATCorePatientExample06-GenderExtension](Patient-HL7ATCorePatientExample06-GenderExtension.md), [Patient/HL7ATCorePatientExample07-MunicipalityCode](Patient-HL7ATCorePatientExample07-MunicipalityCode.md) and [Practitioner/HL7ATCorePractitionerExample01](Practitioner-HL7ATCorePractitionerExample01.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.core.r4|current/StructureDefinition/StructureDefinition-at-core-ext-address-additionalInformation.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-core-ext-address-additionalInformation.csv), [Excel](StructureDefinition-at-core-ext-address-additionalInformation.xlsx), [Schematron](StructureDefinition-at-core-ext-address-additionalInformation.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-core-ext-address-additionalInformation",
  "url" : "https://fhir.hl7.at/core/r4/StructureDefinition/at-core-ext-address-additionalInformation",
  "version" : "2.1.0",
  "name" : "AddressAdditionalInformation",
  "title" : "Address Additional Information",
  "status" : "active",
  "date" : "2026-08-20T09:19:25+00:00",
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
  "description" : "HL7® Austria FHIR® Core Extension for the additional information part of the Austrian address.",
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
    "expression" : "Address.line"
  },
  {
    "type" : "element",
    "expression" : "https://fhir.hl7.at/core/r4/StructureDefinition/at-core-address#Address.line"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Address Additional Information",
      "definition" : "HL7® Austria FHIR® Core Extension for the additional information part of the Austrian address."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://fhir.hl7.at/core/r4/StructureDefinition/at-core-ext-address-additionalInformation"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
