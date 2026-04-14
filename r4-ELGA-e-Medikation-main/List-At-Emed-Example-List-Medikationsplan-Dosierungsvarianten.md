# HL7.AT.FHIR.ELGA.EMED.R4\Beispiel Medikationsplan mit Dosierungsvarianten - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel Medikationsplan mit Dosierungsvarianten**

## Example List: Beispiel Medikationsplan mit Dosierungsvarianten

Profile: [ELGA e-Med Medikationsplan](StructureDefinition-at-emed-list-medikationsplan.md)

| | | | |
| :--- | :--- | :--- | :--- |
| Date: 2026-02-27 10:20:00+0000 | Mode: Working List | Status: Current | Code: Medikationsplan |
| Subject:[Max Mustermann Male, DoB: 1900-01-01 ( Social Security number: 1234010100)](Patient-At-Emed-Example-Patient-01.md)Source: Order: Sorted by User | | | |

* **Items**: [MedicationRequest: extension = 2 Stück morgens zum Frühstück; identifier = 4719_202602280800000; status = active; intent = order; category = Medikationsplaneintrag; reported[x] = false; medication[x] = ->Medication EBETREXAT TBL 10MG; authoredOn = 2026-02-27 10:20:00+0000](MedicationRequest-At-Emed-Example-Mr-Dosierung-Freitext.md)
  * Date: 2026-02-27 10:20:00+0000
  * Flag: Neuer Planeintrag
* **Items**: [MedicationRequest: extension = 1-0-1-0 Stück; identifier = 4712_202602280800000; status = active; intent = order; category = Medikationsplaneintrag; reported[x] = false; medication[x] = ->Medication EBETREXAT TBL 10MG; authoredOn = 2026-02-27 10:20:00+0000](MedicationRequest-At-Emed-Example-Mr-Dosierung-1010.md)
  * Date: 2026-02-27 10:20:00+0000
  * Flag: Neuer Planeintrag
* **Items**: [MedicationRequest: extension = täglich: 08:00 Uhr — je 1 Stück; identifier = 4712_202602280800000; status = active; intent = order; category = Medikationsplaneintrag; reported[x] = false; medication[x] = ->Medication EBETREXAT TBL 10MG; authoredOn = 2026-02-27 10:20:00+0000](MedicationRequest-At-Emed-Example-Mr-Dosierung-Zeit-1tg.md)
  * Date: 2026-02-27 10:20:00+0000
  * Flag: Neuer Planeintrag
* **Items**: [MedicationRequest: extension = dienstags — 2 Stück; donnerstags — 2 Stück; identifier = 4712_202602280800000; status = active; intent = order; category = Medikationsplaneintrag; reported[x] = false; medication[x] = ->Medication EBETREXAT TBL 10MG; authoredOn = 2026-02-27 10:20:00+0000](MedicationRequest-At-Emed-Example-Mr-Dosierung-Wochentag.md)
  * Date: 2026-02-27 10:20:00+0000
  * Flag: Neuer Planeintrag
* **Items**: [MedicationRequest: extension = alle 8 Tage: je 1 Stück; identifier = 4712_202602280800000; status = active; intent = order; category = Medikationsplaneintrag; reported[x] = false; medication[x] = ->Medication EBETREXAT TBL 10MG; authoredOn = 2026-02-27 10:20:00+0000](MedicationRequest-At-Emed-Example-Mr-Dosierung-Intervalle-Wh.md)
  * Date: 2026-02-27 10:20:00+0000
  * Flag: Neuer Planeintrag
* **Items**: [MedicationRequest: extension = alle 2 Tage: 08:00 Uhr — je 1 Stück; 18:00 Uhr — je 2 Stück; identifier = 4712_202602280800000; status = active; intent = order; category = Medikationsplaneintrag; reported[x] = false; medication[x] = ->Medication EBETREXAT TBL 10MG; authoredOn = 2026-02-27 10:20:00+0000](MedicationRequest-At-Emed-Example-Mr-Dosierung-Zeitintervalle-Kombi.md)
  * Date: 2026-02-27 10:20:00+0000
  * Flag: Neuer Planeintrag
* **Items**: [MedicationRequest: extension = montags 1-0-1-0 Stück; freitags 1-0-1-0 Stück; identifier = 4712_202602280800000; status = active; intent = order; category = Medikationsplaneintrag; reported[x] = false; medication[x] = ->Medication EBETREXAT TBL 10MG; authoredOn = 2026-02-27 10:20:00+0000](MedicationRequest-At-Emed-Example-Mr-Dosierung-Wochentag-Kombi.md)
  * Date: 2026-02-27 10:20:00+0000
  * Flag: Neuer Planeintrag



## Resource Content

```json
{
  "resourceType" : "List",
  "id" : "At-Emed-Example-List-Medikationsplan-Dosierungsvarianten",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-list-medikationsplan"]
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
  "orderedBy" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/list-order",
      "code" : "user"
    }]
  },
  "entry" : [{
    "flag" : {
      "coding" : [{
        "system" : "https://fhir.hl7.at/elga/emed/r4/CodeSystem/ElgaListEntryFlagCS",
        "code" : "new",
        "display" : "Neuer Planeintrag"
      }]
    },
    "date" : "2026-02-27T10:20:00+00:00",
    "item" : {
      "reference" : "MedicationRequest/At-Emed-Example-Mr-Dosierung-Freitext"
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
    "date" : "2026-02-27T10:20:00+00:00",
    "item" : {
      "reference" : "MedicationRequest/At-Emed-Example-Mr-Dosierung-1010"
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
    "date" : "2026-02-27T10:20:00+00:00",
    "item" : {
      "reference" : "MedicationRequest/At-Emed-Example-Mr-Dosierung-Zeit-1tg"
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
    "date" : "2026-02-27T10:20:00+00:00",
    "item" : {
      "reference" : "MedicationRequest/At-Emed-Example-Mr-Dosierung-Wochentag"
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
    "date" : "2026-02-27T10:20:00+00:00",
    "item" : {
      "reference" : "MedicationRequest/At-Emed-Example-Mr-Dosierung-Intervalle-Wh"
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
    "date" : "2026-02-27T10:20:00+00:00",
    "item" : {
      "reference" : "MedicationRequest/At-Emed-Example-Mr-Dosierung-Zeitintervalle-Kombi"
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
    "date" : "2026-02-27T10:20:00+00:00",
    "item" : {
      "reference" : "MedicationRequest/At-Emed-Example-Mr-Dosierung-Wochentag-Kombi"
    }
  }]
}

```
