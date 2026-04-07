# ELGA.MOPED\Moped Composition Sections - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Moped Composition Sections**

## CodeSystem: Moped Composition Sections (Experimental) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/CodeSystem/CompositionSectionsCS | *Version*:0.1.0 | |
| Active as of 2026-04-07 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:CompositionSectionsCS |

 
CodeSystem für die Moped Sections der Composition Ressource 

 This Code system is referenced in the content logical definition of the following value sets: 

* [CompositionSectionsVS](ValueSet-CompositionSectionsVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "CompositionSectionsCS",
  "url" : "https://elga.moped.at/CodeSystem/CompositionSectionsCS",
  "version" : "0.1.0",
  "name" : "CompositionSectionsCS",
  "title" : "Moped Composition Sections",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-04-07T06:39:12+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "CodeSystem für die Moped Sections der Composition Ressource",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 12,
  "concept" : [{
    "code" : "SV",
    "display" : "Zuständige SV"
  },
  {
    "code" : "LGF",
    "display" : "Zuständiger LGF"
  },
  {
    "code" : "KH",
    "display" : "Zuständiges KH"
  },
  {
    "code" : "ABT",
    "display" : "Besuchte Abteilungen"
  },
  {
    "code" : "COV",
    "display" : "Coverages"
  },
  {
    "code" : "DIAG",
    "display" : "Diagnosen (Conditions)"
  },
  {
    "code" : "LEI",
    "display" : "Leistungen (Procedures)"
  },
  {
    "code" : "OBS",
    "display" : "Observations"
  },
  {
    "code" : "HAUPTV",
    "display" : "Hauptversicherter"
  },
  {
    "code" : "QRESP",
    "display" : "QuestionnaireResponses"
  },
  {
    "code" : "ARKPAY",
    "display" : "ARK Status Updates"
  },
  {
    "code" : "COMM",
    "display" : "Communication & Responses"
  }]
}

```
