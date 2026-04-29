# ELGA.MOPED\MOPED Encounter Ambulant - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MOPED Encounter Ambulant**

## Resource Profile: MOPED Encounter Ambulant 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/MopedEncounterA | *Version*:0.1.0 | |
| Draft as of 2026-04-29 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MopedEncounterA |

 
MOPED Profil der Encounter Ressource für die Krankenanstaltenaufnahme und Entlassung im ambulanten Bereich 

**Usages:**

* Refer to this Profile: [MOPED Composition](StructureDefinition-MopedComposition.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/MopedEncounterA)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MopedEncounterA.csv), [Excel](StructureDefinition-MopedEncounterA.xlsx), [Schematron](StructureDefinition-MopedEncounterA.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MopedEncounterA",
  "url" : "https://elga.moped.at/StructureDefinition/MopedEncounterA",
  "version" : "0.1.0",
  "name" : "MopedEncounterA",
  "title" : "MOPED Encounter Ambulant",
  "status" : "draft",
  "date" : "2026-04-29T07:28:34+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "MOPED Profil der Encounter Ressource für die Krankenanstaltenaufnahme und Entlassung im ambulanten Bereich",
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
      "id" : "Encounter.class:Behandlungsart",
      "path" : "Encounter.class",
      "sliceName" : "Behandlungsart"
    },
    {
      "id" : "Encounter.class:Behandlungsart.coding",
      "path" : "Encounter.class.coding",
      "patternCoding" : {
        "system" : "https://elga.moped.at/CodeSystem/BehandlungsartCS",
        "code" : "I",
        "display" : "Spitalsambulant"
      }
    },
    {
      "id" : "Encounter.admission.dischargeDisposition",
      "path" : "Encounter.admission.dischargeDisposition",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://elga.moped.at/ValueSet/EntlassungsartAVS"
      }
    }]
  }
}

```
