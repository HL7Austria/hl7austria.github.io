# Beispiel Journey 03-01: Durchgeführte Abgabe 1 - ELGA e-Medikation (R4) DRAFT v0.1.0

## Example MedicationDispense: Beispiel Journey 03-01: Durchgeführte Abgabe 1



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
    "id" : "contained-medication-magistral-01",
    "meta" : {
      "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medication-magistrale-zubereitung"]
    },
    "extension" : [{
      "url" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-extension-rezeptur",
      "valueMarkdown" : "TODO: Beispielrezeptur"
    }],
    "code" : {
      "text" : "Dexpanthenol-5-%-Salbe"
    },
    "form" : {
      "coding" : [{
        "system" : "https://termgit.elga.gv.at/CodeSystem/medikationdarreichungsform",
        "code" : "100000073713",
        "display" : "Salbe"
      }]
    },
    "amount" : {
      "numerator" : {
        "value" : 100,
        "unit" : "g",
        "system" : "http://unitsofmeasure.org",
        "code" : "g"
      },
      "denominator" : {
        "value" : 1
      }
    },
    "ingredient" : [{
      "itemCodeableConcept" : {
        "coding" : [{
          "system" : "https://termgit.elga.gv.at/CodeSystem/atc-deutsch-wido",
          "code" : "A11HA30",
          "display" : "Dexpanthenol"
        }]
      },
      "isActive" : true,
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
    "reference" : "#contained-medication-magistral-01"
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
      "reference" : "Practitioner/At-Emed-Example-Practitioner-02",
      "display" : "Amadeus Apotheke"
    }
  }],
  "authorizingPrescription" : [{
    "reference" : "MedicationRequest/f564f377-ef44-4943-9bb2-fccc8a5db24a",
    "display" : "Geplante Abgabe 2"
  },
  {
    "reference" : "MedicationRequest/55e4be12-0d10-454c-a85f-cfb5f849e391",
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
    "patientInstruction" : "Dünn auftragen.",
    "timing" : {
      "repeat" : {
        "boundsDuration" : {
          "value" : 3,
          "unit" : "wk",
          "system" : "http://unitsofmeasure.org",
          "code" : "wk"
        },
        "frequency" : 2,
        "period" : 1,
        "periodUnit" : "d",
        "when" : ["MORN", "EVE"]
      }
    },
    "route" : {
      "coding" : [{
        "system" : "https://termgit.elga.gv.at/CodeSystem/medikationartanwendung",
        "code" : "100000073566",
        "display" : "Anwendung auf der Haut"
      }]
    }
  }]
}

```
