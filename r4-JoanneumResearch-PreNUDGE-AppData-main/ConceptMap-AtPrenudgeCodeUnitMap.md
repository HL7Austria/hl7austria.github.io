# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\AT PreNUDGE Code-to-Unit Mapping - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT PreNUDGE Code-to-Unit Mapping**

## ConceptMap: AT PreNUDGE Code-to-Unit Mapping 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/ConceptMap/AtPrenudgeCodeUnitMap | *Version*:0.1.0 | |
| Active as of 2026-03-03 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*: |

 
Maps observation codes to their expected UCUM units for the 'Other' observation profile. 



## Resource Content

```json
{
  "resourceType" : "ConceptMap",
  "id" : "AtPrenudgeCodeUnitMap",
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/ConceptMap/AtPrenudgeCodeUnitMap",
  "version" : "0.1.0",
  "title" : "AT PreNUDGE Code-to-Unit Mapping",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-03-03T16:09:57+00:00",
  "publisher" : "The PreNUDGE Consortium",
  "contact" : [{
    "name" : "The PreNUDGE Consortium",
    "telecom" : [{
      "system" : "url",
      "value" : "https://prenudge.at"
    }]
  },
  {
    "name" : "The PreNUDGE Consortium",
    "telecom" : [{
      "system" : "url",
      "value" : "https://prenudge.at",
      "use" : "work"
    }]
  }],
  "description" : "Maps observation codes to their expected UCUM units for the 'Other' observation profile.",
  "sourceUri" : "https://fhir.hl7.at/prenudge/appdata/r4/ValueSet/prenudge-other-observations-codes",
  "targetUri" : "https://fhir.hl7.at/prenudge/appdata/r4/ValueSet/prenudge-other-observations-units",
  "group" : [{
    "source" : "http://snomed.info/sct",
    "target" : "http://unitsofmeasure.org",
    "element" : [{
      "code" : "82832008",
      "display" : "General body state finding (finding)",
      "target" : [{
        "code" : "{finding}",
        "display" : "finding",
        "equivalence" : "equivalent",
        "comment" : "Subjective well-being rating on a numeric scale (e.g., 1-10)."
      }]
    }]
  },
  {
    "source" : "http://loinc.org",
    "target" : "http://unitsofmeasure.org",
    "element" : [{
      "code" : "66266-8",
      "display" : "Time doing this activity",
      "target" : [{
        "code" : "min",
        "display" : "minute",
        "equivalence" : "equivalent",
        "comment" : "Duration of the activity in minutes."
      }]
    },
    {
      "code" : "66270-0",
      "display" : "Activity intensity",
      "target" : [{
        "code" : "{intensity}",
        "display" : "intensity",
        "equivalence" : "equivalent",
        "comment" : "Subjective intensity rating on a numeric scale (e.g., 1-10, where 1 = very light and 10 = maximum effort)."
      }]
    }]
  }]
}

```
