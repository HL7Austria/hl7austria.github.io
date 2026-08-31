# HL7.AT.FHIR.ELGA.EMED.R4\Beispiel Journey 05-a: Medikationsplan-Searchset-Bundle mit geänderter Reihenfolge der Planeinträge. - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel Journey 05-a: Medikationsplan-Searchset-Bundle mit geänderter Reihenfolge der Planeinträge.**

## Example Bundle: Beispiel Journey 05-a: Medikationsplan-Searchset-Bundle mit geänderter Reihenfolge der Planeinträge.



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "At-Emed-Journey-05-a-Bundle-Medikationsplan",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-bundle-medikationsplan"]
  },
  "identifier" : {
    "system" : "http://system-to-be-defined.com",
    "value" : "63fef90a-be11-4ddf-aece-d77da15c4f20"
  },
  "type" : "collection",
  "timestamp" : "2026-03-05T12:20:00+00:00",
  "entry" : [{
    "fullUrl" : "urn:uuid:62e2daa5-c34b-4b97-8044-fd893bc99a56",
    "resource" : {
      "resourceType" : "List",
      "id" : "At-Emed-Journey-05-a-List-Reihenfolge",
      "meta" : {
        "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-list-medikationsplan"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"List_At-Emed-Journey-05-a-List-Reihenfolge\"> </a><p class=\"res-header-id\"><b>Generated Narrative: List At-Emed-Journey-05-a-List-Reihenfolge</b></p><a name=\"At-Emed-Journey-05-a-List-Reihenfolge\"> </a><a name=\"hcAt-Emed-Journey-05-a-List-Reihenfolge\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-elga-emed-list-medikationsplan.html\">AT ELGA e-Medikation List Medikationsplan</a></p></div><table class=\"clstu\"><tr><td>Date: 2026-03-05 12:20:00+0000 </td><td>Mode: Working List </td><td>Status: Current </td><td>Code: Medikationsplan </td></tr><tr><td>Subject: <a href=\"Patient-At-Emed-Example-Patient-01.html\">Max Mustermann  Male, DoB: 1900-01-01 ( Social Security number: 1234010100)</a>Source: </td></tr></table><table class=\"grid\"><tr style=\"backgound-color: #eeeeee\"><td><b>Items</b></td><td>Flag</td></tr><tr><td><a href=\"MedicationRequest-At-Emed-Journey-02-Mr-Planeintrag-02.html\">MedicationRequest: extension = 2026-02-27 --&gt; 2026-03-16,1 täglich auftragen; identifier = 4713_202602280800000; status = active; intent = order; category = Medikationsplaneintrag; reported[x] = false; medication[x] = -&gt;Medication: form = Salbe; authoredOn = 2026-02-27 10:20:00+0000; courseOfTherapyType = Short course (acute) therapy</a></td><td>Neuer Planeintrag</td></tr><tr><td><a href=\"MedicationRequest-At-Emed-Journey-02-Mr-Planeintrag-01.html\">MedicationRequest: extension = 2026-02-27 --&gt; (ongoing),1-0-1-0 Stück; identifier = 4712_202602280800000; status = active; intent = order; category = Medikationsplaneintrag; reported[x] = false; medication[x] = -&gt;Medication EBETREXAT TBL 10MG; authoredOn = 2026-02-27 10:20:00+0000; courseOfTherapyType = Continuous long term therapy; note = Freitext Informationen zum Medikationsplaneintrag.</a></td><td>Neuer Planeintrag</td></tr></table></div>"
      },
      "identifier" : [{
        "value" : "123"
      }],
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
      "date" : "2026-03-05T12:20:00+00:00",
      "source" : {
        "reference" : "Patient/At-Emed-Example-Patient-01"
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
          "reference" : "MedicationRequest/At-Emed-Journey-02-Mr-Planeintrag-02"
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
          "reference" : "MedicationRequest/At-Emed-Journey-02-Mr-Planeintrag-01"
        }
      }]
    }
  },
  {
    "fullUrl" : "urn:uuid:62e2daa5-c34b-4b97-8044-fd893bc99a57",
    "resource" : {
      "resourceType" : "MedicationRequest",
      "id" : "At-Emed-Journey-02-Mr-Planeintrag-01",
      "meta" : {
        "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medicationrequest-planeintrag"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationRequest_At-Emed-Journey-02-Mr-Planeintrag-01\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationRequest At-Emed-Journey-02-Mr-Planeintrag-01</b></p><a name=\"At-Emed-Journey-02-Mr-Planeintrag-01\"> </a><a name=\"hcAt-Emed-Journey-02-Mr-Planeintrag-01\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-elga-emed-medicationrequest-planeintrag.html\">At ELGA e-Medikation MedicationRequest Planeintrag</a></p></div><p><b>R5: Period over which the medication is to be taken (new)</b>: 2026-02-27 --&gt; (ongoing)</p><p><b>R5: Full representation of the dosage instructions (new)</b>: </p><div><p>1-0-1-0 Stück</p>\n</div><p><b>identifier</b>: 4712_202602280800000</p><p><b>status</b>: Active</p><p><b>intent</b>: Order</p><p><b>category</b>: <span title=\"Codes:{https://fhir.hl7.at/elga/emed/r4/CodeSystem/MedicationRequestCategoryCS 1}\">Medikationsplaneintrag</span></p><p><b>reported</b>: false</p><p><b>medication</b>: <a href=\"#hcAt-Emed-Journey-02-Mr-Planeintrag-01/contained-medication-journey-02-01\">Medication EBETREXAT TBL 10MG</a></p><p><b>subject</b>: <a href=\"Patient-At-Emed-Example-Patient-01.html\">Max Mustermann  Male, DoB: 1900-01-01 ( Social Security number: 1234010100)</a></p><p><b>authoredOn</b>: 2026-02-27 10:20:00+0000</p><p><b>requester</b>: <a href=\"Practitioner-At-Emed-Example-Practitioner-01.html\">Practitioner Melanie Musterärztin </a></p><p><b>courseOfTherapyType</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/medicationrequest-course-of-therapy continuous}\">Continuous long term therapy</span></p><p><b>note</b>: </p><blockquote><div><p>Freitext Informationen zum Medikationsplaneintrag.</p>\n</div></blockquote><blockquote><p><b>dosageInstruction</b></p><p><b>AT ELGA e-Medikation Extension Dosierungskategorie</b>: <span title=\"Codes:{https://fhir.hl7.at/elga/emed/r4/CodeSystem/AtElgaEmedCodeSystemDosageCategory other}\">Other</span></p><p><b>sequence</b>: 1</p><p><b>patientInstruction</b>: Nehmen Sie die Kapsel nach dem Essen mit ausreichend Flüssigkeit ein.</p><p><b>timing</b>: before breakfast, before dinner, 2 per 1 day</p><p><b>route</b>: <span title=\"Codes:{https://termgit.elga.gv.at/CodeSystem/medikationartanwendung 100000073619}\">zum Einnehmen</span></p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td> Stück<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code{Stueck} = '{Stueck}')</span></td></tr></table></blockquote><hr/><blockquote><p class=\"res-header-id\"><b>Generated Narrative: Medication #contained-medication-journey-02-01</b></p><a name=\"At-Emed-Journey-02-Mr-Planeintrag-01/contained-medication-journey-02-01\"> </a><a name=\"hcAt-Emed-Journey-02-Mr-Planeintrag-01/contained-medication-journey-02-01\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-elga-emed-medication-medikation.html\">AT ELGA e-Medikation Medication Medikation</a></p></div><p><b>code</b>: <span title=\"Codes:{https://termgit.elga.gv.at/CodeSystem/asp-liste 2443061}\">EBETREXAT TBL 10MG</span></p></blockquote></div>"
      },
      "contained" : [{
        "resourceType" : "Medication",
        "id" : "contained-medication-journey-02-01",
        "meta" : {
          "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medication-medikation"]
        },
        "code" : {
          "coding" : [{
            "system" : "https://termgit.elga.gv.at/CodeSystem/asp-liste",
            "code" : "2443061",
            "display" : "EBETREXAT TBL 10MG"
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
        "valueMarkdown" : "1-0-1-0 Stück"
      }],
      "identifier" : [{
        "value" : "4712_202602280800000"
      }],
      "status" : "active",
      "intent" : "order",
      "category" : [{
        "coding" : [{
          "system" : "https://fhir.hl7.at/elga/emed/r4/CodeSystem/MedicationRequestCategoryCS",
          "code" : "1",
          "display" : "Medikationsplaneintrag"
        }]
      }],
      "reportedBoolean" : false,
      "medicationReference" : {
        "reference" : "#contained-medication-journey-02-01"
      },
      "subject" : {
        "reference" : "Patient/At-Emed-Example-Patient-01"
      },
      "authoredOn" : "2026-02-27T10:20:00+00:00",
      "requester" : {
        "reference" : "Practitioner/At-Emed-Example-Practitioner-01"
      },
      "courseOfTherapyType" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/medicationrequest-course-of-therapy",
          "code" : "continuous"
        }]
      },
      "note" : [{
        "text" : "Freitext Informationen zum Medikationsplaneintrag."
      }],
      "dosageInstruction" : [{
        "extension" : [{
          "url" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-extension-dosage-category",
          "valueCodeableConcept" : {
            "coding" : [{
              "system" : "https://fhir.hl7.at/elga/emed/r4/CodeSystem/AtElgaEmedCodeSystemDosageCategory",
              "code" : "other"
            }]
          }
        }],
        "sequence" : 1,
        "patientInstruction" : "Nehmen Sie die Kapsel nach dem Essen mit ausreichend Flüssigkeit ein.",
        "timing" : {
          "repeat" : {
            "frequency" : 2,
            "period" : 1,
            "periodUnit" : "d",
            "when" : ["ACM", "ACV"]
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
  },
  {
    "fullUrl" : "urn:uuid:62e2daa5-c34b-4b97-8044-fd893bc99a58",
    "resource" : {
      "resourceType" : "MedicationRequest",
      "id" : "At-Emed-Journey-02-Mr-Planeintrag-02",
      "meta" : {
        "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medicationrequest-planeintrag"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationRequest_At-Emed-Journey-02-Mr-Planeintrag-02\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationRequest At-Emed-Journey-02-Mr-Planeintrag-02</b></p><a name=\"At-Emed-Journey-02-Mr-Planeintrag-02\"> </a><a name=\"hcAt-Emed-Journey-02-Mr-Planeintrag-02\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-elga-emed-medicationrequest-planeintrag.html\">At ELGA e-Medikation MedicationRequest Planeintrag</a></p></div><p><b>R5: Period over which the medication is to be taken (new)</b>: 2026-02-27 --&gt; 2026-03-16</p><p><b>R5: Full representation of the dosage instructions (new)</b>: </p><div><p>1 täglich auftragen</p>\n</div><p><b>identifier</b>: 4713_202602280800000</p><p><b>status</b>: Active</p><p><b>intent</b>: Order</p><p><b>category</b>: <span title=\"Codes:{https://fhir.hl7.at/elga/emed/r4/CodeSystem/MedicationRequestCategoryCS 1}\">Medikationsplaneintrag</span></p><p><b>reported</b>: false</p><p><b>medication</b>: <a href=\"#hcAt-Emed-Journey-02-Mr-Planeintrag-02/contained-medication-journey-02-magistral\">Medication: form = Salbe</a></p><p><b>subject</b>: <a href=\"Patient-At-Emed-Example-Patient-01.html\">Max Mustermann  Male, DoB: 1900-01-01 ( Social Security number: 1234010100)</a></p><p><b>authoredOn</b>: 2026-02-27 10:20:00+0000</p><p><b>requester</b>: <a href=\"Practitioner-At-Emed-Example-Practitioner-01.html\">Practitioner Melanie Musterärztin </a></p><p><b>courseOfTherapyType</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/medicationrequest-course-of-therapy acute}\">Short course (acute) therapy</span></p><h3>DosageInstructions</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Extension</b></td><td><b>Sequence</b></td><td><b>PatientInstruction</b></td><td><b>Timing</b></td><td><b>Route</b></td></tr><tr><td style=\"display: none\">*</td><td/><td>1</td><td>Abends sehr dünn auf die betroffene Stelle auftragen.</td><td>Once per 1 day</td><td><span title=\"Codes:{https://termgit.elga.gv.at/CodeSystem-medikationartanwendung.html 100000073566}\">Anwendung auf der Haut</span></td></tr></table><hr/><blockquote><p class=\"res-header-id\"><b>Generated Narrative: Medication #contained-medication-journey-02-magistral</b></p><a name=\"At-Emed-Journey-02-Mr-Planeintrag-02/contained-medication-journey-02-magistral\"> </a><a name=\"hcAt-Emed-Journey-02-Mr-Planeintrag-02/contained-medication-journey-02-magistral\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-elga-emed-medication-medikation.html\">AT ELGA e-Medikation Medication Medikation</a></p></div><p><b>form</b>: <span title=\"Codes:{https://termgit.elga.gv.at/CodeSystem/medikationdarreichungsform 100000073713}\">Salbe</span></p><blockquote><p><b>ingredient</b></p><p><b>item</b>: <span title=\"Codes:{https://termgit.elga.gv.at/CodeSystem/atc-deutsch-wido A01AC03}\">Hydrocortison</span></p><p><b>strength</b>: 1 %<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code% = '%')</span>/100 g<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codeg = 'g')</span></p></blockquote><blockquote><p><b>ingredient</b></p><p><b>item</b>: <span title=\"Codes:{https://termgit.elga.gv.at/CodeSystem/atc-deutsch-wido A01AB18}\">Clotrimazol</span></p><p><b>strength</b>: 1 %<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code% = '%')</span>/100 g<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codeg = 'g')</span></p></blockquote><blockquote><p><b>ingredient</b></p><p><b>item</b>: <span title=\"Codes:\">Salbengrundlage</span></p><p><b>isActive</b>: false</p><p><b>strength</b>: 98 g/100 g</p></blockquote></blockquote></div>"
      },
      "contained" : [{
        "resourceType" : "Medication",
        "id" : "contained-medication-journey-02-magistral",
        "meta" : {
          "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medication-medikation"]
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
              "code" : "A01AC03",
              "display" : "Hydrocortison"
            }]
          },
          "strength" : {
            "numerator" : {
              "value" : 1,
              "unit" : "%",
              "system" : "http://unitsofmeasure.org",
              "code" : "%"
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
            "coding" : [{
              "system" : "https://termgit.elga.gv.at/CodeSystem/atc-deutsch-wido",
              "code" : "A01AB18",
              "display" : "Clotrimazol"
            }]
          },
          "strength" : {
            "numerator" : {
              "value" : 1,
              "unit" : "%",
              "system" : "http://unitsofmeasure.org",
              "code" : "%"
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
              "value" : 98,
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
          "end" : "2026-03-16"
        }
      },
      {
        "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.renderedDosageInstruction",
        "valueMarkdown" : "1 täglich auftragen"
      }],
      "identifier" : [{
        "value" : "4713_202602280800000"
      }],
      "status" : "active",
      "intent" : "order",
      "category" : [{
        "coding" : [{
          "system" : "https://fhir.hl7.at/elga/emed/r4/CodeSystem/MedicationRequestCategoryCS",
          "code" : "1",
          "display" : "Medikationsplaneintrag"
        }]
      }],
      "reportedBoolean" : false,
      "medicationReference" : {
        "reference" : "#contained-medication-journey-02-magistral"
      },
      "subject" : {
        "reference" : "Patient/At-Emed-Example-Patient-01"
      },
      "authoredOn" : "2026-02-27T10:20:00+00:00",
      "requester" : {
        "reference" : "Practitioner/At-Emed-Example-Practitioner-01"
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
              "code" : "other"
            }]
          }
        }],
        "sequence" : 1,
        "patientInstruction" : "Abends sehr dünn auf die betroffene Stelle auftragen.",
        "timing" : {
          "repeat" : {
            "frequency" : 1,
            "period" : 1,
            "periodUnit" : "d"
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
    }
  }]
}

```
