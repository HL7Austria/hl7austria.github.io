# ELGA.MOPED\MOPED Patient SV - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MOPED Patient SV**

## Resource Profile: MOPED Patient SV 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/MopedPatientSV | *Version*:0.1.0 | |
| Draft as of 2026-05-15 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MopedPatientSV |

 
MOPED Profil der Patient Ressource aus der Sicht der Rolle: SV 

**Usages:**

* Examples for this Profile: [Patient/Test1PatientSV](Patient-Test1PatientSV.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/MopedPatientSV)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MopedPatientSV.csv), [Excel](StructureDefinition-MopedPatientSV.xlsx), [Schematron](StructureDefinition-MopedPatientSV.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MopedPatientSV",
  "url" : "https://elga.moped.at/StructureDefinition/MopedPatientSV",
  "version" : "0.1.0",
  "name" : "MopedPatientSV",
  "title" : "MOPED Patient SV",
  "status" : "draft",
  "date" : "2026-05-15T07:39:15+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "MOPED Profil der Patient Ressource aus der Sicht der Rolle: SV",
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
      "id" : "Patient.address.extension:municipalityCode",
      "path" : "Patient.address.extension",
      "sliceName" : "municipalityCode",
      "max" : "0"
    },
    {
      "id" : "Patient.contact.address.extension:municipalityCode",
      "path" : "Patient.contact.address.extension",
      "sliceName" : "municipalityCode",
      "max" : "0"
    }]
  }
}

```
