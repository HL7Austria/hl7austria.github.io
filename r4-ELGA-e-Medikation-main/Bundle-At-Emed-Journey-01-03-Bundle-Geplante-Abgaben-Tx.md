# HL7.AT.FHIR.ELGA.EMED.R4\Beispiel Journey 01-03: Geplante-Abgaben-Transaction-Bundle - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel Journey 01-03: Geplante-Abgaben-Transaction-Bundle**

## Example Bundle: Beispiel Journey 01-03: Geplante-Abgaben-Transaction-Bundle



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "At-Emed-Journey-01-03-Bundle-Geplante-Abgaben-Tx",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-bundle-geplanteabgaben-tx"]
  },
  "type" : "transaction",
  "timestamp" : "2026-02-27T10:20:00+00:00",
  "entry" : [{
    "fullUrl" : "urn:uuid:e68fbdbe-a04e-408b-a98f-865af70b1741",
    "resource" : {
      "resourceType" : "MedicationRequest",
      "id" : "At-Emed-Journey-01-03-Mr-Geplante-Abgabe-01",
      "meta" : {
        "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medicationrequest-geplanteabgabe"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div><a name=\"MedicationRequest_At-Emed-Journey-01-03-Mr-Geplante-Abgabe-01\"> </a>TODO: Some Narrative</div>"
      },
      "contained" : [{
        "resourceType" : "Medication",
        "id" : "at-emed-journey-medicaiton-ramipril",
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
        "reference" : "#at-emed-journey-medicaiton-ramipril"
      },
      "subject" : {
        "reference" : "Patient/At-Emed-Example-Patient-01"
      },
      "authoredOn" : "2026-02-27T08:10:00+00:00",
      "requester" : {
        "reference" : "PractitionerRole/At-Emed-Example-PractitionerRole-01"
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
    },
    "request" : {
      "method" : "POST",
      "url" : "MedicationRequest"
    }
  },
  {
    "fullUrl" : "urn:uuid:bc10cdbb-2fa8-4176-ac50-1f2b82275010",
    "resource" : {
      "resourceType" : "MedicationRequest",
      "id" : "At-Emed-Journey-01-03-Mr-Geplante-Abgabe-02",
      "meta" : {
        "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medicationrequest-geplanteabgabe"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div><a name=\"MedicationRequest_At-Emed-Journey-01-03-Mr-Geplante-Abgabe-02\"> </a>TODO: Some Narrative</div>"
      },
      "contained" : [{
        "resourceType" : "Medication",
        "id" : "contained-medication-journey-01-03-02-magistral",
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
        "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.effectiveDosePeriod",
        "valuePeriod" : {
          "start" : "2026-02-27",
          "end" : "2026-03-20"
        }
      },
      {
        "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.renderedDosageInstruction",
        "valueMarkdown" : "1-0-1-0 | Täglich 1-0-1-0"
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
        "reference" : "#contained-medication-journey-01-03-02-magistral"
      },
      "subject" : {
        "reference" : "Patient/At-Emed-Example-Patient-01"
      },
      "authoredOn" : "2026-02-27T10:20:00+00:00",
      "requester" : {
        "reference" : "PractitionerRole/At-Emed-Example-PractitionerRole-01"
      },
      "basedOn" : [{
        "reference" : "MedicationRequest/At-Emed-Journey-01-02-Mr-Planeintrag-02",
        "display" : "Planeintrag 2"
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
    },
    "request" : {
      "method" : "POST",
      "url" : "MedicationRequest"
    }
  }]
}

```
