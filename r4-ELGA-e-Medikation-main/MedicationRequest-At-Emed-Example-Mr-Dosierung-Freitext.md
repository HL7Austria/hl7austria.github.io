# HL7.AT.FHIR.ELGA.EMED.R4\Medikationsplaneintrag mit Freitext-Dosierung - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medikationsplaneintrag mit Freitext-Dosierung**

## Example MedicationRequest: Medikationsplaneintrag mit Freitext-Dosierung



## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "At-Emed-Example-Mr-Dosierung-Freitext",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-mr-planeintrag"]
  },
  "contained" : [{
    "resourceType" : "Medication",
    "id" : "contained-medication-freitext-01",
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
    "valueMarkdown" : "2 Stück morgens zum Frühstück"
  }],
  "identifier" : [{
    "value" : "4719_202602280800000"
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
    "reference" : "#contained-medication-freitext-01"
  },
  "subject" : {
    "reference" : "Patient/At-Emed-Example-Patient-01"
  },
  "authoredOn" : "2026-02-27T10:20:00+00:00",
  "requester" : {
    "reference" : "Practitioner/At-Emed-Example-Practitioner-01"
  },
  "dosageInstruction" : [{
    "text" : "2 Stück morgens zum Frühstück"
  }]
}

```
