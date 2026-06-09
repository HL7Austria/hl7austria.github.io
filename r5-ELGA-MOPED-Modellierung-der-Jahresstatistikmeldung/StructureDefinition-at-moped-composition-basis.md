# ELGA.MOPED\AT MOPED Composition Basis Profil - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT MOPED Composition Basis Profil**

## Resource Profile: AT MOPED Composition Basis Profil ( Experimental ) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/at-moped-composition-basis | *Version*:0.1.0 | |
| Draft as of 2026-06-09 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:AtMopedCompositionBasis |

 
MOPED Basis Profil der Composition Ressource in der sich der gesamte Moped Datensatz aufbaut. Diese unterstütz durch ihre Invarianten eine konsistente Datenhaltung. 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/elga.moped|current/StructureDefinition/StructureDefinition-at-moped-composition-basis.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-moped-composition-basis.csv), [Excel](StructureDefinition-at-moped-composition-basis.xlsx), [Schematron](StructureDefinition-at-moped-composition-basis.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-moped-composition-basis",
  "url" : "https://elga.moped.at/StructureDefinition/at-moped-composition-basis",
  "version" : "0.1.0",
  "name" : "AtMopedCompositionBasis",
  "title" : "AT MOPED Composition Basis Profil",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-06-09T11:53:00+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "MOPED Basis Profil der Composition Ressource in der sich der gesamte Moped Datensatz aufbaut. Diese unterstütz durch ihre Invarianten eine konsistente Datenhaltung.",
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
  "type" : "Composition",
  "baseDefinition" : "https://elga.moped.at/StructureDefinition/at-moped-composition-generisch",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Composition",
      "path" : "Composition",
      "constraint" : [{
        "key" : "moped-master-entlassungdatum-liegt-nach-aufnahmedatum",
        "severity" : "error",
        "human" : "Falls es ein Entlassungsdatum gibt, dann muss dieses nach dem Aufnahmedatum liegen",
        "source" : "https://elga.moped.at/StructureDefinition/at-moped-composition-basis"
      },
      {
        "key" : "moped-master-patient-auf-genau-einer-station",
        "severity" : "error",
        "human" : "Der Patient darf zu jedem Zeitpunkt nur auf genau einer Station liegen => Die Zeiträume der BewegungsEncounters dürfen sich nicht überschneiden.",
        "source" : "https://elga.moped.at/StructureDefinition/at-moped-composition-basis"
      },
      {
        "key" : "moped-master-VAEResponse-nur-wenn-VAERequest",
        "severity" : "error",
        "human" : "Eine VAE-Response darf nur existieren, wenn auch ein dazugehöriger VAE-Request existiert",
        "source" : "https://elga.moped.at/StructureDefinition/at-moped-composition-basis"
      },
      {
        "key" : "moped-master-lkfresponse-nur-wenn-lkfrequest",
        "severity" : "error",
        "human" : "Eine LKF-Response darf nur existieren, wenn auch ein dazugehöriger LKF-Request existiert",
        "source" : "https://elga.moped.at/StructureDefinition/at-moped-composition-basis"
      },
      {
        "key" : "moped-master-author-ist-gleich-haupt-KA",
        "severity" : "error",
        "human" : "Der Author muss dieselbe Organisation sein wie die zustaendige KA",
        "source" : "https://elga.moped.at/StructureDefinition/at-moped-composition-basis"
      },
      {
        "key" : "moped-master-alle-KA-referenzen-gleich",
        "severity" : "error",
        "human" : "Alle referenzierten Krankenanstalten müssen identisch sein",
        "source" : "https://elga.moped.at/StructureDefinition/at-moped-composition-basis"
      },
      {
        "key" : "moped-master-observations-innerhalb-aufenthaltszeitraum",
        "severity" : "error",
        "human" : "Alle Observations müssen innerhalb des Aufenthaltszeitraums liegen",
        "source" : "https://elga.moped.at/StructureDefinition/at-moped-composition-basis"
      },
      {
        "key" : "moped-master-transferencounter-innerhalb-aufenthaltszeitraum",
        "severity" : "error",
        "human" : "Alle Transfer-Encounters müssen innerhalb des Aufenthaltszeitraums liegen",
        "source" : "https://elga.moped.at/StructureDefinition/at-moped-composition-basis"
      },
      {
        "key" : "moped-master-procedures-innerhalb-aufenthaltszeitraum",
        "severity" : "error",
        "human" : "Alle Procedures müssen innerhalb des Aufenthaltszeitraums liegen",
        "source" : "https://elga.moped.at/StructureDefinition/at-moped-composition-basis"
      },
      {
        "key" : "moped-master-conditions-innerhalb-aufenthaltszeitraum",
        "severity" : "error",
        "human" : "Alle Conditions müssen innerhalb des Aufenthaltszeitraums liegen",
        "source" : "https://elga.moped.at/StructureDefinition/at-moped-composition-basis"
      },
      {
        "key" : "moped-zustaendige-SV-in-Coverage",
        "severity" : "error",
        "human" : "Wenn es eine zuständige Sozialversicherung gibt, muss diese in der Coverage referenziert werden",
        "source" : "https://elga.moped.at/StructureDefinition/at-moped-composition-basis"
      },
      {
        "key" : "moped-master-hauptversicherter-nur-wenn-versicherung",
        "severity" : "error",
        "human" : "Ein Hauptversicherter darf nur angegeben sein, wenn es eine Coverage gibt, die keine Selbstzahlercoverage ist.",
        "source" : "https://elga.moped.at/StructureDefinition/at-moped-composition-basis"
      },
      {
        "key" : "moped-master-nur-ein-hauptversicherter",
        "severity" : "error",
        "human" : "Es darf zu jedem Zeitpunkt maximal einen Hauptversicherten geben",
        "source" : "https://elga.moped.at/StructureDefinition/at-moped-composition-basis"
      },
      {
        "key" : "moped-master-stationszeitraueme-decken-aufenthalt-ab",
        "severity" : "error",
        "human" : "Die kombinierten Stationszeiträume müssen den gesamten Aufenthaltszeitraum abdecken",
        "source" : "https://elga.moped.at/StructureDefinition/at-moped-composition-basis"
      },
      {
        "key" : "moped-master-alle-referenzierten-patienten-identisch",
        "severity" : "error",
        "human" : "Alle referenzierten Patienten müssen identisch sein",
        "source" : "https://elga.moped.at/StructureDefinition/at-moped-composition-basis"
      },
      {
        "key" : "moped-master-alle-referenzierten-lgfs-identisch",
        "severity" : "error",
        "human" : "Alle referenzierten Landesgesundheitsfonds müssen identisch sein",
        "source" : "https://elga.moped.at/StructureDefinition/at-moped-composition-basis"
      },
      {
        "key" : "moped-master-alle-transferencounter-sind-teil-des-hauptencounter",
        "severity" : "error",
        "human" : "Alle Transfer-Encounters müssen dem HauptEncounter untergeordnet sein",
        "source" : "https://elga.moped.at/StructureDefinition/at-moped-composition-basis"
      },
      {
        "key" : "moped-master-erstes-stationsdatum-gleich-aufnahmedatum",
        "severity" : "error",
        "human" : "Das erste Stationsdatum muss dem Aufnahmedatum entsprechen",
        "source" : "https://elga.moped.at/StructureDefinition/at-moped-composition-basis"
      },
      {
        "key" : "moped-master-letztes-stationsdatum-gleich-entlassungsdatum",
        "severity" : "error",
        "human" : "Das letzte Stationsdatum muss dem Entlassungsdatum entsprechen, sofern es bereits ein Entlassungsdatum gibt",
        "source" : "https://elga.moped.at/StructureDefinition/at-moped-composition-basis"
      },
      {
        "key" : "moped-master-nur-ein-aktiver-transferencounter",
        "severity" : "error",
        "human" : "Es darf immer nur ein aktiver Transfer-Encounter gleichzeitig existieren",
        "source" : "https://elga.moped.at/StructureDefinition/at-moped-composition-basis"
      }]
    }]
  }
}

```
