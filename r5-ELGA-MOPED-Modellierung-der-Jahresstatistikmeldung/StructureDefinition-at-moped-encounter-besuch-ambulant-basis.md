# ELGA.MOPED\AT MOPED Encounter Besuch Ambulantes Profil - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT MOPED Encounter Besuch Ambulantes Profil**

## Resource Profile: AT MOPED Encounter Besuch Ambulantes Profil 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/at-moped-encounter-besuch-ambulant-basis | *Version*:0.1.0 | |
| Draft as of 2026-06-09 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:AtMopedEncounterBesuchAmbulantBasis |

 
MOPED Basis Profil der Encounter Ressource für den ambulanten Besuch 

**Usages:**

* Derived from this Profile: [AT MOPED Encounter Aufenthalt/Besuch Ambulant Bund Profil](StructureDefinition-at-moped-encounter-besuch-ambulant-Bund.md), [AT MOPED Encounter Aufenthalt/Besuch Ambulant KA Profil](StructureDefinition-at-moped-encounter-besuch-ambulant-KA.md), [AT MOPED Encounter Aufenthalt/Besuch Ambulant LGF Profil](StructureDefinition-at-moped-encounter-besuch-ambulant-LGF.md) and [AT MOPED Encounter Aufenthalt/Besuch Ambulant SV Profil](StructureDefinition-at-moped-encounter-besuch-ambulant-SV.md)
* Use this Profile: [AT MOPED Bundle Input KA Profil](StructureDefinition-at-moped-bundle-input-KA.md)
* Refer to this Profile: [MOPED ARKRequest](StructureDefinition-MopedARKRequest.md), [AT MOPED Composition $aufnehmen Profil](StructureDefinition-at-moped-composition-aufnehmen.md), [AT MOPED Composition generisches Profil](StructureDefinition-at-moped-composition-generisch.md), [AT MOPED Observation Entbindungsart Basis Profil](StructureDefinition-at-moped-observation-entbindungsart-basis.md)... Show 2 more, [AT MOPED Observation Geburtenanzahl Basis Profil](StructureDefinition-at-moped-observation-geburtenanzahl-basis.md) and [AT MOPED QuestionnaireResponse fallbezogenes Profil](StructureDefinition-at-moped-questionnaireresponse-fallbezogen.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/elga.moped|current/StructureDefinition/StructureDefinition-at-moped-encounter-besuch-ambulant-basis.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-moped-encounter-besuch-ambulant-basis.csv), [Excel](StructureDefinition-at-moped-encounter-besuch-ambulant-basis.xlsx), [Schematron](StructureDefinition-at-moped-encounter-besuch-ambulant-basis.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-moped-encounter-besuch-ambulant-basis",
  "url" : "https://elga.moped.at/StructureDefinition/at-moped-encounter-besuch-ambulant-basis",
  "version" : "0.1.0",
  "name" : "AtMopedEncounterBesuchAmbulantBasis",
  "title" : "AT MOPED Encounter Besuch Ambulantes Profil",
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
  "description" : "MOPED Basis Profil der Encounter Ressource für den ambulanten Besuch",
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
  "baseDefinition" : "https://elga.moped.at/StructureDefinition/at-moped-encounter-aufenthaltbesuch-generisch",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
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
