# ELGA.MOPED\MOPED vbPK Patient KA - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MOPED vbPK Patient KA**

## Resource Profile: MOPED vbPK Patient KA 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/at-moped-patient-vbPK-KA | *Version*:0.1.0 | |
| Draft as of 2026-06-09 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:AtMopedPatientvbPKKA |

 
MOPED Profil der Patienten Ressource mit vbPKs - verordnungsrelevant: KA 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/elga.moped|current/StructureDefinition/StructureDefinition-at-moped-patient-vbPK-KA.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-moped-patient-vbPK-KA.csv), [Excel](StructureDefinition-at-moped-patient-vbPK-KA.xlsx), [Schematron](StructureDefinition-at-moped-patient-vbPK-KA.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-moped-patient-vbPK-KA",
  "url" : "https://elga.moped.at/StructureDefinition/at-moped-patient-vbPK-KA",
  "version" : "0.1.0",
  "name" : "AtMopedPatientvbPKKA",
  "title" : "MOPED vbPK Patient KA",
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
  "description" : "MOPED Profil der Patienten Ressource mit vbPKs - verordnungsrelevant: KA",
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
  "baseDefinition" : "https://elga.moped.at/StructureDefinition/at-moped-patient-vbPK-basis",
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
      "id" : "Patient.identifier",
      "path" : "Patient.identifier",
      "min" : 3,
      "max" : "3"
    },
    {
      "id" : "Patient.identifier:vbPKGH",
      "path" : "Patient.identifier",
      "sliceName" : "vbPKGH",
      "min" : 1
    },
    {
      "id" : "Patient.identifier:vbPKSV",
      "path" : "Patient.identifier",
      "sliceName" : "vbPKSV",
      "min" : 1
    },
    {
      "id" : "Patient.identifier:vbPKAS",
      "path" : "Patient.identifier",
      "sliceName" : "vbPKAS",
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
