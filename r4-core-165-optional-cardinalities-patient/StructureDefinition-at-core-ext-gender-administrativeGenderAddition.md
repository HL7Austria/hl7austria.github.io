# HL7.AT.FHIR.CORE.R4\Administrative Gender Addition - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Administrative Gender Addition**

## Extension: Administrative Gender Addition 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-ext-gender-administrativeGenderAddition | *Version*:2.1.0 | |
| Active as of 2026-06-19 | *Responsible:*[HL7® Austria, TC FHIR®](https://hl7.at/technische-komitees/tc-fhir/) | *Computable Name*:AdministrativeGenderAddition |

HL7® Austria FHIR® Core Extension for the administrative gender of a person (Patient, Practitioner, …). The extension is used to add the missing codes and is applied in case the code for administrative gender itself is set to 'other'.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [HL7® AT Core Patient Profile](StructureDefinition-at-core-patient.md) and [HL7® AT Core Practitioner Profile](StructureDefinition-at-core-practitioner.md)
* Examples for this Extension: [Patient/HL7ATCorePatientExample06-GenderExtension](Patient-HL7ATCorePatientExample06-GenderExtension.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.core.r4|current/StructureDefinition/StructureDefinition-at-core-ext-gender-administrativeGenderAddition.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-core-ext-gender-administrativeGenderAddition.csv), [Excel](StructureDefinition-at-core-ext-gender-administrativeGenderAddition.xlsx), [Schematron](StructureDefinition-at-core-ext-gender-administrativeGenderAddition.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-core-ext-gender-administrativeGenderAddition",
  "url" : "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-ext-gender-administrativeGenderAddition",
  "version" : "2.1.0",
  "name" : "AdministrativeGenderAddition",
  "title" : "Administrative Gender Addition",
  "status" : "active",
  "date" : "2026-06-19T08:32:44+00:00",
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
  "description" : "HL7® Austria FHIR® Core Extension for the administrative gender of a person (Patient, Practitioner, ...). \r\nThe extension is used to add the missing codes and is applied in case the code for administrative gender itself is set to 'other'.",
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
    "expression" : "Patient.gender"
  },
  {
    "type" : "element",
    "expression" : "Patient.contact.gender"
  },
  {
    "type" : "element",
    "expression" : "Practitioner.gender"
  },
  {
    "type" : "element",
    "expression" : "RelatedPerson.gender"
  },
  {
    "type" : "element",
    "expression" : "Person.gender"
  },
  {
    "type" : "element",
    "expression" : "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-patient#Patient.gender"
  },
  {
    "type" : "element",
    "expression" : "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-patient#Patient.contact.gender"
  },
  {
    "type" : "element",
    "expression" : "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-practitioner#Practitioner.gender"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Administrative Gender Addition",
      "definition" : "HL7® Austria FHIR® Core Extension for the administrative gender of a person (Patient, Practitioner, ...). \r\nThe extension is used to add the missing codes and is applied in case the code for administrative gender itself is set to 'other'."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-ext-gender-administrativeGenderAddition"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Coding"
      }],
      "constraint" : [{
        "key" : "at-ext-gender-1",
        "severity" : "error",
        "human" : "The extension for the additional administrative gender codes is only applied if the administrative gender itself is set to 'other'",
        "expression" : "%resource.where(gender='other').exists() or %resource.contact.where(gender='other').exists()",
        "source" : "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-ext-gender-administrativeGenderAddition"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://termgit.elga.gv.at/ValueSet/hl7-at-administrativegender-fhir-extension"
      }
    }]
  }
}

```
