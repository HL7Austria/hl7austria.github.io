# HL7.AT.FHIR.CORE.R4\HL7® AT Core Patient Profile for Secondary Use - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HL7® AT Core Patient Profile for Secondary Use**

## Resource Profile: HL7® AT Core Patient Profile for Secondary Use 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-patient-secondary | *Version*:2.1.0 | |
| Active as of 2026-06-18 | *Responsible:*[HL7® Austria, TC FHIR®](https://hl7.at/technische-komitees/tc-fhir/) | *Computable Name*:HL7ATCorePatientSecondaryUse |

 
HL7® Austria FHIR® Core Profile for FHIR Patients without patient-identifying data in Austria. 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.core.r4|current/StructureDefinition/StructureDefinition-at-core-patient-secondary.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-core-patient-secondary.csv), [Excel](StructureDefinition-at-core-patient-secondary.xlsx), [Schematron](StructureDefinition-at-core-patient-secondary.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-core-patient-secondary",
  "url" : "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-patient-secondary",
  "version" : "2.1.0",
  "name" : "HL7ATCorePatientSecondaryUse",
  "title" : "HL7® AT Core Patient Profile for Secondary Use",
  "status" : "active",
  "date" : "2026-06-18T08:33:04+00:00",
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
  "description" : "HL7® Austria FHIR® Core Profile for FHIR Patients without patient-identifying data in Austria.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
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
  },
  {
    "identity" : "loinc",
    "uri" : "http://loinc.org",
    "name" : "LOINC code for the element"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Patient",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Patient",
      "path" : "Patient"
    },
    {
      "id" : "Patient.extension",
      "path" : "Patient.extension",
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
      "id" : "Patient.extension:citizenship",
      "path" : "Patient.extension",
      "sliceName" : "citizenship",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/patient-citizenship"]
      }]
    },
    {
      "id" : "Patient.extension:citizenship.extension:code",
      "path" : "Patient.extension.extension",
      "sliceName" : "code"
    },
    {
      "id" : "Patient.extension:citizenship.extension:code.value[x]",
      "path" : "Patient.extension.extension.value[x]",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://termgit.elga.gv.at/ValueSet/elga-laendercodes"
      }
    },
    {
      "id" : "Patient.extension:PatientReligion",
      "path" : "Patient.extension",
      "sliceName" : "PatientReligion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/patient-religion"]
      }]
    },
    {
      "id" : "Patient.extension:PatientReligion.value[x]",
      "path" : "Patient.extension.value[x]",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://termgit.elga.gv.at/ValueSet/elga-religiousaffiliation"
      }
    },
    {
      "id" : "Patient.extension:birthPlace",
      "path" : "Patient.extension",
      "sliceName" : "birthPlace",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/patient-birthPlace"]
      }]
    },
    {
      "id" : "Patient.extension:birthPlace.value[x]",
      "path" : "Patient.extension.value[x]",
      "type" : [{
        "code" : "Address",
        "profile" : ["http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-address"]
      }]
    },
    {
      "id" : "Patient.identifier",
      "path" : "Patient.identifier",
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
      "id" : "Patient.identifier.type",
      "path" : "Patient.identifier.type",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://termgit.elga.gv.at/ValueSet/hl7-at-patientidentifier"
      }
    },
    {
      "id" : "Patient.identifier:vbPK",
      "path" : "Patient.identifier",
      "sliceName" : "vbPK",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Patient.identifier:vbPK.type",
      "path" : "Patient.identifier.type",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://termgit.elga.gv.at/ValueSet/hl7-at-patientidentifier"
      }
    },
    {
      "id" : "Patient.identifier:vbPK.type.coding.system",
      "path" : "Patient.identifier.type.coding.system",
      "fixedUri" : "http://terminology.hl7.org/CodeSystem/v2-0203"
    },
    {
      "id" : "Patient.identifier:vbPK.type.coding.code",
      "path" : "Patient.identifier.type.coding.code",
      "min" : 1,
      "fixedCode" : "ANON"
    },
    {
      "id" : "Patient.identifier:vbPK.system",
      "path" : "Patient.identifier.system",
      "short" : "OID for the specific vbPK in Austria",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/ValueSet/at-core-vbpk"
      }
    },
    {
      "id" : "Patient.name",
      "path" : "Patient.name",
      "max" : "0"
    },
    {
      "id" : "Patient.gender.extension",
      "path" : "Patient.gender.extension",
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
      "id" : "Patient.gender.extension:AdministrativeGenderAddition",
      "path" : "Patient.gender.extension",
      "sliceName" : "AdministrativeGenderAddition",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-ext-gender-administrativeGenderAddition"]
      }]
    },
    {
      "id" : "Patient.birthDate.extension",
      "path" : "Patient.birthDate.extension",
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
      "id" : "Patient.birthDate.extension:birthTime",
      "path" : "Patient.birthDate.extension",
      "sliceName" : "birthTime",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/patient-birthTime"]
      }]
    },
    {
      "id" : "Patient.address",
      "path" : "Patient.address",
      "type" : [{
        "code" : "Address",
        "profile" : ["http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-address"]
      }]
    },
    {
      "id" : "Patient.contact.address",
      "path" : "Patient.contact.address",
      "type" : [{
        "code" : "Address",
        "profile" : ["http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-address"]
      }]
    },
    {
      "id" : "Patient.contact.gender.extension",
      "path" : "Patient.contact.gender.extension",
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
      "id" : "Patient.contact.gender.extension:AdministrativeGenderAddition",
      "path" : "Patient.contact.gender.extension",
      "sliceName" : "AdministrativeGenderAddition",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-ext-gender-administrativeGenderAddition"]
      }]
    }]
  }
}

```
