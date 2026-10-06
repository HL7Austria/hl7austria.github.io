# HL7.AT.FHIR.ELGA.EMED.R4\Beispiel Journey 06-02: Mediaktionsplan-Transaction-Bundle - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel Journey 06-02: Mediaktionsplan-Transaction-Bundle**

## Example Bundle: Beispiel Journey 06-02: Mediaktionsplan-Transaction-Bundle



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "At-Emed-Journey-06-02-Bundle-Medikationsplan-Tx",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-bundle-medikationsplantx"]
  },
  "type" : "transaction",
  "timestamp" : "2026-03-19T12:10:00+00:00",
  "entry" : [{
    "fullUrl" : "https://example.elga.com/List/4cb4dceb-173f-461a-a267-683ec33e4be1",
    "resource" : {
      "resourceType" : "List",
      "id" : "At-Emed-Journey-06-02-List-Medikationsplan",
      "meta" : {
        "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-list-medikationsplan"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"List_At-Emed-Journey-06-02-List-Medikationsplan\"> </a><p class=\"res-header-id\"><b>Generated Narrative: List At-Emed-Journey-06-02-List-Medikationsplan</b></p><a name=\"At-Emed-Journey-06-02-List-Medikationsplan\"> </a><a name=\"hcAt-Emed-Journey-06-02-List-Medikationsplan\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-elga-emed-list-medikationsplan.html\">AT ELGA e-Medikation List Medikationsplan</a></p></div><table class=\"clstu\"><tr><td>Date: 2026-03-19 12:10:00+0000 </td><td>Mode: Working List </td><td>Status: Current </td><td>Code: Medikationsplan </td></tr><tr><td>Subject: <a href=\"Patient-At-Emed-Example-Patient-01.html\">Anton Mustermann</a>Source: </td></tr></table><table class=\"grid\"><tr style=\"backgound-color: #eeeeee\"><td><b>Items</b></td><td>Flag</td></tr><tr><td><a href=\"MedicationRequest-At-Emed-Journey-06-02-Mr-Planeintrag-01.html\">MedicationRequest: extension = 2026-02-27 --&gt; (ongoing),1-0-1-0 | Täglich: 1-0-1-0; status = active; intent = order; category = Planeintrag; reported[x] = false; medication[x] = -&gt;Medication RAMIPRIL HEX TBL 5MG; authoredOn = 2026-03-19 12:10:00+0000; courseOfTherapyType = Continuous long term therapy</a></td><td>Planeintrag geändert</td></tr><tr><td><a href=\"MedicationRequest-At-Emed-Journey-01-02-Mr-Planeintrag-02.html\">MedicationRequest: extension = 2026-02-27 --&gt; 2026-03-20,1-0-1-0 | Täglich 1-0-1-0 für 3 Wochen; status = active; intent = order; category = Planeintrag; reported[x] = false; medication[x] = -&gt;Medication: form = Salbe; authoredOn = 2026-02-27 08:10:00+0000; courseOfTherapyType = Short course (acute) therapy</a></td><td>Planeintrag beibehalten</td></tr><tr><td><a href=\"MedicationRequest-At-Emed-Journey-06-02-Mr-Planeintrag-03.html\">MedicationRequest: extension = 2026-03-19 --&gt; (ongoing),1-1-1-1 | 4x täglich 1000 mg; status = active; intent = order; category = Planeintrag; reported[x] = false; medication[x] = -&gt;Medication; authoredOn = 2026-03-19 12:10:00+0000; courseOfTherapyType = Short course (acute) therapy</a></td><td>Neuer Planeintrag</td></tr></table></div>"
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
        "reference" : "Patient/At-Emed-Example-Patient-01",
        "display" : "Anton Mustermann"
      },
      "date" : "2026-03-19T12:10:00+00:00",
      "source" : {
        "reference" : "PractitionerRole/At-Emed-Example-PractitionerRole-03",
        "display" : "Dr. Krankenhaus"
      },
      "entry" : [{
        "flag" : {
          "coding" : [{
            "system" : "https://fhir.hl7.at/elga/emed/r4/CodeSystem/ElgaListEntryFlagCS",
            "code" : "changed",
            "display" : "Planeintrag geändert"
          }]
        },
        "item" : {
          "reference" : "MedicationRequest/At-Emed-Journey-06-02-Mr-Planeintrag-01"
        }
      },
      {
        "flag" : {
          "coding" : [{
            "system" : "https://fhir.hl7.at/elga/emed/r4/CodeSystem/ElgaListEntryFlagCS",
            "code" : "unchanged",
            "display" : "Planeintrag beibehalten"
          }]
        },
        "item" : {
          "reference" : "MedicationRequest/At-Emed-Journey-01-02-Mr-Planeintrag-02"
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
          "reference" : "MedicationRequest/At-Emed-Journey-06-02-Mr-Planeintrag-03"
        }
      }]
    },
    "request" : {
      "method" : "PUT",
      "url" : "List/4cb4dceb-173f-461a-a267-683ec33e4be1"
    }
  },
  {
    "fullUrl" : "https://example.elga.com/MedicationRequest/5e947f71-6881-46cc-9b06-81a1743aa674",
    "resource" : {
      "resourceType" : "MedicationRequest",
      "id" : "At-Emed-Journey-06-02-Mr-Planeintrag-01",
      "meta" : {
        "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medicationrequest-planeintrag"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationRequest_At-Emed-Journey-06-02-Mr-Planeintrag-01\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationRequest At-Emed-Journey-06-02-Mr-Planeintrag-01</b></p><a name=\"At-Emed-Journey-06-02-Mr-Planeintrag-01\"> </a><a name=\"hcAt-Emed-Journey-06-02-Mr-Planeintrag-01\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-elga-emed-medicationrequest-planeintrag.html\">At ELGA e-Medikation MedicationRequest Planeintrag</a></p></div><p><b>R5: Period over which the medication is to be taken (new)</b>: 2026-02-27 --&gt; (ongoing)</p><p><b>R5: Full representation of the dosage instructions (new)</b>: </p><div><p>1-0-1-0 | Täglich: 1-0-1-0</p>\n</div><p><b>status</b>: Active</p><p><b>intent</b>: Order</p><p><b>category</b>: <span title=\"Codes:{https://fhir.hl7.at/elga/emed/r4/CodeSystem/MedicationRequestCategoryCS 1}\">Planeintrag</span></p><p><b>reported</b>: false</p><p><b>medication</b>: <a href=\"#hcAt-Emed-Journey-06-02-Mr-Planeintrag-01/contained-medication-journey-06-02-01\">Medication RAMIPRIL HEX TBL 5MG</a></p><p><b>subject</b>: <a href=\"Patient-At-Emed-Example-Patient-01.html\">Anton Mustermann</a></p><p><b>authoredOn</b>: 2026-03-19 12:10:00+0000</p><p><b>requester</b>: <a href=\"PractitionerRole-At-Emed-Example-PractitionerRole-03.html\">Dr. Krankenhaus</a></p><p><b>courseOfTherapyType</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/medicationrequest-course-of-therapy continuous}\">Continuous long term therapy</span></p><blockquote><p><b>dosageInstruction</b></p><p><b>AT ELGA e-Medikation Extension Dosierungskategorie</b>: <span title=\"Codes:{https://fhir.hl7.at/elga/emed/r4/CodeSystem/AtElgaEmedCodeSystemDosageCategory standard}\">Standard Administration</span></p><p><b>sequence</b>: 1</p><p><b>patientInstruction</b>: Nehmen Sie die Tablette vor dem Essen mit ausreichend Flüssigkeit ein.</p><p><b>timing</b>: Evening, 2 per 1 day</p><p><b>route</b>: <span title=\"Codes:{https://termgit.elga.gv.at/CodeSystem/medikationartanwendung 100000073619}\">zum Einnehmen</span></p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td> Stück<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code{Stueck} = '{Stueck}')</span></td></tr></table></blockquote><hr/><blockquote><p class=\"res-header-id\"><b>Generated Narrative: Medication #contained-medication-journey-06-02-01</b></p><a name=\"At-Emed-Journey-06-02-Mr-Planeintrag-01/contained-medication-journey-06-02-01\"> </a><a name=\"hcAt-Emed-Journey-06-02-Mr-Planeintrag-01/contained-medication-journey-06-02-01\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-elga-emed-medication-standard-medikation.html\">AT ELGA e-Medikation Medication Medikation</a></p></div><p><b>code</b>: <span title=\"Codes:{https://termgit.elga.gv.at/CodeSystem/asp-liste 2450836}\">RAMIPRIL HEX TBL 5MG</span></p></blockquote></div>"
      },
      "contained" : [{
        "resourceType" : "Medication",
        "id" : "contained-medication-journey-06-02-01",
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
        "valueMarkdown" : "1-0-1-0 | Täglich: 1-0-1-0"
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
        "reference" : "#contained-medication-journey-06-02-01"
      },
      "subject" : {
        "reference" : "Patient/At-Emed-Example-Patient-01",
        "display" : "Anton Mustermann"
      },
      "authoredOn" : "2026-03-19T12:10:00+00:00",
      "requester" : {
        "reference" : "PractitionerRole/At-Emed-Example-PractitionerRole-03",
        "display" : "Dr. Krankenhaus"
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
            "frequency" : 2,
            "period" : 1,
            "periodUnit" : "d",
            "when" : ["EVE"]
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
    "request" : {
      "method" : "PUT",
      "url" : "MedicationRequest/5e947f71-6881-46cc-9b06-81a1743aa674"
    }
  },
  {
    "fullUrl" : "https://example.elga.com/urn:uuid:6852930e-6883-4301-b5c1-c142b746af8f",
    "resource" : {
      "resourceType" : "MedicationRequest",
      "id" : "At-Emed-Journey-06-02-Mr-Planeintrag-03",
      "meta" : {
        "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medicationrequest-planeintrag"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationRequest_At-Emed-Journey-06-02-Mr-Planeintrag-03\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationRequest At-Emed-Journey-06-02-Mr-Planeintrag-03</b></p><a name=\"At-Emed-Journey-06-02-Mr-Planeintrag-03\"> </a><a name=\"hcAt-Emed-Journey-06-02-Mr-Planeintrag-03\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-elga-emed-medicationrequest-planeintrag.html\">At ELGA e-Medikation MedicationRequest Planeintrag</a></p></div><p><b>R5: Period over which the medication is to be taken (new)</b>: 2026-03-19 --&gt; (ongoing)</p><p><b>R5: Full representation of the dosage instructions (new)</b>: </p><div><p>1-1-1-1 | 4x täglich 1000 mg</p>\n</div><p><b>status</b>: Active</p><p><b>intent</b>: Order</p><p><b>category</b>: <span title=\"Codes:{https://fhir.hl7.at/elga/emed/r4/CodeSystem/MedicationRequestCategoryCS 1}\">Planeintrag</span></p><p><b>reported</b>: false</p><p><b>medication</b>: <a href=\"#hcAt-Emed-Journey-06-02-Mr-Planeintrag-03/contained-medication-journey-06-02-02-wirkstoff\">Medication</a></p><p><b>subject</b>: <a href=\"Patient-At-Emed-Example-Patient-01.html\">Anton Mustermann</a></p><p><b>authoredOn</b>: 2026-03-19 12:10:00+0000</p><p><b>requester</b>: <a href=\"PractitionerRole-At-Emed-Example-PractitionerRole-03.html\">Dr. Krankenhaus</a></p><p><b>courseOfTherapyType</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/medicationrequest-course-of-therapy acute}\">Short course (acute) therapy</span></p><blockquote><p><b>dosageInstruction</b></p><p><b>AT ELGA e-Medikation Extension Dosierungskategorie</b>: <span title=\"Codes:{https://fhir.hl7.at/elga/emed/r4/CodeSystem/AtElgaEmedCodeSystemDosageCategory standard}\">Standard Administration</span></p><p><b>sequence</b>: 1</p><p><b>timing</b>: Morning, Noon, Evening, Night, 4 per 1 day</p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>1000 MilliGram<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg = 'mg')</span></td></tr></table></blockquote><hr/><blockquote><p class=\"res-header-id\"><b>Generated Narrative: Medication #contained-medication-journey-06-02-02-wirkstoff</b></p><a name=\"At-Emed-Journey-06-02-Mr-Planeintrag-03/contained-medication-journey-06-02-02-wirkstoff\"> </a><a name=\"hcAt-Emed-Journey-06-02-Mr-Planeintrag-03/contained-medication-journey-06-02-02-wirkstoff\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-elga-emed-medication-magistrale-zubereitung.html\">AT ELGA e-Medikation Medication Magistrale Medikation</a></p></div><h3>Ingredients</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Item[x]</b></td></tr><tr><td style=\"display: none\">*</td><td><span title=\"Codes:{https://termgit.elga.gv.at/CodeSystem/medikation-ages-wirkstoffe 4467812}\">METAMIZOL NATRIUM MONOHYDRAT</span></td></tr></table></blockquote></div>"
      },
      "contained" : [{
        "resourceType" : "Medication",
        "id" : "contained-medication-journey-06-02-02-wirkstoff",
        "meta" : {
          "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medication-magistrale-zubereitung"]
        },
        "ingredient" : [{
          "itemCodeableConcept" : {
            "coding" : [{
              "system" : "https://termgit.elga.gv.at/CodeSystem/medikation-ages-wirkstoffe",
              "code" : "4467812",
              "display" : "METAMIZOL NATRIUM MONOHYDRAT"
            }]
          }
        }]
      }],
      "extension" : [{
        "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.effectiveDosePeriod",
        "valuePeriod" : {
          "start" : "2026-03-19"
        }
      },
      {
        "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.renderedDosageInstruction",
        "valueMarkdown" : "1-1-1-1 | 4x täglich 1000 mg"
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
        "reference" : "#contained-medication-journey-06-02-02-wirkstoff"
      },
      "subject" : {
        "reference" : "Patient/At-Emed-Example-Patient-01",
        "display" : "Anton Mustermann"
      },
      "authoredOn" : "2026-03-19T12:10:00+00:00",
      "requester" : {
        "reference" : "PractitionerRole/At-Emed-Example-PractitionerRole-03",
        "display" : "Dr. Krankenhaus"
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
            "frequency" : 4,
            "period" : 1,
            "periodUnit" : "d",
            "when" : ["MORN", "NOON", "EVE", "NIGHT"]
          }
        },
        "doseAndRate" : [{
          "doseQuantity" : {
            "value" : 1000,
            "unit" : "MilliGram",
            "system" : "http://unitsofmeasure.org",
            "code" : "mg"
          }
        }]
      }]
    },
    "request" : {
      "method" : "POST",
      "url" : "MedicationRequest/6852930e-6883-4301-b5c1-c142b746af8f"
    }
  }]
}

```
