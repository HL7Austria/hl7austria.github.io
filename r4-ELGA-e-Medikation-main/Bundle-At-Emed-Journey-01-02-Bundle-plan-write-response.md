# HL7.AT.FHIR.ELGA.EMED.R4\Beispiel Journey 01-02: Plan-Write-Response - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel Journey 01-02: Plan-Write-Response **

## Example Bundle: Beispiel Journey 01-02: Plan-Write-Response 



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "At-Emed-Journey-01-02-Bundle-plan-write-response",
  "type" : "transaction-response",
  "timestamp" : "2026-02-27T08:10:00+00:00",
  "link" : [{
    "relation" : "self",
    "url" : "https://example.elga.com/base/List/$plan-write"
  }],
  "entry" : [{
    "fullUrl" : "https://example.elga.com/List/4cb4dceb-173f-461a-a267-683ec33e4be1",
    "resource" : {
      "resourceType" : "List",
      "id" : "4cb4dceb-173f-461a-a267-683ec33e4be1",
      "meta" : {
        "versionId" : "9f99de43-341d-40a0-a55d-21f6b4c305ed",
        "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-list-medikationsplan"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"List_4cb4dceb-173f-461a-a267-683ec33e4be1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: List 4cb4dceb-173f-461a-a267-683ec33e4be1</b></p><a name=\"4cb4dceb-173f-461a-a267-683ec33e4be1\"> </a><a name=\"hc4cb4dceb-173f-461a-a267-683ec33e4be1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">version: 9f99de43-341d-40a0-a55d-21f6b4c305ed</p><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-elga-emed-list-medikationsplan.html\">AT ELGA e-Medikation List Medikationsplan</a></p></div><table class=\"clstu\"><tr><td>Date: 2026-02-27 08:10:00+0000 </td><td>Mode: Working List </td><td>Status: Current </td><td>Code: Medikationsplan </td></tr><tr><td>Subject: <a href=\"Patient-At-Emed-Example-Patient-01.html\">Anton Mustermann  Male, DoB: 1900-01-01 ( Social Security number: 1234010100)</a>Source: </td></tr></table><table class=\"grid\"><tr style=\"backgound-color: #eeeeee\"><td><b>Items</b></td><td>Flag</td></tr><tr><td><a href=\"MedicationRequest-6bacfe23-d469-4945-bf3c-90c7e647aa52.html\">MedicationRequest: extension = 2026-02-27 --&gt; (ongoing),1-0-0-0 | Täglich: 1-0-0-0; status = active; intent = order; category = Planeintrag; reported[x] = false; medication[x] = -&gt;Medication RAMIPRIL HEX TBL 5MG; authoredOn = 2026-02-27 08:10:00+0000; courseOfTherapyType = Continuous long term therapy</a></td><td>Neuer Planeintrag</td></tr><tr><td><a href=\"MedicationRequest-55e4be12-0d10-454c-a85f-cfb5f849e391.html\">MedicationRequest: extension = 2026-02-27 --&gt; 2026-03-20,1-0-1-0 | Täglich 1-0-1-0 für 3 Wochen; status = active; intent = order; category = Planeintrag; reported[x] = false; medication[x] = -&gt;Medication: form = Salbe; authoredOn = 2026-02-27 08:10:00+0000; courseOfTherapyType = Short course (acute) therapy</a></td><td>Neuer Planeintrag</td></tr></table></div>"
      },
      "status" : "current",
      "mode" : "working",
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "736378000",
          "display" : "Medikationsplan"
        }]
      },
      "subject" : {
        "reference" : "Patient/At-Emed-Example-Patient-01"
      },
      "date" : "2026-02-27T08:10:00+00:00",
      "source" : {
        "reference" : "PractitionerRole/At-Emed-Example-PractitionerRole-01"
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
          "reference" : "MedicationRequest/6bacfe23-d469-4945-bf3c-90c7e647aa52"
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
          "reference" : "MedicationRequest/55e4be12-0d10-454c-a85f-cfb5f849e391"
        }
      }]
    },
    "response" : {
      "status" : "200",
      "location" : "https://example.elga.com/List/4cb4dceb-173f-461a-a267-683ec33e4be1/_history/9f99de43-341d-40a0-a55d-21f6b4c305ed",
      "etag" : "9f99de43-341d-40a0-a55d-21f6b4c305ed",
      "lastModified" : "2026-09-23T13:54:03.698+00:00"
    }
  },
  {
    "fullUrl" : "https://example.elga.com/MedicationRequest/6bacfe23-d469-4945-bf3c-90c7e647aa52",
    "resource" : {
      "resourceType" : "MedicationRequest",
      "id" : "6bacfe23-d469-4945-bf3c-90c7e647aa52",
      "meta" : {
        "versionId" : "aeb5e5e8-785a-430b-afef-ee57335b213d",
        "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medicationrequest-planeintrag"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationRequest_6bacfe23-d469-4945-bf3c-90c7e647aa52\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationRequest 6bacfe23-d469-4945-bf3c-90c7e647aa52</b></p><a name=\"6bacfe23-d469-4945-bf3c-90c7e647aa52\"> </a><a name=\"hc6bacfe23-d469-4945-bf3c-90c7e647aa52\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">version: aeb5e5e8-785a-430b-afef-ee57335b213d</p><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-elga-emed-medicationrequest-planeintrag.html\">At ELGA e-Medikation MedicationRequest Planeintrag</a></p></div><p><b>R5: Period over which the medication is to be taken (new)</b>: 2026-02-27 --&gt; (ongoing)</p><p><b>R5: Full representation of the dosage instructions (new)</b>: </p><div><p>1-0-0-0 | Täglich: 1-0-0-0</p>\n</div><p><b>status</b>: Active</p><p><b>intent</b>: Order</p><p><b>category</b>: <span title=\"Codes:{https://fhir.hl7.at/elga/emed/r4/CodeSystem/MedicationRequestCategoryCS 1}\">Planeintrag</span></p><p><b>reported</b>: false</p><p><b>medication</b>: <a href=\"#hc6bacfe23-d469-4945-bf3c-90c7e647aa52/at-emed-journey-medicaiton-ramipril\">Medication RAMIPRIL HEX TBL 5MG</a></p><p><b>subject</b>: <a href=\"Patient-At-Emed-Example-Patient-01.html\">Anton Mustermann  Male, DoB: 1900-01-01 ( Social Security number: 1234010100)</a></p><p><b>authoredOn</b>: 2026-02-27 08:10:00+0000</p><p><b>requester</b>: <a href=\"PractitionerRole-At-Emed-Example-PractitionerRole-01.html\">PractitionerRole Ärztin/Arzt</a></p><p><b>courseOfTherapyType</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/medicationrequest-course-of-therapy continuous}\">Continuous long term therapy</span></p><blockquote><p><b>dosageInstruction</b></p><p><b>AT ELGA e-Medikation Extension Dosierungskategorie</b>: <span title=\"Codes:{https://fhir.hl7.at/elga/emed/r4/CodeSystem/AtElgaEmedCodeSystemDosageCategory standard}\">Standard Administration</span></p><p><b>sequence</b>: 1</p><p><b>patientInstruction</b>: Nehmen Sie die Tablette vor dem Essen mit ausreichend Flüssigkeit ein.</p><p><b>timing</b>: Morning, Once per 1 day</p><p><b>route</b>: <span title=\"Codes:{https://termgit.elga.gv.at/CodeSystem/medikationartanwendung 100000073619}\">zum Einnehmen</span></p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td> Stück<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code{Stueck} = '{Stueck}')</span></td></tr></table></blockquote><hr/><blockquote><p class=\"res-header-id\"><b>Generated Narrative: Medication #at-emed-journey-medicaiton-ramipril</b></p><a name=\"6bacfe23-d469-4945-bf3c-90c7e647aa52/at-emed-journey-medicaiton-ramipril\"> </a><a name=\"hc6bacfe23-d469-4945-bf3c-90c7e647aa52/at-emed-journey-medicaiton-ramipril\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-elga-emed-medication-standard-medikation.html\">AT ELGA e-Medikation Medication Medikation</a></p></div><p><b>code</b>: <span title=\"Codes:{https://termgit.elga.gv.at/CodeSystem/asp-liste 2450836}\">RAMIPRIL HEX TBL 5MG</span></p></blockquote></div>"
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
        "valueMarkdown" : "1-0-0-0 | Täglich: 1-0-0-0"
      }],
      "status" : "active",
      "intent" : "order",
      "category" : [{
        "coding" : [{
          "system" : "https://fhir.hl7.at/elga/emed/r4/CodeSystem/MedicationRequestCategoryCS",
          "code" : "1",
          "display" : "Planeintrag"
        }]
      }],
      "reportedBoolean" : false,
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
            "unit" : "Stück",
            "system" : "http://unitsofmeasure.org",
            "code" : "{Stueck}"
          }
        }]
      }]
    },
    "response" : {
      "status" : "201",
      "location" : "https://example.elga.com/MedicationRequest/6bacfe23-d469-4945-bf3c-90c7e647aa52/_history/aeb5e5e8-785a-430b-afef-ee57335b213d",
      "etag" : "aeb5e5e8-785a-430b-afef-ee57335b213d",
      "lastModified" : "2026-09-23T13:54:03.714+00:00"
    }
  },
  {
    "fullUrl" : "https://example.elga.com/MedicationRequest/55e4be12-0d10-454c-a85f-cfb5f849e391",
    "resource" : {
      "resourceType" : "MedicationRequest",
      "id" : "55e4be12-0d10-454c-a85f-cfb5f849e391",
      "meta" : {
        "versionId" : "01275d13-fd59-4781-99ae-744fb90a1ba0",
        "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medicationrequest-planeintrag"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationRequest_55e4be12-0d10-454c-a85f-cfb5f849e391\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationRequest 55e4be12-0d10-454c-a85f-cfb5f849e391</b></p><a name=\"55e4be12-0d10-454c-a85f-cfb5f849e391\"> </a><a name=\"hc55e4be12-0d10-454c-a85f-cfb5f849e391\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">version: 01275d13-fd59-4781-99ae-744fb90a1ba0</p><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-elga-emed-medicationrequest-planeintrag.html\">At ELGA e-Medikation MedicationRequest Planeintrag</a></p></div><p><b>R5: Period over which the medication is to be taken (new)</b>: 2026-02-27 --&gt; 2026-03-20</p><p><b>R5: Full representation of the dosage instructions (new)</b>: </p><div><p>1-0-1-0 | Täglich 1-0-1-0 für 3 Wochen</p>\n</div><p><b>status</b>: Active</p><p><b>intent</b>: Order</p><p><b>category</b>: <span title=\"Codes:{https://fhir.hl7.at/elga/emed/r4/CodeSystem/MedicationRequestCategoryCS 1}\">Planeintrag</span></p><p><b>reported</b>: false</p><p><b>medication</b>: <a href=\"#hc55e4be12-0d10-454c-a85f-cfb5f849e391/d9641fa3-9b85-4ab9-a843-c08e5a6fc007\">Medication: form = Salbe</a></p><p><b>subject</b>: <a href=\"Patient-At-Emed-Example-Patient-01.html\">Anton Mustermann  Male, DoB: 1900-01-01 ( Social Security number: 1234010100)</a></p><p><b>authoredOn</b>: 2026-02-27 08:10:00+0000</p><p><b>requester</b>: <a href=\"PractitionerRole-At-Emed-Example-PractitionerRole-01.html\">PractitionerRole Ärztin/Arzt</a></p><p><b>courseOfTherapyType</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/medicationrequest-course-of-therapy acute}\">Short course (acute) therapy</span></p><h3>DosageInstructions</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Extension</b></td><td><b>Sequence</b></td><td><b>Timing</b></td><td><b>Route</b></td></tr><tr><td style=\"display: none\">*</td><td/><td>1</td><td>Morning, Evening, 2 per 1 day</td><td><span title=\"Codes:{https://termgit.elga.gv.at/CodeSystem-medikationartanwendung.html 100000073566}\">Anwendung auf der Haut</span></td></tr></table><hr/><blockquote><p class=\"res-header-id\"><b>Generated Narrative: Medication #d9641fa3-9b85-4ab9-a843-c08e5a6fc007</b></p><a name=\"55e4be12-0d10-454c-a85f-cfb5f849e391/d9641fa3-9b85-4ab9-a843-c08e5a6fc007\"> </a><a name=\"hc55e4be12-0d10-454c-a85f-cfb5f849e391/d9641fa3-9b85-4ab9-a843-c08e5a6fc007\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-elga-emed-medication-magistrale-zubereitung.html\">AT ELGA e-Medikation Medication Magistrale Medikation</a></p></div><p><b>form</b>: <span title=\"Codes:{https://termgit.elga.gv.at/CodeSystem/medikationdarreichungsform 100000073713}\">Salbe</span></p><blockquote><p><b>ingredient</b></p><p><b>item</b>: <span title=\"Codes:{https://termgit.elga.gv.at/CodeSystem/atc-deutsch-wido A11HA30}\">Dexpanthenol</span></p><p><b>strength</b>: 5 g<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codeg = 'g')</span>/100 g<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codeg = 'g')</span></p></blockquote><blockquote><p><b>ingredient</b></p><p><b>item</b>: <span title=\"Codes:\">Salbengrundlage</span></p><p><b>isActive</b>: false</p><p><b>strength</b>: 95 g/100 g</p></blockquote></blockquote></div>"
      },
      "contained" : [{
        "resourceType" : "Medication",
        "id" : "d9641fa3-9b85-4ab9-a843-c08e5a6fc007",
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
        "valueMarkdown" : "1-0-1-0 | Täglich 1-0-1-0 für 3 Wochen"
      }],
      "status" : "active",
      "intent" : "order",
      "category" : [{
        "coding" : [{
          "system" : "https://fhir.hl7.at/elga/emed/r4/CodeSystem/MedicationRequestCategoryCS",
          "code" : "1",
          "display" : "Planeintrag"
        }]
      }],
      "reportedBoolean" : false,
      "medicationReference" : {
        "reference" : "#d9641fa3-9b85-4ab9-a843-c08e5a6fc007"
      },
      "subject" : {
        "reference" : "Patient/At-Emed-Example-Patient-01"
      },
      "authoredOn" : "2026-02-27T08:10:00+00:00",
      "requester" : {
        "reference" : "PractitionerRole/At-Emed-Example-PractitionerRole-01"
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
      }]
    },
    "response" : {
      "status" : "201",
      "location" : "https://example.elga.com/MedicationRequest/55e4be12-0d10-454c-a85f-cfb5f849e391/_history/01275d13-fd59-4781-99ae-744fb90a1ba0",
      "etag" : "01275d13-fd59-4781-99ae-744fb90a1ba0",
      "lastModified" : "2026-09-23T13:54:03.76+00:00"
    }
  }]
}

```
