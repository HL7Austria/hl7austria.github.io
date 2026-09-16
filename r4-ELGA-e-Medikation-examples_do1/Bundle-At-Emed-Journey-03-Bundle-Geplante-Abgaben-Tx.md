# HL7.AT.FHIR.ELGA.EMED.R4\Beispiel Journey 03: Transaction Bundle - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel Journey 03: Transaction Bundle**

## Example Bundle: Beispiel Journey 03: Transaction Bundle



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "At-Emed-Journey-03-Bundle-Geplante-Abgaben-Tx",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-bundle-geplanteabgaben-tx"]
  },
  "type" : "transaction",
  "timestamp" : "2026-02-27T10:20:00+00:00",
  "entry" : [{
    "resource" : {
      "resourceType" : "MedicationRequest",
      "id" : "At-Emed-Journey-03-Mr-Geplante-Abgabe-01",
      "meta" : {
        "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medicationrequest-geplanteabgabe"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationRequest_At-Emed-Journey-03-Mr-Geplante-Abgabe-01\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationRequest At-Emed-Journey-03-Mr-Geplante-Abgabe-01</b></p><a name=\"At-Emed-Journey-03-Mr-Geplante-Abgabe-01\"> </a><a name=\"hcAt-Emed-Journey-03-Mr-Geplante-Abgabe-01\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-elga-emed-medicationrequest-geplanteabgabe.html\">At ELGA e-Medikation MedicationRequest Geplante Abgabe</a></p></div><p><b>R5: Period over which the medication is to be taken (new)</b>: 2026-02-27 --&gt; (ongoing)</p><p><b>R5: Full representation of the dosage instructions (new)</b>: </p><div><p>1-0-0-1 | Täglich: 1-0-0-0</p>\n</div><p><b>status</b>: Active</p><p><b>intent</b>: Order</p><p><b>category</b>: <span title=\"Codes:{https://fhir.hl7.at/elga/emed/r4/CodeSystem/MedicationRequestCategoryCS 2}\">Geplante Abgabe</span>, <span title=\"Codes:{https://termgit.elga.gv.at/CodeSystem/medikationrezeptart 1}\">Kassenrezept</span></p><p><b>medication</b>: <a href=\"#hcAt-Emed-Journey-03-Mr-Geplante-Abgabe-01/contained-medication-journey-03-01\">Medication RAMIPRIL HEX TBL 5MG</a></p><p><b>subject</b>: <a href=\"Patient-At-Emed-Example-Patient-01.html\">Anton Mustermann  Male, DoB: 1900-01-01 ( Social Security number: 1234010100)</a></p><p><b>authoredOn</b>: 2026-02-27 08:10:00+0000</p><p><b>requester</b>: <a href=\"Practitioner-At-Emed-Example-Practitioner-01.html\">Practitioner Melanie Hausärztin </a></p><p><b>basedOn</b>: <a href=\"MedicationRequest-At-Emed-Journey-02-Mr-Planeintrag-01.html\">Planeintrag 1</a></p><p><b>groupIdentifier</b>: WYE82A2G8EEW</p><blockquote><p><b>dosageInstruction</b></p><p><b>AT ELGA e-Medikation Extension Dosierungskategorie</b>: <span title=\"Codes:{https://fhir.hl7.at/elga/emed/r4/CodeSystem/AtElgaEmedCodeSystemDosageCategory standard}\">Standard Administration</span></p><p><b>sequence</b>: 1</p><p><b>patientInstruction</b>: Nehmen Sie die Tablette vor dem Essen mit ausreichend Flüssigkeit ein.</p><p><b>timing</b>: Morning, Once per 1 day</p><p><b>route</b>: <span title=\"Codes:{https://termgit.elga.gv.at/CodeSystem/medikationartanwendung 100000073619}\">zum Einnehmen</span></p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td> Stück<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code{Stueck} = '{Stueck}')</span></td></tr></table></blockquote><h3>DispenseRequests</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>ValidityPeriod</b></td><td><b>NumberOfRepeatsAllowed</b></td><td><b>Quantity</b></td></tr><tr><td style=\"display: none\">*</td><td>?? --&gt; 2026-03-27</td><td>0</td><td>1 Packung</td></tr></table><hr/><blockquote><p class=\"res-header-id\"><b>Generated Narrative: Medication #contained-medication-journey-03-01</b></p><a name=\"At-Emed-Journey-03-Mr-Geplante-Abgabe-01/contained-medication-journey-03-01\"> </a><a name=\"hcAt-Emed-Journey-03-Mr-Geplante-Abgabe-01/contained-medication-journey-03-01\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-elga-emed-medication-medikation.html\">AT ELGA e-Medikation Medication Medikation</a></p></div><p><b>code</b>: <span title=\"Codes:{https://termgit.elga.gv.at/CodeSystem/asp-liste 2450836}\">RAMIPRIL HEX TBL 5MG</span></p></blockquote></div>"
      },
      "contained" : [{
        "resourceType" : "Medication",
        "id" : "contained-medication-journey-03-01",
        "meta" : {
          "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medication-medikation"]
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
          "code" : "1",
          "display" : "Kassenrezept"
        }]
      }],
      "medicationReference" : {
        "reference" : "#contained-medication-journey-03-01"
      },
      "subject" : {
        "reference" : "Patient/At-Emed-Example-Patient-01"
      },
      "authoredOn" : "2026-02-27T08:10:00+00:00",
      "requester" : {
        "reference" : "Practitioner/At-Emed-Example-Practitioner-01"
      },
      "basedOn" : [{
        "reference" : "MedicationRequest/At-Emed-Journey-02-Mr-Planeintrag-01",
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
    "resource" : {
      "resourceType" : "MedicationRequest",
      "id" : "At-Emed-Journey-03-Mr-Geplante-Abgabe-02",
      "meta" : {
        "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medicationrequest-geplanteabgabe"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationRequest_At-Emed-Journey-03-Mr-Geplante-Abgabe-02\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationRequest At-Emed-Journey-03-Mr-Geplante-Abgabe-02</b></p><a name=\"At-Emed-Journey-03-Mr-Geplante-Abgabe-02\"> </a><a name=\"hcAt-Emed-Journey-03-Mr-Geplante-Abgabe-02\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-elga-emed-medicationrequest-geplanteabgabe.html\">At ELGA e-Medikation MedicationRequest Geplante Abgabe</a></p></div><p><b>R5: Period over which the medication is to be taken (new)</b>: 2026-02-27 --&gt; 2026-03-20</p><p><b>R5: Full representation of the dosage instructions (new)</b>: </p><div><p>1-0-1-0 | Täglich 1-0-1-0</p>\n</div><p><b>status</b>: Active</p><p><b>intent</b>: Order</p><p><b>category</b>: <span title=\"Codes:{https://fhir.hl7.at/elga/emed/r4/CodeSystem/MedicationRequestCategoryCS 2}\">Geplante Abgabe</span>, <span title=\"Codes:{https://termgit.elga.gv.at/CodeSystem/medikationrezeptart 1}\">Kassenrezept</span></p><p><b>medication</b>: <code>contained-medication-journey-03-02-magistral&quot;</code></p><p><b>subject</b>: <a href=\"Patient-At-Emed-Example-Patient-01.html\">Anton Mustermann  Male, DoB: 1900-01-01 ( Social Security number: 1234010100)</a></p><p><b>authoredOn</b>: 2026-02-27 10:20:00+0000</p><p><b>requester</b>: <a href=\"Practitioner-At-Emed-Example-Practitioner-01.html\">Practitioner Melanie Hausärztin </a></p><p><b>basedOn</b>: <a href=\"MedicationRequest-At-Emed-Journey-02-Mr-Planeintrag-02.html\">Planeintrag 2</a></p><p><b>groupIdentifier</b>: WYE82A2G8EEW</p><h3>DosageInstructions</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Extension</b></td><td><b>Sequence</b></td><td><b>Timing</b></td><td><b>Route</b></td></tr><tr><td style=\"display: none\">*</td><td/><td>1</td><td>Morning, Evening, 2 per 1 day</td><td><span title=\"Codes:{https://termgit.elga.gv.at/CodeSystem-medikationartanwendung.html 100000073566}\">Anwendung auf der Haut</span></td></tr></table><h3>DispenseRequests</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>ValidityPeriod</b></td><td><b>NumberOfRepeatsAllowed</b></td><td><b>Quantity</b></td></tr><tr><td style=\"display: none\">*</td><td>?? --&gt; 2026-03-27</td><td>0</td><td>1 Packung</td></tr></table><hr/><blockquote><p class=\"res-header-id\"><b>Generated Narrative: Medication #contained-medication-journey-03-02-magistral</b></p><a name=\"At-Emed-Journey-03-Mr-Geplante-Abgabe-02/contained-medication-journey-03-02-magistral\"> </a><a name=\"hcAt-Emed-Journey-03-Mr-Geplante-Abgabe-02/contained-medication-journey-03-02-magistral\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-elga-emed-medication-medikation.html\">AT ELGA e-Medikation Medication Medikation</a></p></div><p><b>form</b>: <span title=\"Codes:{https://termgit.elga.gv.at/CodeSystem/medikationdarreichungsform 100000073713}\">Salbe</span></p><blockquote><p><b>ingredient</b></p><p><b>item</b>: <span title=\"Codes:{https://termgit.elga.gv.at/CodeSystem/atc-deutsch-wido A11HA30}\">Dexpanthenol</span></p><p><b>strength</b>: 5 g<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codeg = 'g')</span>/100 g<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codeg = 'g')</span></p></blockquote><blockquote><p><b>ingredient</b></p><p><b>item</b>: <span title=\"Codes:\">Salbengrundlage</span></p><p><b>isActive</b>: false</p><p><b>strength</b>: 95 g/100 g</p></blockquote></blockquote></div>"
      },
      "contained" : [{
        "resourceType" : "Medication",
        "id" : "contained-medication-journey-03-02-magistral",
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
          "code" : "1",
          "display" : "Kassenrezept"
        }]
      }],
      "medicationReference" : {
        "reference" : "contained-medication-journey-03-02-magistral\""
      },
      "subject" : {
        "reference" : "Patient/At-Emed-Example-Patient-01"
      },
      "authoredOn" : "2026-02-27T10:20:00+00:00",
      "requester" : {
        "reference" : "Practitioner/At-Emed-Example-Practitioner-01"
      },
      "basedOn" : [{
        "reference" : "MedicationRequest/At-Emed-Journey-02-Mr-Planeintrag-02",
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
