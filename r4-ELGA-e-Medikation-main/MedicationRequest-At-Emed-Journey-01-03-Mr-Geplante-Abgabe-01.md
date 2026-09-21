# HL7.AT.FHIR.ELGA.EMED.R4\Beispiel Journey 01-03: Geplante Abgabe 1 - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel Journey 01-03: Geplante Abgabe 1**

## Example MedicationRequest: Beispiel Journey 01-03: Geplante Abgabe 1



## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "At-Emed-Journey-01-03-Mr-Geplante-Abgabe-01",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medicationrequest-geplanteabgabe"]
  },
  "contained" : [{
    "resourceType" : "Medication",
    "id" : "contained-medication-journey-01-03-01",
    "meta" : {
      "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medication-standard-medikation"]
    },
    "code" : {
      "coding" : [{
        "system" : "https://termgit.elga.gv.at/CodeSystem/asp-liste",
        "code" : "2450836",
        "display" : "RAMIPRIL HEX TBL 5MG"
      }]
    }
  }],
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.effectiveDosePeriod",
    "valuePeriod" : {
      "start" : "2026-02-27"
    }
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.renderedDosageInstruction",
    "valueMarkdown" : "1-0-0-1 | Täglich: 1-0-0-0"
  }],
  "status" : "active",
  "intent" : "order",
  "category" : [{
    "coding" : [{
      "system" : "https://fhir.hl7.at/elga/emed/r4/CodeSystem/MedicationRequestCategoryCS",
      "code" : "2",
      "display" : "Geplante Abgabe"
    }]
  },
  {
    "coding" : [{
      "system" : "https://termgit.elga.gv.at/CodeSystem/medikationrezeptart",
      "code" : "KASSEN",
      "display" : "Kassenrezept"
    }]
  }],
  "medicationReference" : {
    "reference" : "#contained-medication-journey-01-03-01"
  },
  "subject" : {
    "reference" : "Patient/At-Emed-Example-Patient-01"
  },
  "authoredOn" : "2026-02-27T08:10:00+00:00",
  "requester" : {
    "reference" : "Practitioner/At-Emed-Example-Practitioner-01"
  },
  "basedOn" : [{
    "reference" : "MedicationRequest/At-Emed-Journey-01-02-Mr-Planeintrag-01",
    "display" : "Planeintrag 1"
  }],
  "groupIdentifier" : {
    "value" : "WYE82A2G8EEW"
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
    "patientInstruction" : "Nehmen Sie die Tablette vor dem Essen mit ausreichend Flüssigkeit ein.",
    "timing" : {
      "repeat" : {
        "frequency" : 1,
        "period" : 1,
        "periodUnit" : "d",
        "when" : ["MORN"]
      }
    },
    "route" : {
      "coding" : [{
        "system" : "https://termgit.elga.gv.at/CodeSystem/medikationartanwendung",
        "code" : "100000073619",
        "display" : "zum Einnehmen"
      }]
    },
    "doseAndRate" : [{
      "doseQuantity" : {
        "unit" : "Stück",
        "system" : "http://unitsofmeasure.org",
        "code" : "{Stueck}"
      }
    }]
  }],
  "dispenseRequest" : {
    "validityPeriod" : {
      "end" : "2026-03-27"
    },
    "numberOfRepeatsAllowed" : 0,
    "quantity" : {
      "value" : 1,
      "unit" : "Packung"
    }
  }
}

```
