# HL7.AT.FHIR.ELGA.EMED.R4\Beispiel Medikationsplaneintrag mit Dosierung als Kombination von Wochentagen - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel Medikationsplaneintrag mit Dosierung als Kombination von Wochentagen**

## Example MedicationRequest: Beispiel Medikationsplaneintrag mit Dosierung als Kombination von Wochentagen



## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "At-Emed-Example-Mr-Dosierung-Wochentag-Kombi",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-mr-planeintrag"]
  },
  "contained" : [{
    "resourceType" : "Medication",
    "id" : "contained-medication-wochentag-kombi",
    "meta" : {
      "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-medication"]
    },
    "code" : {
      "coding" : [{
        "system" : "https://termgit.elga.gv.at/CodeSystem/asp-liste",
        "code" : "2443061",
        "display" : "EBETREXAT TBL 10MG"
      }]
    }
  }],
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.renderedDosageInstruction",
    "valueMarkdown" : "montags 1-0-1-0 Stück; freitags 1-0-1-0 Stück"
  }],
  "identifier" : [{
    "value" : "4712_202602280800000"
  }],
  "status" : "active",
  "intent" : "order",
  "category" : [{
    "coding" : [{
      "system" : "https://fhir.hl7.at/elga/emed/r4/CodeSystem/MedicationRequestCategoryCS",
      "code" : "1",
      "display" : "Medikationsplaneintrag"
    }]
  }],
  "reportedBoolean" : false,
  "medicationReference" : {
    "reference" : "#contained-medication-wochentag-kombi"
  },
  "subject" : {
    "reference" : "Patient/At-Emed-Example-Patient-01"
  },
  "authoredOn" : "2026-02-27T10:20:00+00:00",
  "requester" : {
    "reference" : "Practitioner/At-Emed-Example-Practitioner-01"
  },
  "dosageInstruction" : [{
    "timing" : {
      "repeat" : {
        "frequency" : 4,
        "period" : 1,
        "periodUnit" : "wk",
        "dayOfWeek" : ["mon", "fri"],
        "when" : ["MORN", "EVE"]
      }
    },
    "doseAndRate" : [{
      "doseQuantity" : {
        "unit" : "Stück",
        "system" : "http://unitsofmeasure.org",
        "code" : "{Stueck}"
      }
    }]
  }]
}

```
