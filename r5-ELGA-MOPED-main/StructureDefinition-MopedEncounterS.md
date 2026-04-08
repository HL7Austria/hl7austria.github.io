# ELGA.MOPED\MOPED Encounter Stationär - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MOPED Encounter Stationär**

## Resource Profile: MOPED Encounter Stationär 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/MopedEncounterS | *Version*:0.1.0 | |
| Draft as of 2026-04-08 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MopedEncounterS |

 
MOPED Profil der Encounter Ressource für die Krankenanstaltenaufnahme und Entlassung im stationären Bereich 

**Usages:**

* Derived from this Profile: [MOPED Encounter Aufnahme Stationär](StructureDefinition-MopedEncounterAufnahmeS.md) and [MOPED Encounter Entlassung Stationär](StructureDefinition-MopedEncounterEntlassungS.md)
* Refer to this Profile: [MOPED Composition](StructureDefinition-MopedComposition.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/MopedEncounterS)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MopedEncounterS.csv), [Excel](StructureDefinition-MopedEncounterS.xlsx), [Schematron](StructureDefinition-MopedEncounterS.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MopedEncounterS",
  "url" : "https://elga.moped.at/StructureDefinition/MopedEncounterS",
  "version" : "0.1.0",
  "name" : "MopedEncounterS",
  "title" : "MOPED Encounter Stationär",
  "status" : "draft",
  "date" : "2026-04-08T06:34:39+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "MOPED Profil der Encounter Ressource für die Krankenanstaltenaufnahme und Entlassung im stationären Bereich",
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
      "id" : "Encounter.extension:TageOhneKostenbeitrag",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Encounter.extension",
      "sliceName" : "TageOhneKostenbeitrag",
      "short" : "KaOrg: Anzahl der Tage, für welche kein Kostenbeitrag seitens der Krankenanstalt eingehoben wurde",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://elga.moped.at/StructureDefinition/moped-ext-TageOhneKostenbeitrag"]
      }],
      "mapping" : [{
        "identity" : "KaOrg",
        "map" : "Anzahl der Tage für welche kein Kostenbeitrag seitens der Krankenanstalt eingehoben wurde"
      }]
    },
    {
      "id" : "Encounter.class",
      "path" : "Encounter.class",
      "min" : 2
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
        "code" : "S"
      }
    },
    {
      "id" : "Encounter.class:Aufnahmeart2",
      "path" : "Encounter.class",
      "sliceName" : "Aufnahmeart2",
      "min" : 1
    },
    {
      "id" : "Encounter.admission.extension",
      "path" : "Encounter.admission.extension",
      "min" : 1
    },
    {
      "id" : "Encounter.admission.extension:aufnahmeart",
      "path" : "Encounter.admission.extension",
      "sliceName" : "aufnahmeart",
      "min" : 1
    },
    {
      "id" : "Encounter.admission.origin",
      "path" : "Encounter.admission.origin",
      "short" : "LKF: Zugewiesen von – Krankenanstaltennummer",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Organization"]
      }]
    },
    {
      "id" : "Encounter.admission.destination",
      "path" : "Encounter.admission.destination",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Organization"]
      }]
    },
    {
      "id" : "Encounter.admission.dischargeDisposition",
      "path" : "Encounter.admission.dischargeDisposition",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://elga.moped.at/ValueSet/EntlassungsartSVS"
      }
    }]
  }
}

```
