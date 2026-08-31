# HL7.AT.FHIR.ELGA.EMED.R4\Beispiel Journey 03: Geplante Abgabe - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel Journey 03: Geplante Abgabe**

## Example MedicationRequest: Beispiel Journey 03: Geplante Abgabe



## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "At-Emed-Journey-03-Mr-Geplante-Abgabe",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medicationrequest-geplanteabgabe"]
  },
  "contained" : [{
    "resourceType" : "Medication",
    "id" : "ContainedMedication03",
    "meta" : {
      "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medication-medikation"]
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
    "valueMarkdown" : "1-0-1-0 Stück"
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
      "code" : "1",
      "display" : "Kassenrezept"
    }]
  }],
  "medicationReference" : {
    "reference" : "ContainedMedication03"
  },
  "subject" : {
    "reference" : "Patient/At-Emed-Example-Patient-01"
  },
  "authoredOn" : "2026-02-27T10:20:00+00:00",
  "requester" : {
    "reference" : "Practitioner/At-Emed-Example-Practitioner-01"
  },
  "basedOn" : [{
    "reference" : "MedicationRequest/At-Emed-Journey-02-Mr-Planeintrag-01",
    "display" : "Planeintrag"
  }],
  "groupIdentifier" : {
    "value" : "WYE82A2G8EEW"
  },
  "note" : [{
    "text" : "Freitext zur geplanten Abgabe (Info von Arzt an Apotheke)."
  }],
  "dosageInstruction" : [{
    "extension" : [{
      "url" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-extension-dosage-category",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhir.hl7.at/elga/emed/r4/CodeSystem/AtElgaEmedCodeSystemDosageCategory",
          "code" : "other"
        }]
      }
    }],
    "sequence" : 1,
    "patientInstruction" : "Nehmen Sie die Kapsel nach dem Essen mit ausreichend Flüssigkeit ein.",
    "timing" : {
      "repeat" : {
        "frequency" : 2,
        "period" : 1,
        "periodUnit" : "d",
        "when" : ["ACM", "ACV"]
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
      "end" : "2026-03-13"
    },
    "numberOfRepeatsAllowed" : 1,
    "quantity" : {
      "value" : 1,
      "unit" : "Packung"
    }
  }
}

```
