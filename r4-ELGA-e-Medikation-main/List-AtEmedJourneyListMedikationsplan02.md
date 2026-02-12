# HL7.AT.FHIR.ELGA.EMED.R4\Beispiel Journey 02: Medikationsplan - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel Journey 02: Medikationsplan**

## Example List: Beispiel Journey 02: Medikationsplan

Profile: [ELGA e-Med Medikationsplan](StructureDefinition-at-emed-list-medikationsplan.md)

| | | | |
| :--- | :--- | :--- | :--- |
| Date: 2026-01-28 08:00:00+0000 | Mode: Working List | Status: Current | Code: Medikationsplan |
| Subject:[Max Mustermann Male, DoB: 1900-01-01 ( Social Security number: 1234010100)](Patient-AtEmedExamplePatient01.md)Source: Order: Sorted by User | | | |

* **Items**: [MedicationRequest: extension = 2026-01-28 --> 2026-02-28,1 Kapsel täglich morgens; identifier = 4711; status = active; intent = order; category = Medikationsplaneintrag; medication[x] = ->InlineAtEmedJourneyMedicationMagistral01; authoredOn = 2026-01-28 08:00:00+0000; note = Freitext Informationen zum Medikationsplaneintrag.](MedicationRequest-AtEmedJourneyMrPlaneintrag0201.md)
  * Date: 2026-01-28 08:00:00+0000
  * Flag: Prescribed
* **Items**: [MedicationRequest: extension = 2026-01-28 --> 2026-02-28,1 täglich auftragen; identifier = 4712; status = active; intent = order; category = Medikationsplaneintrag; medication[x] = ->InlineAtEmedJourneyMedicationMagistral02; authoredOn = 2026-01-28 08:00:00+0000; note = Freitext Informationen zum Medikationsplaneintrag.](MedicationRequest-AtEmedJourneyMrPlaneintrag0202.md)
  * Date: 2026-01-28 08:00:00+0000
  * Flag: Prescribed



## Resource Content

```json
{
  "resourceType" : "List",
  "id" : "AtEmedJourneyListMedikationsplan02",
  "meta" : {
    "profile" : [
      "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-list-medikationsplan"
    ]
  },
  "status" : "current",
  "mode" : "working",
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "736378000",
        "display" : "Medikationsplan"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/AtEmedExamplePatient01"
  },
  "date" : "2026-01-28T08:00:00+00:00",
  "source" : {
    "reference" : "Practitioner/AtEmedExamplePractitioner01"
  },
  "orderedBy" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/list-order",
        "code" : "user"
      }
    ]
  },
  "entry" : [
    {
      "flag" : {
        "coding" : [
          {
            "system" : "urn:oid:1.2.36.1.2001.1001.101.104.16592",
            "code" : "04",
            "display" : "Prescribed"
          }
        ]
      },
      "date" : "2026-01-28T08:00:00+00:00",
      "item" : {
        "reference" : "MedicationRequest/AtEmedJourneyMrPlaneintrag0201"
      }
    },
    {
      "flag" : {
        "coding" : [
          {
            "system" : "urn:oid:1.2.36.1.2001.1001.101.104.16592",
            "code" : "04",
            "display" : "Prescribed"
          }
        ]
      },
      "date" : "2026-01-28T08:00:00+00:00",
      "item" : {
        "reference" : "MedicationRequest/AtEmedJourneyMrPlaneintrag0202"
      }
    }
  ]
}

```
