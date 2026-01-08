# ELGA.MOPED\VerpflegskostenBeitragsbefreiung - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **VerpflegskostenBeitragsbefreiung**

## Extension: VerpflegskostenBeitragsbefreiung 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/moped-ext-verpflegskostenBeitragsbefreiung | *Version*:0.1.0 | |
| Draft as of 2025-12-19 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:VerpflegskostenBeitragsbefreiung |

VKBEFR – Verpflegskosten-Beitragsbefreiung

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [MOPED VAEResponse](StructureDefinition-MopedVAEResponse.md)
* Examples for this Extension: [ClaimResponse/PJ1VAEResponse1](ClaimResponse-PJ1VAEResponse1.md) and [ClaimResponse/PJ2VAEResponse1](ClaimResponse-PJ2VAEResponse1.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/moped-ext-verpflegskostenBeitragsbefreiung)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-moped-ext-verpflegskostenBeitragsbefreiung.csv), [Excel](StructureDefinition-moped-ext-verpflegskostenBeitragsbefreiung.xlsx), [Schematron](StructureDefinition-moped-ext-verpflegskostenBeitragsbefreiung.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "moped-ext-verpflegskostenBeitragsbefreiung",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-bind"
    }
  ],
  "url" : "https://elga.moped.at/StructureDefinition/moped-ext-verpflegskostenBeitragsbefreiung",
  "version" : "0.1.0",
  "name" : "VerpflegskostenBeitragsbefreiung",
  "title" : "VerpflegskostenBeitragsbefreiung",
  "status" : "draft",
  "date" : "2025-12-19T13:11:40+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [
    {
      "name" : "ELGA GmbH",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://elga.gv.at"
        }
      ]
    }
  ],
  "description" : "VKBEFR – Verpflegskosten-Beitragsbefreiung",
  "fhirVersion" : "5.0.0",
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [
    {
      "type" : "element",
      "expression" : "https://elga.moped.at/StructureDefinition/MopedVAEResponse#ClaimResponse"
    }
  ],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Extension",
        "path" : "Extension",
        "short" : "VerpflegskostenBeitragsbefreiung",
        "definition" : "VKBEFR – Verpflegskosten-Beitragsbefreiung"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "min" : 2
      },
      {
        "id" : "Extension.extension:Befreiung",
        "path" : "Extension.extension",
        "sliceName" : "Befreiung",
        "short" : "VKBEFR – Verpflegskosten-Beitragsbefreiung",
        "definition" : "VKBEFR – Verpflegskosten-Beitragsbefreiung",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Extension.extension:Befreiung.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:Befreiung.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "Befreiung"
      },
      {
        "id" : "Extension.extension:Befreiung.value[x]",
        "path" : "Extension.extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://elga.moped.at/ValueSet/VerpflegskostenBeitragsbefreiungVS"
        }
      },
      {
        "id" : "Extension.extension:Zeitraum",
        "path" : "Extension.extension",
        "sliceName" : "Zeitraum",
        "short" : "Zeitraum in der die Verpflegskostenbeitragsbefreiung gilt",
        "definition" : "Zeitraum in der die Verpflegskostenbeitragsbefreiung gilt",
        "min" : 1,
        "max" : "1",
        "mustSupport" : true
      },
      {
        "id" : "Extension.extension:Zeitraum.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:Zeitraum.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "Zeitraum"
      },
      {
        "id" : "Extension.extension:Zeitraum.value[x]",
        "path" : "Extension.extension.value[x]",
        "min" : 1,
        "type" : [
          {
            "code" : "Period"
          }
        ]
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://elga.moped.at/StructureDefinition/moped-ext-verpflegskostenBeitragsbefreiung"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "max" : "0"
      }
    ]
  }
}

```
