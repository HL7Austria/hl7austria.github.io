# ELGA.MOPED\MOPED Patient mit Klarname SV - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MOPED Patient mit Klarname SV**

## Resource Profile: MOPED Patient mit Klarname SV 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/at-moped-patient-klarname-SV | *Version*:0.1.0 | |
| Draft as of 2026-06-09 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:AtMopedPatientKlarnameSV |

 
MOPED Profil der Patient Ressource mit Klarname - verordnungsrelevant: SV 

**Usages:**

* Examples for this Profile: [Patient/Test1PatientSV](Patient-Test1PatientSV.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/elga.moped|current/StructureDefinition/StructureDefinition-at-moped-patient-klarname-SV.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-moped-patient-klarname-SV.csv), [Excel](StructureDefinition-at-moped-patient-klarname-SV.xlsx), [Schematron](StructureDefinition-at-moped-patient-klarname-SV.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-moped-patient-klarname-SV",
  "url" : "https://elga.moped.at/StructureDefinition/at-moped-patient-klarname-SV",
  "version" : "0.1.0",
  "name" : "AtMopedPatientKlarnameSV",
  "title" : "MOPED Patient mit Klarname SV",
  "status" : "draft",
  "date" : "2026-06-09T11:53:00+00:00",
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
  "baseDefinition" : "https://elga.moped.at/StructureDefinition/at-moped-patient-klarname-basis",
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
