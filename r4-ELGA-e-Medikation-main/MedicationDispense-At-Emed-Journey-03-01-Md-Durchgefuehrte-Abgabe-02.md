# HL7.AT.FHIR.ELGA.EMED.R4\Beispiel Journey 05: Durchgeführte Abgabe 1 - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel Journey 05: Durchgeführte Abgabe 1**

## Example MedicationDispense: Beispiel Journey 05: Durchgeführte Abgabe 1



## Resource Content

```json
{
  "resourceType" : "MedicationDispense",
  "id" : "At-Emed-Journey-03-01-Md-Durchgefuehrte-Abgabe-02",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medicationdispense-durchgefuehrteabgabe"]
  },
  "contained" : [{
    "resourceType" : "Medication",
    "id" : "contained-medication-journey-03-01-02-magistral",
    "meta" : {
      "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medication-magistrale-zubereitung"]
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
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationDispense.renderedDosageInstruction",
    "valueMarkdown" : "1-0-1-0 | Täglich 1-0-1-0"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationDispense.recorded",
    "valueDateTime" : "2026-03-01T15:15:00+00:00"
  },
  {
    "url" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-extension-group-identifier",
    "valueIdentifier" : {
      "value" : "WYE82A2G8EEW"
    }
  }],
  "status" : "completed",
  "medicationReference" : {
    "reference" : "#contained-medication-journey-03-01-02-magistral"
  },
  "subject" : {
    "reference" : "Patient/At-Emed-Example-Patient-01",
    "display" : "Anton Mustermann"
  },
  "performer" : [{
    "actor" : {
      "reference" : "Organization/At-Emed-Example-Organization-02",
      "display" : "Apotheke"
    }
  }],
  "authorizingPrescription" : [{
    "reference" : "MedicationRequest/At-Emed-Journey-01-03-Mr-Geplante-Abgabe-02",
    "display" : "Geplante Abgabe 2"
  },
  {
    "reference" : "MedicationRequest/At-Emed-Journey-01-02-Mr-Planeintrag-02",
    "display" : "Planeintrag 2"
  }],
  "type" : {
    "coding" : [{
      "code" : "FFC"
    }]
  },
  "quantity" : {
    "value" : 1,
    "system" : "http://unitsofmeasure.org",
    "code" : "1"
  },
  "whenHandedOver" : "2026-03-01T15:15:00+00:00",
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
  }]
}

```
