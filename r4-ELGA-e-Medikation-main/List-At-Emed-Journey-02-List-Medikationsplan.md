# HL7.AT.FHIR.ELGA.EMED.R4\Beispiel Journey 02: Medikationsplan - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel Journey 02: Medikationsplan**

## Example List: Beispiel Journey 02: Medikationsplan

Profile: [AT ELGA e-Medikation List Medikationsplan](StructureDefinition-at-elga-emed-list-medikationsplan.md)

| | | | |
| :--- | :--- | :--- | :--- |
| Date: 2026-02-27 10:20:00+0000 | Mode: Working List | Status: Current | Code: Medikationsplan |
| Subject:[Max Mustermann Male, DoB: 1900-01-01 ( Social Security number: 1234010100)](Patient-At-Emed-Example-Patient-01.md)Source: | | | |

* **Items**: [MedicationRequest: extension = 2026-02-27 --> (ongoing),1-0-1-0 Stück; identifier = 4712_202602280800000; status = active; intent = order; category = Medikationsplaneintrag; reported[x] = false; medication[x] = ->Medication EBETREXAT TBL 10MG; authoredOn = 2026-02-27 10:20:00+0000; courseOfTherapyType = Continuous long term therapy; note = Freitext Informationen zum Medikationsplaneintrag.](MedicationRequest-At-Emed-Journey-02-Mr-Planeintrag-01.md)
  * Flag: Neuer Planeintrag
* **Items**: [MedicationRequest: extension = 2026-02-27 --> 2026-03-16,1 täglich auftragen; identifier = 4713_202602280800000; status = active; intent = order; category = Medikationsplaneintrag; reported[x] = false; medication[x] = ->Medication: form = Salbe; authoredOn = 2026-02-27 10:20:00+0000; courseOfTherapyType = Short course (acute) therapy](MedicationRequest-At-Emed-Journey-02-Mr-Planeintrag-02.md)
  * Flag: Neuer Planeintrag



## Resource Content

```json
{
  "resourceType" : "List",
  "id" : "At-Emed-Journey-02-List-Medikationsplan",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-list-medikationsplan"]
  },
  "identifier" : [{
    "value" : "123"
  }],
  "status" : "current",
  "mode" : "working",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "736378000",
      "display" : "Medikationsplan"
    }]
  },
  "subject" : {
    "reference" : "Patient/At-Emed-Example-Patient-01"
  },
  "date" : "2026-02-27T10:20:00+00:00",
  "source" : {
    "reference" : "Practitioner/At-Emed-Example-Practitioner-01"
  },
  "entry" : [{
    "flag" : {
      "coding" : [{
        "system" : "https://fhir.hl7.at/elga/emed/r4/CodeSystem/ElgaListEntryFlagCS",
        "code" : "new",
        "display" : "Neuer Planeintrag"
      }]
    },
    "item" : {
      "reference" : "MedicationRequest/At-Emed-Journey-02-Mr-Planeintrag-01"
    }
  },
  {
    "flag" : {
      "coding" : [{
        "system" : "https://fhir.hl7.at/elga/emed/r4/CodeSystem/ElgaListEntryFlagCS",
        "code" : "new",
        "display" : "Neuer Planeintrag"
      }]
    },
    "item" : {
      "reference" : "MedicationRequest/At-Emed-Journey-02-Mr-Planeintrag-02"
    }
  }]
}

```
