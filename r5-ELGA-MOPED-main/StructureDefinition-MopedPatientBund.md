# ELGA.MOPED\MOPED Patient Bund - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MOPED Patient Bund**

## Resource Profile: MOPED Patient Bund 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/MopedPatientBund | *Version*:0.1.0 | |
| Draft as of 2026-05-05 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MopedPatientBund |

 
MOPED Profil der Patient Ressource aus der Sicht der Rolle: Bund 

**Usages:**

* Examples for this Profile: [Patient/Test1PatientBund](Patient-Test1PatientBund.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/MopedPatientBund)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MopedPatientBund.csv), [Excel](StructureDefinition-MopedPatientBund.xlsx), [Schematron](StructureDefinition-MopedPatientBund.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MopedPatientBund",
  "url" : "https://elga.moped.at/StructureDefinition/MopedPatientBund",
  "version" : "0.1.0",
  "name" : "MopedPatientBund",
  "title" : "MOPED Patient Bund",
  "status" : "draft",
  "date" : "2026-05-05T07:22:12+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "MOPED Profil der Patient Ressource aus der Sicht der Rolle: Bund",
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
  "baseDefinition" : "https://elga.moped.at/StructureDefinition/MopedPatient",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Patient",
      "path" : "Patient"
    },
    {
      "id" : "Patient.extension:PatientReligion",
      "path" : "Patient.extension",
      "sliceName" : "PatientReligion",
      "max" : "0"
    },
    {
      "id" : "Patient.identifier",
      "path" : "Patient.identifier",
      "max" : "0"
    },
    {
      "id" : "Patient.identifier:socialSecurityNumber",
      "path" : "Patient.identifier",
      "sliceName" : "socialSecurityNumber",
      "max" : "0"
    },
    {
      "id" : "Patient.identifier:bPK",
      "path" : "Patient.identifier",
      "sliceName" : "bPK",
      "max" : "0"
    },
    {
      "id" : "Patient.identifier:localPatientId",
      "path" : "Patient.identifier",
      "sliceName" : "localPatientId",
      "max" : "0"
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
      "patternCode" : "masked"
    },
    {
      "id" : "Patient.telecom",
      "path" : "Patient.telecom",
      "max" : "0"
    },
    {
      "id" : "Patient.birthDate",
      "path" : "Patient.birthDate",
      "max" : "0"
    },
    {
      "id" : "Patient.address.text",
      "path" : "Patient.address.text",
      "max" : "0"
    },
    {
      "id" : "Patient.address.line",
      "path" : "Patient.address.line",
      "max" : "0"
    },
    {
      "id" : "Patient.address.city",
      "path" : "Patient.address.city",
      "max" : "0"
    }]
  }
}

```
