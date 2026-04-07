# ELGA.MOPED\MOPED Encounter SV - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MOPED Encounter SV**

## Resource Profile: MOPED Encounter SV 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/MopedEncounterSV | *Version*:0.1.0 | |
| Draft as of 2026-04-07 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MopedEncounterSV |

 
MOPED Profil der Encounter Ressource für die Rolle: SV 

**Usages:**

* Examples for this Profile: [Encounter/PJ1EncounterSV](Encounter-PJ1EncounterSV.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/MopedEncounterSV)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MopedEncounterSV.csv), [Excel](StructureDefinition-MopedEncounterSV.xlsx), [Schematron](StructureDefinition-MopedEncounterSV.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MopedEncounterSV",
  "url" : "https://elga.moped.at/StructureDefinition/MopedEncounterSV",
  "version" : "0.1.0",
  "name" : "MopedEncounterSV",
  "title" : "MOPED Encounter SV",
  "status" : "draft",
  "date" : "2026-04-07T19:34:12+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "MOPED Profil der Encounter Ressource für die Rolle: SV",
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
  "type" : "Encounter",
  "baseDefinition" : "https://elga.moped.at/StructureDefinition/MopedEncounter",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Encounter",
      "path" : "Encounter"
    },
    {
      "id" : "Encounter.identifier:DatensatzID",
      "path" : "Encounter.identifier",
      "sliceName" : "DatensatzID",
      "max" : "0"
    },
    {
      "id" : "Encounter.class:Aufnahmeart2",
      "path" : "Encounter.class",
      "sliceName" : "Aufnahmeart2",
      "max" : "0"
    },
    {
      "id" : "Encounter.diagnosis.use",
      "path" : "Encounter.diagnosis.use",
      "max" : "0"
    },
    {
      "id" : "Encounter.admission.extension:Transportart",
      "path" : "Encounter.admission.extension",
      "sliceName" : "Transportart",
      "max" : "0"
    },
    {
      "id" : "Encounter.admission.destination",
      "path" : "Encounter.admission.destination",
      "max" : "0"
    }]
  }
}

```
