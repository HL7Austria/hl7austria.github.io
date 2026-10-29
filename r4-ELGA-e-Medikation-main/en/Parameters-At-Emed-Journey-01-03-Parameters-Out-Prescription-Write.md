# Beispiel Journey 01-03: $prescription-write Response - ELGA e-Medikation (R4) DRAFT v0.1.0

## Example Parameters: Beispiel Journey 01-03: $prescription-write Response



## Resource Content

```json
{
  "resourceType" : "Parameters",
  "id" : "At-Emed-Journey-01-03-Parameters-Out-Prescription-Write",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-parameters-out-prescription-write"]
  },
  "parameter" : [{
    "name" : "geplanteAbgaben",
    "resource" : {
      "resourceType" : "Bundle",
      "id" : "At-Emed-Journey-01-03-Bundle-Geplante-Abgaben-Write-Response",
      "meta" : {
        "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-bundle-geplanteabgaben-write-response"]
      },
      "type" : "transaction-response",
      "link" : [{
        "relation" : "self",
        "url" : "https://example.elga.com/base/MedicationRequest/$prescription-write"
      }],
      "entry" : [{
        "fullUrl" : "https://example.elga.com/base/MedicationRequest/d9d43746-69ab-4ed8-9200-3a939f7224de",
        "resource" : {
          "resourceType" : "MedicationRequest",
          "id" : "d9d43746-69ab-4ed8-9200-3a939f7224de",
          "meta" : {
            "versionId" : "v17f105b2f-3c48-4513-9d1a-cd37ffd47469",
            "lastUpdated" : "2026-02-27T08:15:00.204+00:00",
            "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medicationrequest-geplanteabgabe"]
          },
          "text" : {
            "status" : "generated",
            "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">TODO</div>"
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
            "form" : {
              "coding" : [{
                "system" : "https://termgit.elga.gv.at/CodeSystem/medikationdarreichungsform",
                "code" : "100000073664",
                "display" : "Tablette"
              }]
            },
            "amount" : {
              "numerator" : {
                "value" : 30,
                "unit" : "Stück",
                "system" : "http://unitsofmeasure.org",
                "code" : "{Stueck}"
              },
              "denominator" : {
                "value" : 1
              }
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
                  "code" : "100000092240",
                  "display" : "RAMIPRIL"
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
              "system" : "https://fhir.hl7.at/elga/emed/r4/CodeSystem/at-elga-emed-codesystem-medicationrequestcategory-cs",
              "code" : "GeplAbgabe",
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
            "reference" : "#at-emed-journey-medication-ramipril"
          },
          "subject" : {
            "reference" : "Patient/At-Emed-Example-Patient-01",
            "identifier" : {
              "system" : "urn:oid:1.2.40.0.10.2.1.1.149",
              "value" : "GH:oeLdSEb0l+8kSdJWjOYyYmnYki0="
            }
          },
          "authoredOn" : "2026-02-27T08:15:00+00:00",
          "requester" : {
            "reference" : "Practitioner/At-Emed-Example-Practitioner-01",
            "identifier" : {
              "system" : "urn:ietf:rfc:3986",
              "value" : "urn:oid:1.2.40.0.34.99.4613.1"
            }
          },
          "basedOn" : [{
            "reference" : "MedicationRequest/6bacfe23-d469-4945-bf3c-90c7e647aa52"
          }],
          "groupIdentifier" : {
            "system" : "http://tbd.com",
            "value" : "WYE82A2G8EEW"
          },
          "dosageInstruction" : [{
            "extension" : [{
              "url" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-extension-dosage-category",
              "valueCodeableConcept" : {
                "coding" : [{
                  "system" : "https://fhir.hl7.at/elga/emed/r4/CodeSystem/at-elga-emed-codesystem-dosagecategory-cs",
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
          }],
          "dispenseRequest" : {
            "validityPeriod" : {
              "start" : "2026-02-27",
              "end" : "2026-03-27"
            },
            "numberOfRepeatsAllowed" : 0,
            "quantity" : {
              "value" : 1,
              "unit" : "Packung"
            }
          }
        },
        "response" : {
          "status" : "201",
          "location" : "https://example.elga.com/base/MedicationRequest/d9d43746-69ab-4ed8-9200-3a939f7224de/_history/v17f105b2f-3c48-4513-9d1a-cd37ffd47469",
          "lastModified" : "2026-02-27T08:15:00.204+00:00"
        }
      },
      {
        "fullUrl" : "https://example.elga.com/base/MedicationRequest/f564f377-ef44-4943-9bb2-fccc8a5db24a",
        "resource" : {
          "resourceType" : "MedicationRequest",
          "id" : "f564f377-ef44-4943-9bb2-fccc8a5db24a",
          "meta" : {
            "versionId" : "v12e98d46b-0356-4ec1-afb8-433f65596d1d",
            "lastUpdated" : "2026-02-27T08:15:00.231+00:00",
            "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medicationrequest-geplanteabgabe"]
          },
          "text" : {
            "status" : "generated",
            "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\">TODO</div>"
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
              "system" : "https://fhir.hl7.at/elga/emed/r4/CodeSystem/at-elga-emed-codesystem-medicationrequestcategory-cs",
              "code" : "GeplAbgabe",
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
            "reference" : "#contained-medication-magistral-01"
          },
          "subject" : {
            "reference" : "Patient/At-Emed-Example-Patient-01",
            "identifier" : {
              "system" : "urn:oid:1.2.40.0.10.2.1.1.149",
              "value" : "GH:oeLdSEb0l+8kSdJWjOYyYmnYki0="
            }
          },
          "authoredOn" : "2026-02-27T08:15:00+00:00",
          "requester" : {
            "reference" : "Practitioner/At-Emed-Example-Practitioner-01",
            "identifier" : {
              "system" : "urn:ietf:rfc:3986",
              "value" : "urn:oid:1.2.40.0.34.99.4613.1"
            }
          },
          "basedOn" : [{
            "reference" : "MedicationRequest/55e4be12-0d10-454c-a85f-cfb5f849e391"
          }],
          "groupIdentifier" : {
            "system" : "http://tbd.com",
            "value" : "WYE82A2G8EEW"
          },
          "dosageInstruction" : [{
            "extension" : [{
              "url" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-extension-dosage-category",
              "valueCodeableConcept" : {
                "coding" : [{
                  "system" : "https://fhir.hl7.at/elga/emed/r4/CodeSystem/at-elga-emed-codesystem-dosagecategory-cs",
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
          }],
          "dispenseRequest" : {
            "validityPeriod" : {
              "start" : "2026-02-27",
              "end" : "2026-03-27"
            },
            "numberOfRepeatsAllowed" : 0,
            "quantity" : {
              "value" : 1,
              "unit" : "Packung"
            }
          }
        },
        "response" : {
          "status" : "201",
          "location" : "https://example.elga.com/base/MedicationRequest/f564f377-ef44-4943-9bb2-fccc8a5db24a/_history/v12e98d46b-0356-4ec1-afb8-433f65596d1d",
          "lastModified" : "2026-02-27T08:15:00.231+00:00"
        }
      }]
    }
  }]
}

```
