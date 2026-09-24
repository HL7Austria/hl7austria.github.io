# HL7.AT.FHIR.ELGA.EMED.R4\Beispiel Journey 07-03: Geplante-Abgaben-Transaction-Bundle - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel Journey 07-03: Geplante-Abgaben-Transaction-Bundle**

## Example Bundle: Beispiel Journey 07-03: Geplante-Abgaben-Transaction-Bundle



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "At-Emed-Journey-07-03-Bundle-Geplante-Abgaben-Tx",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-bundle-geplanteabgaben-tx"]
  },
  "type" : "transaction",
  "timestamp" : "2026-03-22T16:10:00+00:00",
  "entry" : [{
    "fullUrl" : "urn:uuid:7a1fd5cc-e600-4a30-9f7d-15d653dc88ff",
    "resource" : {
      "resourceType" : "MedicationRequest",
      "id" : "At-Emed-Journey-07-03-Mr-Geplante-Abgabe-03",
      "meta" : {
        "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medicationrequest-geplanteabgabe"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div><a name=\"MedicationRequest_At-Emed-Journey-07-03-Mr-Geplante-Abgabe-03\"> </a>TODO: Some Narrative</div>"
      },
      "contained" : [{
        "resourceType" : "Medication",
        "id" : "contained-medication-journey-07-03-03",
        "meta" : {
          "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medication-standard-medikation"]
        },
        "code" : {
          "coding" : [{
            "system" : "https://termgit.elga.gv.at/CodeSystem/asp-liste",
            "code" : "4467812",
            "display" : "METAGELAN TR 500MG/ML"
          }]
        }
      }],
      "extension" : [{
        "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.effectiveDosePeriod",
        "valuePeriod" : {
          "start" : "2026-03-19"
        }
      },
      {
        "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.renderedDosageInstruction",
        "valueMarkdown" : "1-1-1-1 | 4 x täglich 40 Tropfen"
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
        "reference" : "#contained-medication-journey-07-03-03"
      },
      "subject" : {
        "reference" : "Patient/At-Emed-Example-Patient-01",
        "display" : "Anton Mustermann"
      },
      "authoredOn" : "2026-03-22T16:10:00+00:00",
      "requester" : {
        "reference" : "PractitionerRole/At-Emed-Example-PractitionerRole-01",
        "display" : "Dr. Hausärztin"
      },
      "basedOn" : [{
        "reference" : "MedicationRequest/At-Emed-Journey-07-02-Mr-Planeintrag-03",
        "display" : "Planeintrag 3"
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
        "patientInstruction" : "Nehmen Sie die Tropfen nach dem Essen ein.",
        "timing" : {
          "repeat" : {
            "frequency" : 4,
            "period" : 1,
            "periodUnit" : "d",
            "when" : ["MORN", "NOON", "EVE", "NIGHT"]
          }
        },
        "doseAndRate" : [{
          "doseQuantity" : {
            "value" : 40,
            "unit" : "Tropfen",
            "system" : "http://unitsofmeasure.org",
            "code" : "{Tropfen}"
          }
        }]
      }],
      "dispenseRequest" : {
        "validityPeriod" : {
          "end" : "2026-04-20"
        },
        "numberOfRepeatsAllowed" : 0,
        "quantity" : {
          "value" : 2,
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
