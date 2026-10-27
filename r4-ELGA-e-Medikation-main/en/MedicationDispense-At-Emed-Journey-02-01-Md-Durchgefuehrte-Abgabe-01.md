# Beispiel Journey 02-01: Durchgeführte Abgabe 1 - ELGA e-Medikation (R4) DRAFT v0.1.0

## Example MedicationDispense: Beispiel Journey 02-01: Durchgeführte Abgabe 1



## Resource Content

```json
{
  "resourceType" : "MedicationDispense",
  "id" : "At-Emed-Journey-02-01-Md-Durchgefuehrte-Abgabe-01",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medicationdispense-durchgefuehrteabgabe"]
  },
  "contained" : [{
    "resourceType" : "Medication",
    "id" : "at-emed-journey-medication-ramipril",
    "meta" : {
      "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medication-standard-medikation"]
    },
    "code" : {
      "coding" : [{
        "system" : "https://termgit.elga.gv.at/CodeSystem/asp-liste",
        "code" : "2450836",
        "display" : "RAMIPRIL HEX TBL 5MG"
      }]
    },
    "ingredient" : [{
      "itemCodeableConcept" : {
        "coding" : [{
          "system" : "https://termgit.elga.gv.at/CodeSystem/atc-deutsch-wido",
          "code" : "C09AA05",
          "display" : "Ramipril"
        },
        {
          "system" : "https://termgit.elga.gv.at/CodeSystem/medikation-ages-wirkstoffe",
          "code" : "100000092240"
        }]
      },
      "isActive" : true,
      "strength" : {
        "numerator" : {
          "value" : 5,
          "unit" : "mg",
          "system" : "http://unitsofmeasure.org",
          "code" : "mg"
        },
        "denominator" : {
          "value" : 1,
          "unit" : "Stück",
          "system" : "http://unitsofmeasure.org",
          "code" : "{Stueck}"
        }
      }
    }]
  }],
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationDispense.renderedDosageInstruction",
    "valueMarkdown" : "1-0-0-1 | Täglich: 1-0-0-0"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationDispense.recorded",
    "valueDateTime" : "2026-02-28T11:00:00+00:00"
  },
  {
    "url" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-extension-group-identifier",
    "valueIdentifier" : {
      "value" : "WYE82A2G8EEW"
    }
  }],
  "status" : "completed",
  "medicationReference" : {
    "reference" : "#at-emed-journey-medication-ramipril"
  },
  "subject" : {
    "type" : "Patient",
    "identifier" : {
      "system" : "urn:oid:1.2.40.0.10.2.1.1.149",
      "value" : "GH:oeLdSEb0l+8kSdJWjOYyYmnYki0="
    }
  },
  "performer" : [{
    "function" : {
      "coding" : [{
        "system" : "https://fhir.hl7.at/elga/emed/r4/CodeSystem/AtElgaEmedValueSetMedicationDispensePerformerFunctionCS",
        "code" : "dispenseGDA"
      }]
    },
    "actor" : {
      "reference" : "Practitioner/At-Emed-Example-Practitioner-02"
    }
  }],
  "authorizingPrescription" : [{
    "reference" : "MedicationRequest/d9d43746-69ab-4ed8-9200-3a939f7224de",
    "display" : "GeplanteAbgabe 1"
  },
  {
    "reference" : "MedicationRequest/6bacfe23-d469-4945-bf3c-90c7e647aa52",
    "display" : "Planeintrag 1"
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
  "whenHandedOver" : "2026-02-28T11:00:00+00:00",
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
        "value" : 1,
        "unit" : "Stück",
        "system" : "http://unitsofmeasure.org",
        "code" : "{Stueck}"
      }
    }]
  }]
}

```
