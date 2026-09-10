# HL7.AT.FHIR.ELGA.EMED.R4\Beispiel Journey 02: Medikationsplaneintrag 2 - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel Journey 02: Medikationsplaneintrag 2**

## Example MedicationRequest: Beispiel Journey 02: Medikationsplaneintrag 2



## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "At-Emed-Journey-02-Mr-Planeintrag-02",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medicationrequest-planeintrag"]
  },
  "contained" : [{
    "resourceType" : "Medication",
    "id" : "contained-medication-journey-02-magistral",
    "meta" : {
      "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medication-medikation"]
    },
    "form" : {
      "coding" : [{
        "system" : "https://termgit.elga.gv.at/CodeSystem/medikationdarreichungsform",
        "code" : "100000073713",
        "display" : "Salbe"
      }]
    },
    "ingredient" : [{
      "itemCodeableConcept" : {
        "coding" : [{
          "system" : "https://termgit.elga.gv.at/CodeSystem/atc-deutsch-wido",
          "code" : "A11HA30",
          "display" : "Dexpanthenol"
        }]
      },
      "strength" : {
        "numerator" : {
          "value" : 5,
          "unit" : "g",
          "system" : "http://unitsofmeasure.org",
          "code" : "g"
        },
        "denominator" : {
          "value" : 100,
          "unit" : "g",
          "system" : "http://unitsofmeasure.org",
          "code" : "g"
        }
      }
    },
    {
      "itemCodeableConcept" : {
        "text" : "Salbengrundlage"
      },
      "isActive" : false,
      "strength" : {
        "numerator" : {
          "value" : 95,
          "unit" : "g"
        },
        "denominator" : {
          "value" : 100,
          "unit" : "g"
        }
      }
    }]
  }],
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.effectiveDosePeriod",
    "valuePeriod" : {
      "start" : "2026-02-27",
      "end" : "2026-03-20"
    }
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.renderedDosageInstruction",
    "valueMarkdown" : "1-0-1-0 täglich | 2 × täglich für 3 Wochen"
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
    "reference" : "#contained-medication-journey-02-magistral"
  },
  "subject" : {
    "reference" : "Patient/At-Emed-Example-Patient-01"
  },
  "authoredOn" : "2026-02-27T08:10:00+00:00",
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
        "boundsDuration" : {
          "value" : 3,
          "unit" : "wk"
        },
        "frequency" : 2,
        "period" : 1,
        "periodUnit" : "d",
        "when" : ["MORN", "EVE"]
      }
    },
    "route" : {
      "coding" : [{
        "system" : "https://termgit.elga.gv.at/CodeSystem-medikationartanwendung.html",
        "code" : "100000073566",
        "display" : "Anwendung auf der Haut"
      }]
    }
  }]
}

```
