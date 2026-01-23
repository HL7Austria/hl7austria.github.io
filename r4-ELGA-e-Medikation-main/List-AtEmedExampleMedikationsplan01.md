# HL7.AT.FHIR.ELGA.EMED.R4\Example Medikationsplan 1 - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Example Medikationsplan 1**

## Example List: Example Medikationsplan 1

Profile: [ELGA e-Medikation Medikationsplan](StructureDefinition-at-emed-list-medikationsplan.md)

| | |
| :--- | :--- |
| Mode: Working List | Status: Current |
|  | |

* **Items**: [MedicationRequest: identifier = 477; status = active; intent = order; category = Medikationsplaneintrag; medication[x] = EBETREXAT TBL 10MG; authoredOn = 2024-10-03; reasonCode = Hypertonie; note = Freitext Informationen zum Medikationsplaneintrag.](MedicationRequest-AtEmedExamplePlaneintrag01.md)
  * Flag: Unchanged



## Resource Content

```json
{
  "resourceType" : "List",
  "id" : "AtEmedExampleMedikationsplan01",
  "meta" : {
    "profile" : [
      "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-list-medikationsplan"
    ]
  },
  "status" : "current",
  "mode" : "working",
  "entry" : [
    {
      "flag" : {
        "coding" : [
          {
            "code" : "01",
            "display" : "Unchanged"
          }
        ]
      },
      "item" : {
        "reference" : "MedicationRequest/AtEmedExamplePlaneintrag01"
      }
    }
  ]
}

```
