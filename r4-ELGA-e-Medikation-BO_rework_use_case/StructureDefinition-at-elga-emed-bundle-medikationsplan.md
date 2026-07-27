# HL7.AT.FHIR.ELGA.EMED.R4\AT ELGA e-Medikation Collection Bundle Medikationsplan - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT ELGA e-Medikation Collection Bundle Medikationsplan**

## Resource Profile: AT ELGA e-Medikation Collection Bundle Medikationsplan 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-bundle-medikationsplan | *Version*:0.1.1 | |
| Draft as of 2026-07-27 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:AtElgaEmedBundleMedikationsplan |

 
Das Bundle vom Typ Collection bestehend aus: 
* 1..1 Medikationsplan (List): Liste mit Referenzen auf Medikationsplaneinträge und zur Abbildung von Reihenfolge und Änderungsstatus
* 0..* Medikationsplaneinträge (MedicationRequests): Medikation und Dosierung
 

**Usages:**

* Examples for this Profile: [Bundle/At-Emed-Journey-01-Bundle-Medikationsplan](Bundle-At-Emed-Journey-01-Bundle-Medikationsplan.md), [Bundle/At-Emed-Journey-02-Bundle-Medikationsplan](Bundle-At-Emed-Journey-02-Bundle-Medikationsplan.md), [Bundle/At-Emed-Journey-05-a-Bundle-Medikationsplan](Bundle-At-Emed-Journey-05-a-Bundle-Medikationsplan.md) and [Bundle/At-Emed-Journey-05-b-Bundle-Medikationsplan](Bundle-At-Emed-Journey-05-b-Bundle-Medikationsplan.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.elga.emed.r4|current/StructureDefinition/StructureDefinition-at-elga-emed-bundle-medikationsplan.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-elga-emed-bundle-medikationsplan.csv), [Excel](StructureDefinition-at-elga-emed-bundle-medikationsplan.xlsx), [Schematron](StructureDefinition-at-elga-emed-bundle-medikationsplan.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-elga-emed-bundle-medikationsplan",
  "url" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-bundle-medikationsplan",
  "version" : "0.1.1",
  "name" : "AtElgaEmedBundleMedikationsplan",
  "title" : "AT ELGA e-Medikation Collection Bundle Medikationsplan",
  "status" : "draft",
  "date" : "2026-07-27T20:12:18+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "http://elga.gv.at"
    }]
  },
  {
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at",
      "use" : "work"
    }]
  }],
  "description" : "Das Bundle vom Typ Collection bestehend aus: \n- 1..1 Medikationsplan (List): Liste mit Referenzen auf Medikationsplaneinträge und zur Abbildung von Reihenfolge und Änderungsstatus \n- 0..* Medikationsplaneinträge (MedicationRequests): Medikation und Dosierung",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Bundle",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Bundle",
      "path" : "Bundle"
    },
    {
      "id" : "Bundle.identifier",
      "path" : "Bundle.identifier",
      "short" : "Persistenter Identifikator für das Bundle.",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.type",
      "path" : "Bundle.type",
      "short" : "Art des Bundles. Für Medikationspläne immer \"collection\".",
      "patternCode" : "collection",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.timestamp",
      "path" : "Bundle.timestamp",
      "short" : "Zeitpunkt der Erstellung des Bundles.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.link",
      "path" : "Bundle.link",
      "short" : "Verweise auf weiterführende Informationen zum Bundle.",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry",
      "path" : "Bundle.entry",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "resource"
        }],
        "ordered" : true,
        "rules" : "closed"
      },
      "min" : 1
    },
    {
      "id" : "Bundle.entry.link",
      "path" : "Bundle.entry.link",
      "short" : "Verweise auf weiterführende Informationen zu diesem Entry.",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry.fullUrl",
      "path" : "Bundle.entry.fullUrl",
      "short" : "Eindeutige URL für den Eintrag im Bundle."
    },
    {
      "id" : "Bundle.entry:Medikationsplan",
      "path" : "Bundle.entry",
      "sliceName" : "Medikationsplan",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Bundle.entry:Medikationsplan.link",
      "path" : "Bundle.entry.link",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry:Medikationsplan.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "List",
        "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-list-medikationsplan"]
      }]
    },
    {
      "id" : "Bundle.entry:Medikationsplaneintrag",
      "path" : "Bundle.entry",
      "sliceName" : "Medikationsplaneintrag",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:Medikationsplaneintrag.link",
      "path" : "Bundle.entry.link",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry:Medikationsplaneintrag.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "MedicationRequest",
        "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medicationrequest-planeintrag"]
      }]
    }]
  }
}

```
