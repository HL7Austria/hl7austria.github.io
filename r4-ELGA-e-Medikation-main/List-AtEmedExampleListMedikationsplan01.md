# HL7.AT.FHIR.ELGA.EMED.R4\AtEmedListMedikationsplan-Beispiel - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AtEmedListMedikationsplan-Beispiel**

## Example List: AtEmedListMedikationsplan-Beispiel

Profile: [ELGA e-Medikation Medikationsplan](StructureDefinition-at-emed-list-medikationsplan.md)

| | | | |
| :--- | :--- | :--- | :--- |
| Date: 2013-11-20 23:10:23+1100 | Mode: Change List | Status: Current | Code: Review of medication |
| Source: | | | |

* **Items**: hydroxocobalamin
  * Flag: Prescribed
  * Deleted: 
* **Items**: Morphine Sulfate
  * Flag: Cancelled
  * Deleted: true



## Resource Content

```json
{
  "resourceType" : "List",
  "id" : "AtEmedExampleListMedikationsplan01",
  "meta" : {
    "profile" : [
      "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-list-medikationsplan"
    ]
  },
  "status" : "current",
  "mode" : "changes",
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "182836005",
        "display" : "Review of medication"
      }
    ],
    "text" : "Medication Review"
  },
  "date" : "2013-11-20T23:10:23+11:00",
  "source" : {
    "reference" : "Patient/example"
  },
  "entry" : [
    {
      "flag" : {
        "coding" : [
          {
            "system" : "http://nehta.gov.au/codes/medications/changetype",
            "code" : "01",
            "display" : "Prescribed"
          }
        ]
      },
      "item" : {
        "display" : "hydroxocobalamin"
      }
    },
    {
      "flag" : {
        "coding" : [
          {
            "system" : "http://nehta.gov.au/codes/medications/changetype",
            "code" : "02",
            "display" : "Cancelled"
          }
        ]
      },
      "deleted" : true,
      "item" : {
        "display" : "Morphine Sulfate"
      }
    }
  ]
}

```
