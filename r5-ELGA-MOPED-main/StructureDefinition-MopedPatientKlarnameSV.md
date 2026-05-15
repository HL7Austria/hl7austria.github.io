# ELGA.MOPED\MOPED Patient mit Klarname SV - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MOPED Patient mit Klarname SV**

## Resource Profile: MOPED Patient mit Klarname SV 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/MopedPatientKlarnameSV | *Version*:0.1.0 | |
| Draft as of 2026-05-15 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MopedPatientKlarnameSV |

 
MOPED Profil der Patient Ressource mit Klarname - verordnungsrelevant: SV 

**Usages:**

* Examples for this Profile: [Patient/Test1PatientSV](Patient-Test1PatientSV.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/MopedPatientKlarnameSV)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MopedPatientKlarnameSV.csv), [Excel](StructureDefinition-MopedPatientKlarnameSV.xlsx), [Schematron](StructureDefinition-MopedPatientKlarnameSV.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MopedPatientKlarnameSV",
  "url" : "https://elga.moped.at/StructureDefinition/MopedPatientKlarnameSV",
  "version" : "0.1.0",
  "name" : "MopedPatientKlarnameSV",
  "title" : "MOPED Patient mit Klarname SV",
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
  "description" : "MOPED Profil der Patient Ressource mit Klarname - verordnungsrelevant: SV",
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
      "id" : "Patient.name.family",
      "path" : "Patient.name.family",
      "min" : 1
    },
    {
      "id" : "Patient.name.given",
      "path" : "Patient.name.given",
      "min" : 1
    },
    {
      "id" : "Patient.birthDate",
      "path" : "Patient.birthDate",
      "min" : 1
    },
    {
      "id" : "Patient.address",
      "path" : "Patient.address",
      "min" : 1
    },
    {
      "id" : "Patient.address.country",
      "path" : "Patient.address.country",
      "min" : 1
    }]
  }
}

```
