# ELGA.MOPED\Beihilfenaequivalent - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beihilfenaequivalent**

## Extension: Beihilfenaequivalent 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/moped-ext-Beihilfenaequivalent | *Version*:0.1.0 | |
| Draft as of 2025-10-15 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:Beihilfenaequivalent |

MOPED Extension für das Beihilfenaequivalent

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [MOPED ARKRequest](StructureDefinition-MopedARKRequest.md) and [MOPED ARKResponse](StructureDefinition-MopedARKResponse.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/moped-ext-Beihilfenaequivalent)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-moped-ext-Beihilfenaequivalent.csv), [Excel](StructureDefinition-moped-ext-Beihilfenaequivalent.xlsx), [Schematron](StructureDefinition-moped-ext-Beihilfenaequivalent.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "moped-ext-Beihilfenaequivalent",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-bind"
    }
  ],
  "url" : "https://elga.moped.at/StructureDefinition/moped-ext-Beihilfenaequivalent",
  "version" : "0.1.0",
  "name" : "Beihilfenaequivalent",
  "title" : "Beihilfenaequivalent",
  "status" : "draft",
  "date" : "2025-10-15T12:16:02+00:00",
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
  "description" : "MOPED Extension für das Beihilfenaequivalent",
  "fhirVersion" : "5.0.0",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [
    {
      "type" : "element",
      "expression" : "https://elga.moped.at/StructureDefinition/MopedLKFResponse#ClaimResponse"
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
        "short" : "Beihilfenaequivalent",
        "definition" : "MOPED Extension für das Beihilfenaequivalent"
      },
      {
        "id" : "Extension.extension",
        "path" : "Extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://elga.moped.at/StructureDefinition/moped-ext-Beihilfenaequivalent"
      },
      {
        "id" : "Extension.value[x]",
        "path" : "Extension.value[x]",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "type",
              "path" : "$this"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "Extension.value[x]:valueDecimal",
        "path" : "Extension.value[x]",
        "sliceName" : "valueDecimal",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "decimal"
          }
        ]
      }
    ]
  }
}

```
