# HL7.AT.FHIR.ELGA.EMED.R4\ExampleMedikationsplanList - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ExampleMedikationsplanList**

## Example List: ExampleMedikationsplanList

Profile: [ELGA e-Medikation Medikationsplan](StructureDefinition-at-emed-list-medikationsplan.md)

| | |
| :--- | :--- |
| Mode: Working List | Status: Current |
| Order: user | |

* **Items**: [MedicationRequest: status = active; intent = order; category = Medikationsplaneintrag; medication[x] = EBETREXAT TBL 10MG; authoredOn = 2024-10-03](Bundle-AtEmedExampleBundleDocumentMedikationsplan01.md#MedicationRequest/med1)
  * Flag: original
* **Items**: [MedicationRequest: status = active; intent = order; category = Medikationsplaneintrag; medication[x] = AMLODIPIN 5MG; authoredOn = 2024-10-03](Bundle-AtEmedExampleBundleDocumentMedikationsplan01.md#MedicationRequest/med2)
  * Flag: original



## Resource Content

```json
{
  "resourceType" : "List",
  "id" : "ExampleMedikationsplanList",
  "meta" : {
    "profile" : [
      "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-list-medikationsplan"
    ]
  },
  "status" : "current",
  "mode" : "working",
  "orderedBy" : {
    "coding" : [
      {
        "code" : "user"
      }
    ]
  },
  "entry" : [
    {
      "flag" : {
        "coding" : [
          {
            "code" : "original"
          }
        ]
      },
      "item" : {
        "reference" : "MedicationRequest/med1"
      }
    },
    {
      "flag" : {
        "coding" : [
          {
            "code" : "original"
          }
        ]
      },
      "item" : {
        "reference" : "MedicationRequest/med2"
      }
    }
  ]
}

```
