# HL7.AT.FHIR.ELGA.EMED.R4\Beispiel Example Medikationsplaneintrag - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel Example Medikationsplaneintrag**

## Example MedicationRequest: Beispiel Example Medikationsplaneintrag



## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "At-Emed-Example-Mr-Planeintrag",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-mr-planeintrag"]
  },
  "contained" : [{
    "resourceType" : "Medication",
    "id" : "ContainedMedication01",
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
      "start" : "2026-01-28",
      "end" : "2026-02-28"
    }
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.renderedDosageInstruction",
    "valueMarkdown" : "1 Kapsel täglich morgens"
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
    "reference" : "#ContainedMedication01"
  },
  "subject" : {
    "reference" : "Patient/At-Emed-Journey-01-Patient-01"
  },
  "authoredOn" : "2026-01-28T08:00:00+00:00",
  "requester" : {
    "reference" : "Practitioner/At-Emed-Journey-01-Practitioner-01"
  },
  "note" : [{
    "text" : "Freitext Informationen zum Medikationsplaneintrag."
  }],
  "dosageInstruction" : [{
    "text" : "1 Kapsel täglich morgens",
    "patientInstruction" : "Nehmen Sie die Kapsel jeden Morgen mit ausreichend Flüssigkeit ein.",
    "timing" : {
      "repeat" : {
        "frequency" : 1,
        "period" : 1,
        "periodUnit" : "d"
      }
    },
    "route" : {
      "coding" : [{
        "system" : "https://termgit.elga.gv.at/CodeSystem-medikationartanwendung.html",
        "code" : "100000073619",
        "display" : "zum Einnehmen"
      }]
    },
    "doseAndRate" : [{
      "doseQuantity" : {
        "value" : 5,
        "unit" : "mg",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg"
      }
    }]
  }]
}

```
