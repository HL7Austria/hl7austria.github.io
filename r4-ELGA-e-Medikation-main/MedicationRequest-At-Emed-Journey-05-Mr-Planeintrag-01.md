# HL7.AT.FHIR.ELGA.EMED.R4\Beispiel Journey 02: Medikationsplaneintrag 1 - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel Journey 02: Medikationsplaneintrag 1**

## Example MedicationRequest: Beispiel Journey 02: Medikationsplaneintrag 1



## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "At-Emed-Journey-05-Mr-Planeintrag-01",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-mr-planeintrag"]
  },
  "contained" : [{
    "resourceType" : "Medication",
    "id" : "ContainedMedication05",
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
      "start" : "2026-02-07",
      "end" : "2026-02-14"
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
    "reference" : "#ContainedMedication05"
  },
  "subject" : {
    "reference" : "Patient/At-Emed-Journey-01-Patient-01"
  },
  "authoredOn" : "2026-02-07T08:00:00+00:00",
  "requester" : {
    "reference" : "Practitioner/At-Emed-Journey-01-Practitioner-02"
  },
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
        "value" : 10,
        "unit" : "mg",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg"
      }
    }]
  }]
}

```
