# HL7.AT.FHIR.ELGA.EMED.R4\Beispiel Journey 05-b: Änderung Dosierung des Medikationsplaneintrags - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel Journey 05-b: Änderung Dosierung des Medikationsplaneintrags**

## Example MedicationRequest: Beispiel Journey 05-b: Änderung Dosierung des Medikationsplaneintrags



## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "At-Emed-Journey-05-b-Mr-Planeintrag-01",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-mr-planeintrag"]
  },
  "contained" : [{
    "resourceType" : "Medication",
    "id" : "contained-medication-journey-05-01",
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
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.effectiveDosePeriod",
    "valuePeriod" : {
      "end" : "2026-03-17"
    }
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.renderedDosageInstruction",
    "valueMarkdown" : "1-0-0-0 Stück"
  }],
  "identifier" : [{
    "value" : "4712_202602280800000"
  }],
  "status" : "active",
  "intent" : "order",
  "category" : [{
    "coding" : [{
      "system" : "https://fhir.hl7.at/elga/emed/r4/CodeSystem/MedicationRequestCategoryCS",
      "code" : "1"
    }]
  }],
  "reportedBoolean" : false,
  "medicationReference" : {
    "reference" : "#contained-medication-journey-05-01"
  },
  "subject" : {
    "reference" : "Patient/At-Emed-Example-Patient-01"
  },
  "authoredOn" : "2026-03-10T13:20:00+00:00",
  "requester" : {
    "reference" : "Practitioner/At-Emed-Example-Practitioner-01"
  },
  "dosageInstruction" : [{
    "timing" : {
      "repeat" : {
        "frequency" : 1,
        "period" : 1,
        "periodUnit" : "d",
        "when" : ["ACM"]
      }
    },
    "doseAndRate" : [{
      "doseQuantity" : {
        "unit" : "Stück",
        "system" : "https://termgit.elga.gv.at/ValueSet-elga-medikationmengenart",
        "code" : "{Stueck}"
      }
    }]
  }]
}

```
