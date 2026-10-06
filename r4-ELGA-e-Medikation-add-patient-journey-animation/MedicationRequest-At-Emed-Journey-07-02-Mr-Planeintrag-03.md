# HL7.AT.FHIR.ELGA.EMED.R4\Beispiel Journey 07-02: Planeintrag 3 - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel Journey 07-02: Planeintrag 3**

## Example MedicationRequest: Beispiel Journey 07-02: Planeintrag 3



## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "At-Emed-Journey-07-02-Mr-Planeintrag-03",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medicationrequest-planeintrag"]
  },
  "contained" : [{
    "resourceType" : "Medication",
    "id" : "contained-medication-journey-07-02-02",
    "meta" : {
      "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medication-standard-medikation"]
    },
    "code" : {
      "coding" : [{
        "system" : "https://termgit.elga.gv.at/CodeSystem/asp-liste",
        "code" : "4467812",
        "display" : "METAGELAN TR 500MG/ML"
      }]
    }
  }],
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.effectiveDosePeriod",
    "valuePeriod" : {
      "start" : "2026-03-19"
    }
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.renderedDosageInstruction",
    "valueMarkdown" : "1-1-1-1 | 4 x täglich 40 Tropfen"
  }],
  "status" : "active",
  "intent" : "order",
  "category" : [{
    "coding" : [{
      "system" : "https://fhir.hl7.at/elga/emed/r4/CodeSystem/MedicationRequestCategoryCS",
      "code" : "1",
      "display" : "Planeintrag"
    }]
  }],
  "reportedBoolean" : false,
  "medicationReference" : {
    "reference" : "#contained-medication-journey-07-02-02"
  },
  "subject" : {
    "reference" : "Patient/At-Emed-Example-Patient-01",
    "display" : "Anton Mustermann"
  },
  "authoredOn" : "2026-03-22T16:10:00+00:00",
  "requester" : {
    "reference" : "PractitionerRole/At-Emed-Example-PractitionerRole-04",
    "display" : "Dr. Urlaubsvertretung"
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
    "patientInstruction" : "Nehmen Sie die Tropfen nach dem Essen ein.",
    "timing" : {
      "repeat" : {
        "frequency" : 4,
        "period" : 1,
        "periodUnit" : "d",
        "when" : ["MORN", "NOON", "EVE", "NIGHT"]
      }
    },
    "doseAndRate" : [{
      "doseQuantity" : {
        "value" : 40,
        "unit" : "Tropfen",
        "system" : "http://unitsofmeasure.org",
        "code" : "{Tropfen}"
      }
    }]
  }]
}

```
