# HL7.AT.FHIR.ELGA.EMED.R4\Beispiel Medikationsplaneintrag Dosierung als Kombination von Zeitintervallen - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel Medikationsplaneintrag Dosierung als Kombination von Zeitintervallen**

## Example MedicationRequest: Beispiel Medikationsplaneintrag Dosierung als Kombination von Zeitintervallen



## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "At-Emed-Example-Mr-Dosierung-Zeitintervalle-Kombi",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-mr-planeintrag"]
  },
  "contained" : [{
    "resourceType" : "Medication",
    "id" : "contained-medication-zeitintervalle-kombi",
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
    "valueMarkdown" : "alle 2 Tage: 08:00 Uhr — je 1 Stück; 18:00 Uhr — je 2 Stück"
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
    "reference" : "#contained-medication-zeitintervalle-kombi"
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
        "frequency" : 1,
        "period" : 2,
        "periodUnit" : "d",
        "timeOfDay" : ["08:00:00"]
      }
    },
    "doseAndRate" : [{
      "doseQuantity" : {
        "unit" : "Stück",
        "system" : "https://termgit.elga.gv.at/ValueSet-elga-medikationmengenart",
        "code" : "{Stueck}"
      }
    }]
  },
  {
    "timing" : {
      "repeat" : {
        "frequency" : 1,
        "period" : 2,
        "periodUnit" : "d",
        "timeOfDay" : ["18:00:00"]
      }
    }
  }]
}

```
