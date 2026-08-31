# HL7.AT.FHIR.ELGA.EMED.R4\Beispiel Medikationsplaneintrag mit Dosierung im Tageszeitenschema 2 - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel Medikationsplaneintrag mit Dosierung im Tageszeitenschema 2**

## Example MedicationRequest: Beispiel Medikationsplaneintrag mit Dosierung im Tageszeitenschema 2



## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "AtEmedExampleDosageStandardAdministration2",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medicationrequest-planeintrag"]
  },
  "contained" : [{
    "resourceType" : "Medication",
    "id" : "AtEmedExampleMedicationIbuprofen200",
    "meta" : {
      "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medication-medikation"]
    },
    "code" : {
      "coding" : [{
        "system" : "https://termgit.elga.gv.at/CodeSystem/asp-liste",
        "code" : "3756804"
      }]
    }
  }],
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.effectiveDosePeriod",
    "valuePeriod" : {
      "start" : "2026-02-27",
      "end" : "2026-03-06"
    }
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.renderedDosageInstruction",
    "valueMarkdown" : "2-0-2-1 täglich | Täglich 2 Stück morgens, 2 Stück abends und 1 Stück nachts"
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
    "reference" : "#AtEmedExampleMedicationIbuprofen200"
  },
  "subject" : {
    "reference" : "Patient/At-Emed-Example-Patient-01"
  },
  "authoredOn" : "2026-02-27T10:20:00+00:00",
  "requester" : {
    "reference" : "Practitioner/At-Emed-Example-Practitioner-01"
  },
  "courseOfTherapyType" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/medicationrequest-course-of-therapy",
      "code" : "acute"
    }]
  },
  "dosageInstruction" : [{
    "extension" : [{
      "url" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-extension-dosage-category",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhir.hl7.at/elga/emed/r4/CodeSystem/AtElgaEmedCodeSystemDosageCategory",
          "code" : "standard"
        }]
      }
    }],
    "sequence" : 1,
    "timing" : {
      "repeat" : {
        "frequency" : 2,
        "period" : 1,
        "periodUnit" : "d",
        "when" : ["MORN", "EVE"]
      }
    },
    "doseAndRate" : [{
      "doseQuantity" : {
        "value" : 2,
        "unit" : "Stück",
        "system" : "http://unitsofmeasure.org",
        "code" : "Stueck"
      }
    }]
  },
  {
    "extension" : [{
      "url" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-extension-dosage-category",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhir.hl7.at/elga/emed/r4/CodeSystem/AtElgaEmedCodeSystemDosageCategory",
          "code" : "standard"
        }]
      }
    }],
    "sequence" : 1,
    "timing" : {
      "repeat" : {
        "frequency" : 1,
        "period" : 1,
        "periodUnit" : "d",
        "when" : ["NIGHT"]
      }
    },
    "doseAndRate" : [{
      "doseQuantity" : {
        "value" : 1,
        "unit" : "Stück",
        "system" : "http://unitsofmeasure.org",
        "code" : "Stueck"
      }
    }]
  }]
}

```
