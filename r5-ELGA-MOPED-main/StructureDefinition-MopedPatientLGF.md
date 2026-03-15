# ELGA.MOPED\MOPED Patient LGF - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MOPED Patient LGF**

## Resource Profile: MOPED Patient LGF 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/MopedPatientLGF | *Version*:0.1.0 | |
| Draft as of 2026-03-15 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MopedPatientLGF |

 
MOPED Profil der Patient Ressource aus der Sicht der Rolle: LGF 

**Usages:**

* Examples for this Profile: [Patient/Test1PatientLGF](Patient-Test1PatientLGF.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/MopedPatientLGF)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MopedPatientLGF.csv), [Excel](StructureDefinition-MopedPatientLGF.xlsx), [Schematron](StructureDefinition-MopedPatientLGF.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MopedPatientLGF",
  "url" : "https://elga.moped.at/StructureDefinition/MopedPatientLGF",
  "version" : "0.1.0",
  "name" : "MopedPatientLGF",
  "title" : "MOPED Patient LGF",
  "status" : "draft",
  "date" : "2026-03-15T19:53:47+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "MOPED Profil der Patient Ressource aus der Sicht der Rolle: LGF",
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
