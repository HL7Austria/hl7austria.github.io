# ELGA.MOPED\AT MOPED Encounter Bewegung Ambulant Basis Profil - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT MOPED Encounter Bewegung Ambulant Basis Profil**

## Resource Profile: AT MOPED Encounter Bewegung Ambulant Basis Profil 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/at-moped-encounter-bewegung-ambulant-basis | *Version*:0.1.0 | |
| Draft as of 2026-06-09 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:AtMopedEncounterBewegungAmbulantBasis |

 
MOPED Profil der Encounter Ressource für ambulante Kontakte/Bewegungen 

**Usages:**

* Refer to this Profile: [AT MOPED Composition generisches Profil](StructureDefinition-at-moped-composition-generisch.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/elga.moped|current/StructureDefinition/StructureDefinition-at-moped-encounter-bewegung-ambulant-basis.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-moped-encounter-bewegung-ambulant-basis.csv), [Excel](StructureDefinition-at-moped-encounter-bewegung-ambulant-basis.xlsx), [Schematron](StructureDefinition-at-moped-encounter-bewegung-ambulant-basis.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-moped-encounter-bewegung-ambulant-basis",
  "url" : "https://elga.moped.at/StructureDefinition/at-moped-encounter-bewegung-ambulant-basis",
  "version" : "0.1.0",
  "name" : "AtMopedEncounterBewegungAmbulantBasis",
  "title" : "AT MOPED Encounter Bewegung Ambulant Basis Profil",
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
  "description" : "MOPED Profil der Encounter Ressource für ambulante Kontakte/Bewegungen",
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
  "baseDefinition" : "https://elga.moped.at/StructureDefinition/at-moped-encounter-bewegung-generisch",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Encounter",
      "path" : "Encounter"
    },
    {
      "id" : "Encounter.identifier",
      "path" : "Encounter.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "type.coding.code"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Encounter.identifier:AufnahmezahlFunktionscodebezogen",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKAActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Encounter.identifier",
      "sliceName" : "AufnahmezahlFunktionscodebezogen",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Encounter.identifier:AufnahmezahlFunktionscodebezogen.type.coding.system",
      "path" : "Encounter.identifier.type.coding.system",
      "patternUri" : "http://terminology.hl7.org/CodeSystem/v2-0203"
    },
    {
      "id" : "Encounter.identifier:AufnahmezahlFunktionscodebezogen.type.coding.code",
      "path" : "Encounter.identifier.type.coding.code",
      "min" : 1,
      "fixedCode" : "VN"
    },
    {
      "id" : "Encounter.identifier:AufnahmezahlFunktionscodebezogen.system",
      "path" : "Encounter.identifier.system",
      "min" : 1
    },
    {
      "id" : "Encounter.identifier:AufnahmezahlFunktionscodebezogen.value",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKAActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Encounter.identifier.value",
      "mapping" : [{
        "identity" : "LKF",
        "map" : "Aufnahmezahl – funktionscodebezogen"
      }]
    },
    {
      "id" : "Encounter.subjectStatus",
      "path" : "Encounter.subjectStatus",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://elga.moped.at/ValueSet/AnwesenheitsartVS"
      }
    },
    {
      "id" : "Encounter.admission.extension:Altersgruppe",
      "path" : "Encounter.admission.extension",
      "sliceName" : "Altersgruppe"
    },
    {
      "id" : "Encounter.admission.extension:Altersgruppe.extension:neugeborenes",
      "path" : "Encounter.admission.extension.extension",
      "sliceName" : "neugeborenes",
      "max" : "0"
    }]
  }
}

```
