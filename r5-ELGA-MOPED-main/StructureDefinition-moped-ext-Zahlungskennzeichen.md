# ELGA.MOPED\Zahlungskennzeichen - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Zahlungskennzeichen**

## Extension: Zahlungskennzeichen 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/moped-ext-Zahlungskennzeichen | *Version*:0.1.0 | |
| Draft as of 2026-01-26 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:Zahlungskennzeichen |

MOPED Extension für die Kostenmeldung. Konstenmeldung für A = Ausländerverrechnung, R = Regressangelegenheiten oder K = Kosteninformation

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [MOPED ARK Status Update - PaymentReconciliation](StructureDefinition-MopedARKStatusUpdate.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/moped-ext-Zahlungskennzeichen)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-moped-ext-Zahlungskennzeichen.csv), [Excel](StructureDefinition-moped-ext-Zahlungskennzeichen.xlsx), [Schematron](StructureDefinition-moped-ext-Zahlungskennzeichen.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "moped-ext-Zahlungskennzeichen",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-bind"
    }
  ],
  "url" : "https://elga.moped.at/StructureDefinition/moped-ext-Zahlungskennzeichen",
  "version" : "0.1.0",
  "name" : "Zahlungskennzeichen",
  "title" : "Zahlungskennzeichen",
  "status" : "draft",
  "date" : "2026-01-26T07:03:23+00:00",
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
  "description" : "MOPED Extension für die Kostenmeldung. Konstenmeldung für A = Ausländerverrechnung, R = Regressangelegenheiten oder K = Kosteninformation",
  "fhirVersion" : "5.0.0",
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [
    {
      "type" : "element",
      "expression" : "https://elga.moped.at/StructureDefinition/MopedARKStatusUpdate#PaymentReconciliation"
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
        "short" : "Zahlungskennzeichen",
        "definition" : "MOPED Extension für die Kostenmeldung. Konstenmeldung für A = Ausländerverrechnung, R = Regressangelegenheiten oder K = Kosteninformation"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://elga.moped.at/StructureDefinition/moped-ext-Zahlungskennzeichen"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://elga.moped.at/ValueSet/ZahlungskennzeichenVS"
        }
      }
    ]
  }
}

```
