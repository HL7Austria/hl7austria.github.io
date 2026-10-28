# Beispiel Journey 01-02: Plan-Write-Response - ELGA e-Medikation (R4) DRAFT v0.1.0

## Example Bundle: Beispiel Journey 01-02: Plan-Write-Response



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "At-Emed-Journey-01-02-Bundle-plan-write-response",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-bundle-medikationsplan-write-response"]
  },
  "type" : "transaction-response",
  "link" : [{
    "relation" : "self",
    "url" : "https://example.elga.com/base/List/$plan-write"
  }],
  "entry" : [{
    "fullUrl" : "https://example.elga.com/base/List/4cb4dceb-173f-461a-a267-683ec33e4be1",
    "resource" : {
      "resourceType" : "List",
      "id" : "4cb4dceb-173f-461a-a267-683ec33e4be1",
      "meta" : {
        "versionId" : "v25cd90b82-be84-41c1-ae4b-715d232fec20",
        "lastUpdated" : "2026-02-27T08:10:00.312+00:00",
        "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-list-medikationsplan"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"List_4cb4dceb-173f-461a-a267-683ec33e4be1\"> </a>TODO</div>"
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
        "reference" : "Patient/At-Emed-Example-Patient-01",
        "type" : "Patient",
        "identifier" : {
          "system" : "urn:oid:1.2.40.0.10.2.1.1.149",
          "value" : "GH:oeLdSEb0l+8kSdJWjOYyYmnYki0="
        }
      },
      "date" : "2026-02-27T08:10:00+00:00",
      "source" : {
        "reference" : "Practitioner/At-Emed-Example-Practitioner-01",
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
          "reference" : "MedicationRequest/6bacfe23-d469-4945-bf3c-90c7e647aa52/_history/v1aeb5e5e8-785a-430b-afef-ee57335b213d"
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
          "reference" : "MedicationRequest/55e4be12-0d10-454c-a85f-cfb5f849e391/_history/v101275d13-fd59-4781-99ae-744fb90a1ba0"
        }
      }]
    },
    "response" : {
      "status" : "200",
      "location" : "https://example.elga.com/base/List/4cb4dceb-173f-461a-a267-683ec33e4be1/_history/v25cd90b82-be84-41c1-ae4b-715d232fec20",
      "lastModified" : "2026-02-27T08:10:00.312+00:00"
    }
  },
  {
    "fullUrl" : "https://example.elga.com/base/MedicationRequest/6bacfe23-d469-4945-bf3c-90c7e647aa52",
    "resource" : {
      "resourceType" : "MedicationRequest",
      "id" : "6bacfe23-d469-4945-bf3c-90c7e647aa52",
      "meta" : {
        "versionId" : "v1aeb5e5e8-785a-430b-afef-ee57335b213d",
        "lastUpdated" : "2026-02-27T08:10:00.314+00:00",
        "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medicationrequest-planeintrag"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationRequest_6bacfe23-d469-4945-bf3c-90c7e647aa52\"> </a>TODO</div>"
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
          "system" : "https://fhir.hl7.at/elga/emed/r4/CodeSystem/MedicationRequestCategoryCS",
          "code" : "Planeintrag",
          "display" : "Planeintrag"
        }]
      }],
      "reportedBoolean" : false,
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
      "authoredOn" : "2026-02-27T08:10:00+00:00",
      "requester" : {
        "reference" : "Practitioner/At-Emed-Example-Practitioner-01",
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
    "response" : {
      "status" : "201",
      "location" : "https://example.elga.com/base/MedicationRequest/6bacfe23-d469-4945-bf3c-90c7e647aa52/_history/v1aeb5e5e8-785a-430b-afef-ee57335b213d",
      "lastModified" : "2026-02-27T08:10:00.314+00:00"
    }
  },
  {
    "fullUrl" : "https://example.elga.com/base/MedicationRequest/55e4be12-0d10-454c-a85f-cfb5f849e391",
    "resource" : {
      "resourceType" : "MedicationRequest",
      "id" : "55e4be12-0d10-454c-a85f-cfb5f849e391",
      "meta" : {
        "versionId" : "v101275d13-fd59-4781-99ae-744fb90a1ba0",
        "lastUpdated" : "2026-02-27T08:10:00.360+00:00",
        "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medicationrequest-planeintrag"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationRequest_55e4be12-0d10-454c-a85f-cfb5f849e391\"> </a>TODO</div>"
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
        "reference" : "Patient/At-Emed-Example-Patient-01",
        "identifier" : {
          "system" : "urn:oid:1.2.40.0.10.2.1.1.149",
          "value" : "GH:oeLdSEb0l+8kSdJWjOYyYmnYki0="
        }
      },
      "authoredOn" : "2026-02-27T08:10:00+00:00",
      "requester" : {
        "reference" : "Practitioner/At-Emed-Example-Practitioner-01",
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
    "response" : {
      "status" : "201",
      "location" : "https://example.elga.com/base/MedicationRequest/55e4be12-0d10-454c-a85f-cfb5f849e391/_history/v101275d13-fd59-4781-99ae-744fb90a1ba0",
      "lastModified" : "2026-02-27T08:10:00.360+00:00"
    }
  }]
}

```
