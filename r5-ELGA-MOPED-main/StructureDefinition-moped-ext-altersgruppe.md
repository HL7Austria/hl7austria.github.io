# ELGA.MOPED\Altersgruppe - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Altersgruppe**

## Extension: Altersgruppe 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/moped-ext-altersgruppe | *Version*:0.1.0 | |
| Draft as of 2026-04-07 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:Altersgruppe |

In Gruppen eingeteilt, wobei vollendete Lebensjahre ausschlaggebend sind.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [MOPED Encounter](StructureDefinition-MopedEncounter.md) and [MOPED TransferEncounter](StructureDefinition-MopedTransferEncounter.md)
* Examples for this Extension: [Encounter/Encounter42](Encounter-Encounter42.md), [Encounter/PJ1TransferEncounter1](Encounter-PJ1TransferEncounter1.md), [Encounter/PJ1TransferEncounter1Aufnahme](Encounter-PJ1TransferEncounter1Aufnahme.md), [Encounter/PJ2TransferEncounter1](Encounter-PJ2TransferEncounter1.md)... Show 6 more, [Encounter/PJ2TransferEncounter2](Encounter-PJ2TransferEncounter2.md), [Encounter/PJ2TransferEncounter3](Encounter-PJ2TransferEncounter3.md), [Encounter/PJ2TransferEncounter4](Encounter-PJ2TransferEncounter4.md), [Encounter/PJ2TransferEncounter5](Encounter-PJ2TransferEncounter5.md), [Encounter/TransferEncounter42.1](Encounter-TransferEncounter42.1.md) and [Encounter/TransferEncounter42.2](Encounter-TransferEncounter42.2.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/moped-ext-altersgruppe)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-moped-ext-altersgruppe.csv), [Excel](StructureDefinition-moped-ext-altersgruppe.xlsx), [Schematron](StructureDefinition-moped-ext-altersgruppe.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "moped-ext-altersgruppe",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "https://elga.moped.at/StructureDefinition/moped-ext-altersgruppe",
  "version" : "0.1.0",
  "name" : "Altersgruppe",
  "title" : "Altersgruppe",
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
  "description" : "In Gruppen eingeteilt, wobei vollendete Lebensjahre ausschlaggebend sind.",
  "fhirVersion" : "5.0.0",
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "https://elga.moped.at/StructureDefinition/MopedTransferEncounter#Encounter.admission"
  },
  {
    "type" : "element",
    "expression" : "https://elga.moped.at/StructureDefinition/MopedEncounter#Encounter"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Altersgruppe",
      "definition" : "In Gruppen eingeteilt, wobei vollendete Lebensjahre ausschlaggebend sind.",
      "constraint" : [{
        "key" : "moped-inv-Altersgruppe-1",
        "severity" : "error",
        "human" : "If 'neugeborenes' is true then 'beiZugang' must be age group 0.",
        "expression" : "(extension.where(url = 'neugeborenes').exists() and extension.where(url = 'neugeborenes').value = true) implies (extension.where(url = 'beiZugang').value = '0')",
        "source" : "https://elga.moped.at/StructureDefinition/moped-ext-altersgruppe"
      }]
    },
    {
      "id" : "Extension.extension:beiZugang",
      "path" : "Extension.extension",
      "sliceName" : "beiZugang",
      "short" : "Altersgruppe bei Zugang/Kontakt",
      "definition" : "Nach dem Alter in Gruppen eingeteilt, wobei vollendete Lebensjahre ausschlaggebend sind.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:beiZugang.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:beiZugang.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "beiZugang"
    },
    {
      "id" : "Extension.extension:beiZugang.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://elga.moped.at/ValueSet/AltersgruppeVS"
      }
    },
    {
      "id" : "Extension.extension:beiEntlassung",
      "path" : "Extension.extension",
      "sliceName" : "beiEntlassung",
      "short" : "Altersgruppe bei Entlassung/Kontakt",
      "definition" : "Nach dem Alter in Gruppen eingeteilt, wobei vollendete Lebensjahre ausschlaggebend sind.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:beiEntlassung.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:beiEntlassung.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "beiEntlassung"
    },
    {
      "id" : "Extension.extension:beiEntlassung.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://elga.moped.at/ValueSet/AltersgruppeVS"
      }
    },
    {
      "id" : "Extension.extension:neugeborenes",
      "path" : "Extension.extension",
      "sliceName" : "neugeborenes",
      "short" : "Neugeborenes",
      "definition" : "Ein Patient wird als Neugeborenes bezeichnet, wenn das Alter zum Zugangszeitpunkt auf die Abteilung <28 Tage ist.",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Extension.extension:neugeborenes.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:neugeborenes.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "neugeborenes"
    },
    {
      "id" : "Extension.extension:neugeborenes.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://elga.moped.at/StructureDefinition/moped-ext-altersgruppe"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
