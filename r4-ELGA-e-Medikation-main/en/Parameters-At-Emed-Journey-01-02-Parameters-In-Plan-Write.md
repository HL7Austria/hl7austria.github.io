# Beispiel Journey 01-02: $plan-write Request - ELGA e-Medikation (R4) DRAFT v0.1.0

## Example Parameters: Beispiel Journey 01-02: $plan-write Request



## Resource Content

```json
{
  "resourceType" : "Parameters",
  "id" : "At-Emed-Journey-01-02-Parameters-In-Plan-Write",
  "parameter" : [{
    "name" : "medikationsplan",
    "resource" : {
      "resourceType" : "Bundle",
      "id" : "At-Emed-Journey-01-02-Bundle-Medikationsplan-Tx",
      "meta" : {
        "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-bundle-medikationsplantx"]
      },
      "type" : "transaction",
      "entry" : [{
        "fullUrl" : "https://example.elga.com/base/List/4cb4dceb-173f-461a-a267-683ec33e4be1",
        "resource" : {
          "resourceType" : "List",
          "id" : "4cb4dceb-173f-461a-a267-683ec33e4be1",
          "meta" : {
            "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-list-medikationsplan"]
          },
          "status" : "current",
          "mode" : "working",
          "code" : {
            "coding" : [{
              "system" : "http://snomed.info/sct",
              "code" : "736378000"
            }]
          },
          "subject" : {
            "type" : "Patient",
            "identifier" : {
              "system" : "urn:oid:1.2.40.0.10.2.1.1.149",
              "value" : "GH:oeLdSEb0l+8kSdJWjOYyYmnYki0="
            }
          },
          "date" : "2026-02-27T08:10:00+00:00",
          "source" : {
            "identifier" : {
              "system" : "urn:ietf:rfc:3986",
              "value" : "urn:oid:1.2.40.0.34.99.4613.4"
            }
          },
          "entry" : [{
            "flag" : {
              "coding" : [{
                "system" : "https://fhir.hl7.at/elga/emed/r4/CodeSystem/ElgaListEntryFlagCS",
                "code" : "new",
                "display" : "Neuer Planeintrag"
              }]
            },
            "item" : {
              "extension" : [{
                "url" : "http://hl7.org/fhir/StructureDefinition/resolve-as-version-specific",
                "valueBoolean" : true
              }],
              "reference" : "urn:uuid:5e947f71-6881-46cc-9b06-81a1743aa674"
            }
          },
          {
            "flag" : {
              "coding" : [{
                "system" : "https://fhir.hl7.at/elga/emed/r4/CodeSystem/ElgaListEntryFlagCS",
                "code" : "new",
                "display" : "Neuer Planeintrag"
              }]
            },
            "item" : {
              "extension" : [{
                "url" : "http://hl7.org/fhir/StructureDefinition/resolve-as-version-specific",
                "valueBoolean" : true
              }],
              "reference" : "urn:uuid:7f1294a2-f592-4547-881c-c15d1debc165"
            }
          }]
        },
        "request" : {
          "method" : "PUT",
          "url" : "List/4cb4dceb-173f-461a-a267-683ec33e4be1"
        }
      },
      {
        "fullUrl" : "urn:uuid:5e947f71-6881-46cc-9b06-81a1743aa674",
        "resource" : {
          "resourceType" : "MedicationRequest",
          "meta" : {
            "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medicationrequest-planeintrag"]
          },
          "extension" : [{
            "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.effectiveDosePeriod",
            "valuePeriod" : {
              "start" : "2026-02-27"
            }
          },
          {
            "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.renderedDosageInstruction",
            "valueMarkdown" : "1-0-0-0 | Täglich: 1-0-0-0"
          }],
          "status" : "active",
          "intent" : "order",
          "category" : [{
            "coding" : [{
              "system" : "https://fhir.hl7.at/elga/emed/r4/CodeSystem/MedicationRequestCategoryCS",
              "code" : "Planeintrag",
              "display" : "Planeintrag"
            }]
          }],
          "reportedBoolean" : false,
          "medicationReference" : {
            "reference" : "Medication?code=https://termgit.elga.gv.at/CodeSystem/asp-liste|2450836&code:text=RAMIPRIL%20HEX%20TBL%205MG"
          },
          "subject" : {
            "identifier" : {
              "system" : "urn:oid:1.2.40.0.10.2.1.1.149",
              "value" : "GH:oeLdSEb0l+8kSdJWjOYyYmnYki0="
            }
          },
          "authoredOn" : "2026-02-27T08:10:00+00:00",
          "requester" : {
            "identifier" : {
              "system" : "urn:ietf:rfc:3986",
              "value" : "urn:oid:1.2.40.0.34.99.4613.4"
            }
          },
          "courseOfTherapyType" : {
            "coding" : [{
              "system" : "http://terminology.hl7.org/CodeSystem/medicationrequest-course-of-therapy",
              "code" : "continuous"
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
        },
        "request" : {
          "method" : "POST",
          "url" : "MedicationRequest"
        }
      },
      {
        "fullUrl" : "urn:uuid:7f1294a2-f592-4547-881c-c15d1debc165",
        "resource" : {
          "resourceType" : "MedicationRequest",
          "meta" : {
            "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medicationrequest-planeintrag"]
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
            "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.effectiveDosePeriod",
            "valuePeriod" : {
              "start" : "2026-02-27",
              "end" : "2026-03-20"
            }
          },
          {
            "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.renderedDosageInstruction",
            "valueMarkdown" : "1-0-1-0 | Täglich 1-0-1-0 für 3 Wochen"
          }],
          "status" : "active",
          "intent" : "order",
          "category" : [{
            "coding" : [{
              "system" : "https://fhir.hl7.at/elga/emed/r4/CodeSystem/MedicationRequestCategoryCS",
              "code" : "Planeintrag",
              "display" : "Planeintrag"
            }]
          }],
          "reportedBoolean" : false,
          "medicationReference" : {
            "reference" : "#contained-medication-magistral-01"
          },
          "subject" : {
            "identifier" : {
              "system" : "urn:oid:1.2.40.0.10.2.1.1.149",
              "value" : "GH:oeLdSEb0l+8kSdJWjOYyYmnYki0="
            }
          },
          "authoredOn" : "2026-02-27T08:10:00+00:00",
          "requester" : {
            "identifier" : {
              "system" : "urn:ietf:rfc:3986",
              "value" : "urn:oid:1.2.40.0.34.99.4613.4"
            }
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
        },
        "request" : {
          "method" : "POST",
          "url" : "MedicationRequest"
        }
      }]
    }
  }]
}

```
