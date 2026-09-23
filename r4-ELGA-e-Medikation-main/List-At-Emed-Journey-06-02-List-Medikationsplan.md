# HL7.AT.FHIR.ELGA.EMED.R4\Beispiel Journey 06-02: Medikationsplan - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel Journey 06-02: Medikationsplan**

## Example List: Beispiel Journey 06-02: Medikationsplan

Profile: [AT ELGA e-Medikation List Medikationsplan](StructureDefinition-at-elga-emed-list-medikationsplan.md)

| | | | |
| :--- | :--- | :--- | :--- |
| Date: 2026-03-19 12:10:00+0000 | Mode: Working List | Status: Current | Code: Medikationsplan |
| Subject:[Anton Mustermann Male, DoB: 1900-01-01 ( Social Security number: 1234010100)](Patient-At-Emed-Example-Patient-01.md)Source: | | | |

* **Items**: [MedicationRequest: extension = 2026-02-27 --> (ongoing),1-0-1-0 | Täglich: 1-0-1-0; status = on-hold; statusReason = Patient scheduled for surgery.; intent = order; category = Planeintrag; reported[x] = false; medication[x] = ->Medication RAMIPRIL HEX TBL 5MG; authoredOn = 2026-03-19 12:10:00+0000; courseOfTherapyType = Continuous long term therapy](MedicationRequest-At-Emed-Journey-06-02-Mr-Planeintrag-01.md)
  * Flag: Planeintrag beibehalten
* **Items**: [MedicationRequest: extension = 2026-02-27 --> 2026-03-20,1-0-1-0 | Täglich 1-0-1-0 für 3 Wochen; status = active; intent = order; category = Planeintrag; reported[x] = false; medication[x] = ->Medication: form = Salbe; authoredOn = 2026-02-27 08:10:00+0000; courseOfTherapyType = Short course (acute) therapy](MedicationRequest-At-Emed-Journey-01-02-Mr-Planeintrag-02.md)
  * Flag: Planeintrag beibehalten
* **Items**: [MedicationRequest: extension = 2026-02-27 --> 2026-03-20,1-0-1-0 | Täglich 1-0-1-0 für 3 Wochen; status = active; intent = order; category = Planeintrag; reported[x] = false; medication[x] = ->Medication: form = Salbe; authoredOn = 2026-03-19 12:10:00+0000; courseOfTherapyType = Short course (acute) therapy](MedicationRequest-At-Emed-Journey-06-02-Mr-Planeintrag-03.md)
  * Flag: Neuer Planeintrag



## Resource Content

```json
{
  "resourceType" : "List",
  "id" : "At-Emed-Journey-06-02-List-Medikationsplan",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-list-medikationsplan"]
  },
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
  "date" : "2026-03-19T12:10:00+00:00",
  "source" : {
    "reference" : "PractitionerRole/At-Emed-Example-PractitionerRole-01"
  },
  "entry" : [{
    "flag" : {
      "coding" : [{
        "system" : "https://fhir.hl7.at/elga/emed/r4/CodeSystem/ElgaListEntryFlagCS",
        "code" : "unchanged",
        "display" : "Planeintrag beibehalten"
      }]
    },
    "item" : {
      "reference" : "MedicationRequest/At-Emed-Journey-06-02-Mr-Planeintrag-01"
    }
  },
  {
    "flag" : {
      "coding" : [{
        "system" : "https://fhir.hl7.at/elga/emed/r4/CodeSystem/ElgaListEntryFlagCS",
        "code" : "unchanged",
        "display" : "Planeintrag beibehalten"
      }]
    },
    "item" : {
      "reference" : "MedicationRequest/At-Emed-Journey-01-02-Mr-Planeintrag-02"
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
      "reference" : "MedicationRequest/At-Emed-Journey-06-02-Mr-Planeintrag-03"
    }
  }]
}

```
