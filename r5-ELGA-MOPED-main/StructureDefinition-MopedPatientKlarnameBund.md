# ELGA.MOPED\MOPED Patient mit Klarname Bund - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MOPED Patient mit Klarname Bund**

## Resource Profile: MOPED Patient mit Klarname Bund 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/MopedPatientKlarnameBund | *Version*:0.1.0 | |
| Draft as of 2026-05-15 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MopedPatientKlarnameBund |

 
MOPED Profil der Patient Ressource mit Klarname - verordnungsrelevant: Bund 

**Usages:**

* Examples for this Profile: [Patient/Test1PatientBund](Patient-Test1PatientBund.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/MopedPatientKlarnameBund)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MopedPatientKlarnameBund.csv), [Excel](StructureDefinition-MopedPatientKlarnameBund.xlsx), [Schematron](StructureDefinition-MopedPatientKlarnameBund.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MopedPatientKlarnameBund",
  "url" : "https://elga.moped.at/StructureDefinition/MopedPatientKlarnameBund",
  "version" : "0.1.0",
  "name" : "MopedPatientKlarnameBund",
  "title" : "MOPED Patient mit Klarname Bund",
  "status" : "draft",
  "date" : "2026-05-15T09:26:31+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "MOPED Profil der Patient Ressource mit Klarname - verordnungsrelevant: Bund",
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "LKF",
    "uri" : "https://elga.moped.at/mapping/LKF",
    "name" : "LKF"
  },
  {
    "identity" : "KaOrg",
    "uri" : "https://elga.moped.at/mapping/KaOrg",
    "name" : "KaOrg"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "https://elga.moped.at/StructureDefinition/MopedBasisPatientKlarname",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Patient",
      "path" : "Patient"
    },
    {
      "id" : "Patient.extension",
      "path" : "Patient.extension",
      "min" : 1
    },
    {
      "id" : "Patient.extension:citizenship",
      "path" : "Patient.extension",
      "sliceName" : "citizenship",
      "min" : 1
    },
    {
      "id" : "Patient.name.extension",
      "path" : "Patient.name.extension",
      "min" : 1
    },
    {
      "id" : "Patient.name.extension:data-absent-reason",
      "path" : "Patient.name.extension",
      "sliceName" : "data-absent-reason",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/data-absent-reason"]
      }]
    },
    {
      "id" : "Patient.name.extension:data-absent-reason.value[x]",
      "path" : "Patient.name.extension.value[x]",
      "fixedCode" : "masked"
    },
    {
      "id" : "Patient.name.family",
      "path" : "Patient.name.family",
      "max" : "0"
    },
    {
      "id" : "Patient.name.given",
      "path" : "Patient.name.given",
      "max" : "0"
    },
    {
      "id" : "Patient.birthDate",
      "path" : "Patient.birthDate",
      "max" : "0"
    },
    {
      "id" : "Patient.address",
      "path" : "Patient.address",
      "min" : 1
    },
    {
      "id" : "Patient.address.line.extension:street",
      "path" : "Patient.address.line.extension",
      "sliceName" : "street",
      "max" : "0"
    },
    {
      "id" : "Patient.address.city",
      "path" : "Patient.address.city",
      "max" : "0"
    },
    {
      "id" : "Patient.address.country",
      "path" : "Patient.address.country",
      "min" : 1
    }]
  }
}

```
