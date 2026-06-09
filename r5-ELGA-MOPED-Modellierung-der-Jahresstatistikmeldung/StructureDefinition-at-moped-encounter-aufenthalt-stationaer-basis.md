# ELGA.MOPED\AT MOPED Encounter Aufenthalt Stationär Basis Profil - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT MOPED Encounter Aufenthalt Stationär Basis Profil**

## Resource Profile: AT MOPED Encounter Aufenthalt Stationär Basis Profil 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/at-moped-encounter-aufenthalt-stationaer-basis | *Version*:0.1.0 | |
| Draft as of 2026-06-09 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:AtMopedEncounterAufenthaltStationaerBasis |

 
MOPED Basis Profil der Encounter Ressource für den stationären Aufenthalt 

**Usages:**

* Derived from this Profile: [AT MOPED Encounter Aufenthalt Stationär Aufnahme Profil](StructureDefinition-at-moped-encounter-aufenthalt-stationaer-Aufnahme.md), [AT MOPED Encounter Aufenthalt/Besuch Stationär Bund Profil](StructureDefinition-at-moped-encounter-aufenthalt-stationaer-Bund.md), [AT MOPED Encounter Aufenthalt Stationär Entlassung Profil](StructureDefinition-at-moped-encounter-aufenthalt-stationaer-Entlassung.md), [AT MOPED Encounter Aufenthalt/Besuch Stationär KA Profil](StructureDefinition-at-moped-encounter-aufenthalt-stationaer-KA.md)... Show 2 more, [AT MOPED Encounter Aufenthalt/Besuch Stationär LGF Profil](StructureDefinition-at-moped-encounter-aufenthalt-stationaer-LGF.md) and [AT MOPED Encounter Aufenthalt/Besuch Stationär SV Profil](StructureDefinition-at-moped-encounter-aufenthalt-stationaer-SV.md)
* Use this Profile: [AT MOPED Bundle Input KA Profil](StructureDefinition-at-moped-bundle-input-KA.md)
* Refer to this Profile: [MOPED ARKRequest](StructureDefinition-MopedARKRequest.md), [AT MOPED Composition $aufnehmen Profil](StructureDefinition-at-moped-composition-aufnehmen.md), [AT MOPED Composition generisches Profil](StructureDefinition-at-moped-composition-generisch.md), [AT MOPED Observation Entbindungsart Basis Profil](StructureDefinition-at-moped-observation-entbindungsart-basis.md)... Show 2 more, [AT MOPED Observation Geburtenanzahl Basis Profil](StructureDefinition-at-moped-observation-geburtenanzahl-basis.md) and [AT MOPED QuestionnaireResponse fallbezogenes Profil](StructureDefinition-at-moped-questionnaireresponse-fallbezogen.md)
* Examples for this Profile: [Encounter/PJ1EncounterBasis](Encounter-PJ1EncounterBasis.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/elga.moped|current/StructureDefinition/StructureDefinition-at-moped-encounter-aufenthalt-stationaer-basis.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-moped-encounter-aufenthalt-stationaer-basis.csv), [Excel](StructureDefinition-at-moped-encounter-aufenthalt-stationaer-basis.xlsx), [Schematron](StructureDefinition-at-moped-encounter-aufenthalt-stationaer-basis.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-moped-encounter-aufenthalt-stationaer-basis",
  "url" : "https://elga.moped.at/StructureDefinition/at-moped-encounter-aufenthalt-stationaer-basis",
  "version" : "0.1.0",
  "name" : "AtMopedEncounterAufenthaltStationaerBasis",
  "title" : "AT MOPED Encounter Aufenthalt Stationär Basis Profil",
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
  "description" : "MOPED Basis Profil der Encounter Ressource für den stationären Aufenthalt",
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
      "id" : "Encounter.extension:TageOhneKostenbeitrag",
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
