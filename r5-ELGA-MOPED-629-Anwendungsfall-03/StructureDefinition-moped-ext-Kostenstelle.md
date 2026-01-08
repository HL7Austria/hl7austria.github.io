# ELGA.MOPED\Kostenstelle - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Kostenstelle**

## Extension: Kostenstelle 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/moped-ext-Kostenstelle | *Version*:0.1.0 | |
| Draft as of 2025-10-15 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:Kostenstelle |

MOPED Extension für akzeptierte Errors und Warnings

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [MOPED Organization Abteilung](StructureDefinition-MopedOrganizationAbteilung.md)
* Examples for this Extension: [Organization/AbteilungHerzJesu1](Organization-AbteilungHerzJesu1.md), [Organization/KHK999ABT11111100](Organization-KHK999ABT11111100.md), [Organization/KHK999ABT12111100](Organization-KHK999ABT12111100.md), [Organization/KHK999ABT12118102](Organization-KHK999ABT12118102.md)...Show 5 more,[Organization/KHK999ABT16075000](Organization-KHK999ABT16075000.md),[Organization/KHK999ABT16111111](Organization-KHK999ABT16111111.md),[Organization/KHK999ABT16111112](Organization-KHK999ABT16111112.md),[Organization/KHK999ABT16211100](Organization-KHK999ABT16211100.md)and[Organization/KHK999ABT16518011](Organization-KHK999ABT16518011.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/moped-ext-Kostenstelle)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-moped-ext-Kostenstelle.csv), [Excel](StructureDefinition-moped-ext-Kostenstelle.xlsx), [Schematron](StructureDefinition-moped-ext-Kostenstelle.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "moped-ext-Kostenstelle",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
      "valueCode" : "can-bind"
    }
  ],
  "url" : "https://elga.moped.at/StructureDefinition/moped-ext-Kostenstelle",
  "version" : "0.1.0",
  "name" : "Kostenstelle",
  "title" : "Kostenstelle",
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
  "description" : "MOPED Extension für akzeptierte Errors und Warnings",
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
      "expression" : "https://elga.moped.at/StructureDefinition/MopedOrganizationAbteilung#Organization"
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
        "short" : "Kostenstelle",
        "definition" : "MOPED Extension für akzeptierte Errors und Warnings"
      },
      {
        "id" : "Extension.extension:InterneKostenstellennummer",
        "path" : "Extension.extension",
        "sliceName" : "InterneKostenstellennummer",
        "short" : "Interne Kostenstellennummer",
        "definition" : "Das Datenfeld enthält die krankenhausinterne Kostenstellennummer, sofern diese nicht mit dem Funktionscode ident ist.",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:InterneKostenstellennummer.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:InterneKostenstellennummer.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "InterneKostenstellennummer"
      },
      {
        "id" : "Extension.extension:InterneKostenstellennummer.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "unsignedInt"
          }
        ]
      },
      {
        "id" : "Extension.extension:InterneKostenstellenbezeichnung",
        "path" : "Extension.extension",
        "sliceName" : "InterneKostenstellenbezeichnung",
        "short" : "Interne Kostenstellenbezeichnung",
        "definition" : "Das Datenfeld enthält die krankenhausinterne Bezeichnung - den Namen - der Kostenstelle.",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:InterneKostenstellenbezeichnung.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:InterneKostenstellenbezeichnung.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "InterneKostenstellenbezeichnung"
      },
      {
        "id" : "Extension.extension:InterneKostenstellenbezeichnung.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "string"
          }
        ]
      },
      {
        "id" : "Extension.extension:SpezielleOrganisationsform",
        "path" : "Extension.extension",
        "sliceName" : "SpezielleOrganisationsform",
        "short" : "Spezielle Organisationsform",
        "definition" : "Die spezielle Organisationsform der stationären Versorgung ist im Kostenstellenplan zusätzlich zum Funktionscode mit einer entsprechenden Kennzeichnung zu versehen.",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:SpezielleOrganisationsform.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:SpezielleOrganisationsform.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "SpezielleOrganisationsform"
      },
      {
        "id" : "Extension.extension:SpezielleOrganisationsform.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "Coding"
          }
        ],
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://elga.moped.at/ValueSet/SpezielleOrganisationsformVS"
        }
      },
      {
        "id" : "Extension.extension:KostenstellenJahr",
        "path" : "Extension.extension",
        "sliceName" : "KostenstellenJahr",
        "short" : "Jahr der Kostenstelle",
        "definition" : "In diesem Datenfeld ist das Jahr der Gültigkeit der Kostenstelle festzuhalten.",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Extension.extension:KostenstellenJahr.extension",
        "path" : "Extension.extension.extension",
        "max" : "0"
      },
      {
        "id" : "Extension.extension:KostenstellenJahr.url",
        "path" : "Extension.extension.url",
        "fixedUri" : "KostenstellenJahr"
      },
      {
        "id" : "Extension.extension:KostenstellenJahr.value[x]",
        "path" : "Extension.extension.value[x]",
        "type" : [
          {
            "code" : "date"
          }
        ]
      },
      {
        "id" : "Extension.url",
        "path" : "Extension.url",
        "fixedUri" : "https://elga.moped.at/StructureDefinition/moped-ext-Kostenstelle"
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
