# HL7.AT.FHIR.ELGA.EMED.R4\Beispiel Collection Bundle: Medikationsplan mit Dosierungsvarianten - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel Collection Bundle: Medikationsplan mit Dosierungsvarianten**

## Example Bundle: Beispiel Collection Bundle: Medikationsplan mit Dosierungsvarianten



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "At-Emed-Example-Bundle-Medikationsplan-Dosierungsvarianten",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-bundle-medikationsplan"]
  },
  "identifier" : {
    "system" : "http://system-to-be-defined.com",
    "value" : "63fef90a-be11-4ddf-aece-d77da15c4f20"
  },
  "type" : "collection",
  "timestamp" : "2026-01-28T08:00:00+00:00",
  "entry" : [{
    "fullUrl" : "urn:uuid:62e2daa5-c34b-4b97-8044-fd893bc99a56",
    "resource" : {
      "resourceType" : "List",
      "id" : "At-Emed-Example-List-Medikationsplan-Dosierungsvarianten",
      "meta" : {
        "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-list-medikationsplan"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"List_At-Emed-Example-List-Medikationsplan-Dosierungsvarianten\"> </a><p class=\"res-header-id\"><b>Generated Narrative: List At-Emed-Example-List-Medikationsplan-Dosierungsvarianten</b></p><a name=\"At-Emed-Example-List-Medikationsplan-Dosierungsvarianten\"> </a><a name=\"hcAt-Emed-Example-List-Medikationsplan-Dosierungsvarianten\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-emed-list-medikationsplan.html\">ELGA e-Med Medikationsplan</a></p></div><table class=\"clstu\"><tr><td>Date: 2026-02-27 10:20:00+0000 </td><td>Mode: Working List </td><td>Status: Current </td><td>Code: Medikationsplan </td></tr><tr><td>Subject: <a href=\"Patient-At-Emed-Example-Patient-01.html\">Max Mustermann  Male, DoB: 1900-01-01 ( Social Security number: 1234010100)</a>Source: Order: Sorted by User </td></tr></table><table class=\"grid\"><tr style=\"backgound-color: #eeeeee\"><td><b>Items</b></td><td>Date</td><td>Flag</td></tr><tr><td><a href=\"MedicationRequest-At-Emed-Example-Mr-Dosierung-Freitext.html\">MedicationRequest: extension = 2 Stück morgens zum Frühstück; identifier = 4719_202602280800000; status = active; intent = order; category = Medikationsplaneintrag; reported[x] = false; medication[x] = -&gt;Medication EBETREXAT TBL 10MG; authoredOn = 2026-02-27 10:20:00+0000</a></td><td>2026-02-27 10:20:00+0000</td><td>Prescribed</td></tr><tr><td><a href=\"MedicationRequest-At-Emed-Example-Mr-Dosierung-1010.html\">MedicationRequest: extension = 1-0-1-0 Stück; identifier = 4712_202602280800000; status = active; intent = order; category = Medikationsplaneintrag; reported[x] = false; medication[x] = -&gt;Medication EBETREXAT TBL 10MG; authoredOn = 2026-02-27 10:20:00+0000</a></td><td>2026-02-27 10:20:00+0000</td><td>Prescribed</td></tr><tr><td><a href=\"MedicationRequest-At-Emed-Example-Mr-Dosierung-Zeit-1tg.html\">MedicationRequest: extension = täglich: 08:00 Uhr — je 1 Stück; identifier = 4712_202602280800000; status = active; intent = order; category = Medikationsplaneintrag; reported[x] = false; medication[x] = -&gt;Medication EBETREXAT TBL 10MG; authoredOn = 2026-02-27 10:20:00+0000</a></td><td>2026-02-27 10:20:00+0000</td><td>Prescribed</td></tr><tr><td><a href=\"MedicationRequest-At-Emed-Example-Mr-Dosierung-Wochentag.html\">MedicationRequest: extension = dienstags — 2 Stück; donnerstags — 2 Stück; identifier = 4712_202602280800000; status = active; intent = order; category = Medikationsplaneintrag; reported[x] = false; medication[x] = -&gt;Medication EBETREXAT TBL 10MG; authoredOn = 2026-02-27 10:20:00+0000</a></td><td>2026-02-27 10:20:00+0000</td><td>Prescribed</td></tr><tr><td><a href=\"MedicationRequest-At-Emed-Example-Mr-Dosierung-Intervalle-Wh.html\">MedicationRequest: extension = alle 8 Tage: je 1 Stück; identifier = 4712_202602280800000; status = active; intent = order; category = Medikationsplaneintrag; reported[x] = false; medication[x] = -&gt;Medication EBETREXAT TBL 10MG; authoredOn = 2026-02-27 10:20:00+0000</a></td><td>2026-02-27 10:20:00+0000</td><td>Prescribed</td></tr><tr><td><a href=\"MedicationRequest-At-Emed-Example-Mr-Dosierung-Zeitintervalle-Kombi.html\">MedicationRequest: extension = alle 2 Tage: 08:00 Uhr — je 1 Stück; 18:00 Uhr — je 2 Stück; identifier = 4712_202602280800000; status = active; intent = order; category = Medikationsplaneintrag; reported[x] = false; medication[x] = -&gt;Medication EBETREXAT TBL 10MG; authoredOn = 2026-02-27 10:20:00+0000</a></td><td>2026-02-27 10:20:00+0000</td><td>Prescribed</td></tr><tr><td><a href=\"MedicationRequest-At-Emed-Example-Mr-Dosierung-Wochentag-Kombi.html\">MedicationRequest: extension = montags 1-0-1-0 Stück; freitags 1-0-1-0 Stück; identifier = 4712_202602280800000; status = active; intent = order; category = Medikationsplaneintrag; reported[x] = false; medication[x] = -&gt;Medication EBETREXAT TBL 10MG; authoredOn = 2026-02-27 10:20:00+0000</a></td><td>2026-02-27 10:20:00+0000</td><td>Prescribed</td></tr></table></div>"
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
      "date" : "2026-02-27T10:20:00+00:00",
      "source" : {
        "reference" : "Practitioner/At-Emed-Example-Practitioner-01"
      },
      "orderedBy" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/list-order",
          "code" : "user"
        }]
      },
      "entry" : [{
        "flag" : {
          "coding" : [{
            "system" : "urn:oid:1.2.36.1.2001.1001.101.104.16592",
            "code" : "04",
            "display" : "Prescribed"
          }]
        },
        "date" : "2026-02-27T10:20:00+00:00",
        "item" : {
          "reference" : "MedicationRequest/At-Emed-Example-Mr-Dosierung-Freitext"
        }
      },
      {
        "flag" : {
          "coding" : [{
            "system" : "urn:oid:1.2.36.1.2001.1001.101.104.16592",
            "code" : "04",
            "display" : "Prescribed"
          }]
        },
        "date" : "2026-02-27T10:20:00+00:00",
        "item" : {
          "reference" : "MedicationRequest/At-Emed-Example-Mr-Dosierung-1010"
        }
      },
      {
        "flag" : {
          "coding" : [{
            "system" : "urn:oid:1.2.36.1.2001.1001.101.104.16592",
            "code" : "04",
            "display" : "Prescribed"
          }]
        },
        "date" : "2026-02-27T10:20:00+00:00",
        "item" : {
          "reference" : "MedicationRequest/At-Emed-Example-Mr-Dosierung-Zeit-1tg"
        }
      },
      {
        "flag" : {
          "coding" : [{
            "system" : "urn:oid:1.2.36.1.2001.1001.101.104.16592",
            "code" : "04",
            "display" : "Prescribed"
          }]
        },
        "date" : "2026-02-27T10:20:00+00:00",
        "item" : {
          "reference" : "MedicationRequest/At-Emed-Example-Mr-Dosierung-Wochentag"
        }
      },
      {
        "flag" : {
          "coding" : [{
            "system" : "urn:oid:1.2.36.1.2001.1001.101.104.16592",
            "code" : "04",
            "display" : "Prescribed"
          }]
        },
        "date" : "2026-02-27T10:20:00+00:00",
        "item" : {
          "reference" : "MedicationRequest/At-Emed-Example-Mr-Dosierung-Intervalle-Wh"
        }
      },
      {
        "flag" : {
          "coding" : [{
            "system" : "urn:oid:1.2.36.1.2001.1001.101.104.16592",
            "code" : "04",
            "display" : "Prescribed"
          }]
        },
        "date" : "2026-02-27T10:20:00+00:00",
        "item" : {
          "reference" : "MedicationRequest/At-Emed-Example-Mr-Dosierung-Zeitintervalle-Kombi"
        }
      },
      {
        "flag" : {
          "coding" : [{
            "system" : "urn:oid:1.2.36.1.2001.1001.101.104.16592",
            "code" : "04",
            "display" : "Prescribed"
          }]
        },
        "date" : "2026-02-27T10:20:00+00:00",
        "item" : {
          "reference" : "MedicationRequest/At-Emed-Example-Mr-Dosierung-Wochentag-Kombi"
        }
      }]
    }
  },
  {
    "fullUrl" : "urn:uuid:62e2daa5-c34b-4b97-8044-fd893bc99a57",
    "resource" : {
      "resourceType" : "MedicationRequest",
      "id" : "At-Emed-Example-Mr-Dosierung-Freitext",
      "meta" : {
        "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-mr-planeintrag"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationRequest_At-Emed-Example-Mr-Dosierung-Freitext\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationRequest At-Emed-Example-Mr-Dosierung-Freitext</b></p><a name=\"At-Emed-Example-Mr-Dosierung-Freitext\"> </a><a name=\"hcAt-Emed-Example-Mr-Dosierung-Freitext\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-emed-mr-planeintrag.html\">ELGA e-Med Planeintrag</a></p></div><p><b>Extension Definition for MedicationRequest.renderedDosageInstruction for Version 5.0</b>: </p><div><p>2 Stück morgens zum Frühstück</p>\n</div><p><b>identifier</b>: 4719_202602280800000</p><p><b>status</b>: Active</p><p><b>intent</b>: Order</p><p><b>category</b>: <span title=\"Codes:{https://fhir.hl7.at/elga/emed/r4/CodeSystem/MedicationRequestCategoryCS 1}\">Medikationsplaneintrag</span></p><p><b>reported</b>: false</p><p><b>medication</b>: <a href=\"#hcAt-Emed-Example-Mr-Dosierung-Freitext/contained-medication-freitext-01\">Medication EBETREXAT TBL 10MG</a></p><p><b>subject</b>: <a href=\"Patient-At-Emed-Example-Patient-01.html\">Max Mustermann  Male, DoB: 1900-01-01 ( Social Security number: 1234010100)</a></p><p><b>authoredOn</b>: 2026-02-27 10:20:00+0000</p><p><b>requester</b>: <a href=\"Practitioner-At-Emed-Example-Practitioner-01.html\">Practitioner Melanie Musterärztin </a></p><h3>DosageInstructions</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Text</b></td></tr><tr><td style=\"display: none\">*</td><td>2 Stück morgens zum Frühstück</td></tr></table><hr/><blockquote><p class=\"res-header-id\"><b>Generated Narrative: Medication #contained-medication-freitext-01</b></p><a name=\"At-Emed-Example-Mr-Dosierung-Freitext/contained-medication-freitext-01\"> </a><a name=\"hcAt-Emed-Example-Mr-Dosierung-Freitext/contained-medication-freitext-01\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-emed-medication.html\">ELGA e-Med Medikation</a></p></div><p><b>code</b>: <span title=\"Codes:{https://termgit.elga.gv.at/CodeSystem/asp-liste 2443061}\">EBETREXAT TBL 10MG</span></p></blockquote></div>"
      },
      "contained" : [{
        "resourceType" : "Medication",
        "id" : "contained-medication-freitext-01",
        "meta" : {
          "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-medication"]
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
        "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.renderedDosageInstruction",
        "valueMarkdown" : "2 Stück morgens zum Frühstück"
      }],
      "identifier" : [{
        "value" : "4719_202602280800000"
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
        "reference" : "#contained-medication-freitext-01"
      },
      "subject" : {
        "reference" : "Patient/At-Emed-Example-Patient-01"
      },
      "authoredOn" : "2026-02-27T10:20:00+00:00",
      "requester" : {
        "reference" : "Practitioner/At-Emed-Example-Practitioner-01"
      },
      "dosageInstruction" : [{
        "text" : "2 Stück morgens zum Frühstück"
      }]
    }
  },
  {
    "fullUrl" : "urn:uuid:62e2daa5-c34b-4b97-8044-fd893bc99a58",
    "resource" : {
      "resourceType" : "MedicationRequest",
      "id" : "At-Emed-Example-Mr-Dosierung-1010",
      "meta" : {
        "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-mr-planeintrag"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationRequest_At-Emed-Example-Mr-Dosierung-1010\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationRequest At-Emed-Example-Mr-Dosierung-1010</b></p><a name=\"At-Emed-Example-Mr-Dosierung-1010\"> </a><a name=\"hcAt-Emed-Example-Mr-Dosierung-1010\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-emed-mr-planeintrag.html\">ELGA e-Med Planeintrag</a></p></div><p><b>Extension Definition for MedicationRequest.renderedDosageInstruction for Version 5.0</b>: </p><div><p>1-0-1-0 Stück</p>\n</div><p><b>identifier</b>: 4712_202602280800000</p><p><b>status</b>: Active</p><p><b>intent</b>: Order</p><p><b>category</b>: <span title=\"Codes:{https://fhir.hl7.at/elga/emed/r4/CodeSystem/MedicationRequestCategoryCS 1}\">Medikationsplaneintrag</span></p><p><b>reported</b>: false</p><p><b>medication</b>: <a href=\"#hcAt-Emed-Example-Mr-Dosierung-1010/contained-medication-1010-01\">Medication EBETREXAT TBL 10MG</a></p><p><b>subject</b>: <a href=\"Patient-At-Emed-Example-Patient-01.html\">Max Mustermann  Male, DoB: 1900-01-01 ( Social Security number: 1234010100)</a></p><p><b>authoredOn</b>: 2026-02-27 10:20:00+0000</p><p><b>requester</b>: <a href=\"Practitioner-At-Emed-Example-Practitioner-01.html\">Practitioner Melanie Musterärztin </a></p><blockquote><p><b>dosageInstruction</b></p><p><b>timing</b>: before breakfast, before dinner, 2 per 1 day</p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td> Stück<span style=\"background: LightGoldenRodYellow\"> (Details: ValueSet-elga-medikationmengenart  code{Stueck} = '{Stueck}')</span></td></tr></table></blockquote><hr/><blockquote><p class=\"res-header-id\"><b>Generated Narrative: Medication #contained-medication-1010-01</b></p><a name=\"At-Emed-Example-Mr-Dosierung-1010/contained-medication-1010-01\"> </a><a name=\"hcAt-Emed-Example-Mr-Dosierung-1010/contained-medication-1010-01\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-emed-medication.html\">ELGA e-Med Medikation</a></p></div><p><b>code</b>: <span title=\"Codes:{https://termgit.elga.gv.at/CodeSystem/asp-liste 2443061}\">EBETREXAT TBL 10MG</span></p></blockquote></div>"
      },
      "contained" : [{
        "resourceType" : "Medication",
        "id" : "contained-medication-1010-01",
        "meta" : {
          "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-medication"]
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
        "reference" : "#contained-medication-1010-01"
      },
      "subject" : {
        "reference" : "Patient/At-Emed-Example-Patient-01"
      },
      "authoredOn" : "2026-02-27T10:20:00+00:00",
      "requester" : {
        "reference" : "Practitioner/At-Emed-Example-Practitioner-01"
      },
      "dosageInstruction" : [{
        "timing" : {
          "repeat" : {
            "frequency" : 2,
            "period" : 1,
            "periodUnit" : "d",
            "when" : ["ACM", "ACV"]
          }
        },
        "doseAndRate" : [{
          "doseQuantity" : {
            "unit" : "Stück",
            "system" : "https://termgit.elga.gv.at/ValueSet-elga-medikationmengenart",
            "code" : "{Stueck}"
          }
        }]
      }]
    }
  },
  {
    "fullUrl" : "urn:uuid:62e2daa5-c34b-4b97-8044-fd893bc99a59",
    "resource" : {
      "resourceType" : "MedicationRequest",
      "id" : "At-Emed-Example-Mr-Dosierung-Zeit-1tg",
      "meta" : {
        "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-mr-planeintrag"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationRequest_At-Emed-Example-Mr-Dosierung-Zeit-1tg\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationRequest At-Emed-Example-Mr-Dosierung-Zeit-1tg</b></p><a name=\"At-Emed-Example-Mr-Dosierung-Zeit-1tg\"> </a><a name=\"hcAt-Emed-Example-Mr-Dosierung-Zeit-1tg\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-emed-mr-planeintrag.html\">ELGA e-Med Planeintrag</a></p></div><p><b>Extension Definition for MedicationRequest.renderedDosageInstruction for Version 5.0</b>: </p><div><p>täglich: 08:00 Uhr — je 1 Stück</p>\n</div><p><b>identifier</b>: 4712_202602280800000</p><p><b>status</b>: Active</p><p><b>intent</b>: Order</p><p><b>category</b>: <span title=\"Codes:{https://fhir.hl7.at/elga/emed/r4/CodeSystem/MedicationRequestCategoryCS 1}\">Medikationsplaneintrag</span></p><p><b>reported</b>: false</p><p><b>medication</b>: <a href=\"#hcAt-Emed-Example-Mr-Dosierung-Zeit-1tg/contained-medication-zeit-01\">Medication EBETREXAT TBL 10MG</a></p><p><b>subject</b>: <a href=\"Patient-At-Emed-Example-Patient-01.html\">Max Mustermann  Male, DoB: 1900-01-01 ( Social Security number: 1234010100)</a></p><p><b>authoredOn</b>: 2026-02-27 10:20:00+0000</p><p><b>requester</b>: <a href=\"Practitioner-At-Emed-Example-Practitioner-01.html\">Practitioner Melanie Musterärztin </a></p><blockquote><p><b>dosageInstruction</b></p><p><b>timing</b>: 2 per 1 day</p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td> Stück<span style=\"background: LightGoldenRodYellow\"> (Details: ValueSet-elga-medikationmengenart  code{Stueck} = '{Stueck}')</span></td></tr></table></blockquote><hr/><blockquote><p class=\"res-header-id\"><b>Generated Narrative: Medication #contained-medication-zeit-01</b></p><a name=\"At-Emed-Example-Mr-Dosierung-Zeit-1tg/contained-medication-zeit-01\"> </a><a name=\"hcAt-Emed-Example-Mr-Dosierung-Zeit-1tg/contained-medication-zeit-01\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-emed-medication.html\">ELGA e-Med Medikation</a></p></div><p><b>code</b>: <span title=\"Codes:{https://termgit.elga.gv.at/CodeSystem/asp-liste 2443061}\">EBETREXAT TBL 10MG</span></p></blockquote></div>"
      },
      "contained" : [{
        "resourceType" : "Medication",
        "id" : "contained-medication-zeit-01",
        "meta" : {
          "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-medication"]
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
        "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.renderedDosageInstruction",
        "valueMarkdown" : "täglich: 08:00 Uhr — je 1 Stück"
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
        "reference" : "#contained-medication-zeit-01"
      },
      "subject" : {
        "reference" : "Patient/At-Emed-Example-Patient-01"
      },
      "authoredOn" : "2026-02-27T10:20:00+00:00",
      "requester" : {
        "reference" : "Practitioner/At-Emed-Example-Practitioner-01"
      },
      "dosageInstruction" : [{
        "timing" : {
          "repeat" : {
            "frequency" : 2,
            "period" : 1,
            "periodUnit" : "d",
            "timeOfDay" : ["08:00:00"]
          }
        },
        "doseAndRate" : [{
          "doseQuantity" : {
            "unit" : "Stück",
            "system" : "https://termgit.elga.gv.at/ValueSet-elga-medikationmengenart",
            "code" : "{Stueck}"
          }
        }]
      }]
    }
  },
  {
    "fullUrl" : "urn:uuid:62e2daa5-c34b-4b97-8044-fd893bc99a60",
    "resource" : {
      "resourceType" : "MedicationRequest",
      "id" : "At-Emed-Example-Mr-Dosierung-Wochentag",
      "meta" : {
        "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-mr-planeintrag"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationRequest_At-Emed-Example-Mr-Dosierung-Wochentag\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationRequest At-Emed-Example-Mr-Dosierung-Wochentag</b></p><a name=\"At-Emed-Example-Mr-Dosierung-Wochentag\"> </a><a name=\"hcAt-Emed-Example-Mr-Dosierung-Wochentag\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-emed-mr-planeintrag.html\">ELGA e-Med Planeintrag</a></p></div><p><b>Extension Definition for MedicationRequest.renderedDosageInstruction for Version 5.0</b>: </p><div><p>dienstags — 2 Stück; donnerstags — 2 Stück</p>\n</div><p><b>identifier</b>: 4712_202602280800000</p><p><b>status</b>: Active</p><p><b>intent</b>: Order</p><p><b>category</b>: <span title=\"Codes:{https://fhir.hl7.at/elga/emed/r4/CodeSystem/MedicationRequestCategoryCS 1}\">Medikationsplaneintrag</span></p><p><b>reported</b>: false</p><p><b>medication</b>: <a href=\"#hcAt-Emed-Example-Mr-Dosierung-Wochentag/contained-medication-wochentag\">Medication EBETREXAT TBL 10MG</a></p><p><b>subject</b>: <a href=\"Patient-At-Emed-Example-Patient-01.html\">Max Mustermann  Male, DoB: 1900-01-01 ( Social Security number: 1234010100)</a></p><p><b>authoredOn</b>: 2026-02-27 10:20:00+0000</p><p><b>requester</b>: <a href=\"Practitioner-At-Emed-Example-Practitioner-01.html\">Practitioner Melanie Musterärztin </a></p><blockquote><p><b>dosageInstruction</b></p><p><b>timing</b>: 2 per 1 week</p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td> Stück<span style=\"background: LightGoldenRodYellow\"> (Details: ValueSet-elga-medikationmengenart  code{Stueck} = '{Stueck}')</span></td></tr></table></blockquote><hr/><blockquote><p class=\"res-header-id\"><b>Generated Narrative: Medication #contained-medication-wochentag</b></p><a name=\"At-Emed-Example-Mr-Dosierung-Wochentag/contained-medication-wochentag\"> </a><a name=\"hcAt-Emed-Example-Mr-Dosierung-Wochentag/contained-medication-wochentag\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-emed-medication.html\">ELGA e-Med Medikation</a></p></div><p><b>code</b>: <span title=\"Codes:{https://termgit.elga.gv.at/CodeSystem/asp-liste 2443061}\">EBETREXAT TBL 10MG</span></p></blockquote></div>"
      },
      "contained" : [{
        "resourceType" : "Medication",
        "id" : "contained-medication-wochentag",
        "meta" : {
          "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-medication"]
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
        "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.renderedDosageInstruction",
        "valueMarkdown" : "dienstags — 2 Stück; donnerstags — 2 Stück"
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
        "reference" : "#contained-medication-wochentag"
      },
      "subject" : {
        "reference" : "Patient/At-Emed-Example-Patient-01"
      },
      "authoredOn" : "2026-02-27T10:20:00+00:00",
      "requester" : {
        "reference" : "Practitioner/At-Emed-Example-Practitioner-01"
      },
      "dosageInstruction" : [{
        "timing" : {
          "repeat" : {
            "frequency" : 2,
            "period" : 1,
            "periodUnit" : "wk",
            "dayOfWeek" : ["tue", "thu"]
          }
        },
        "doseAndRate" : [{
          "doseQuantity" : {
            "unit" : "Stück",
            "system" : "https://termgit.elga.gv.at/ValueSet-elga-medikationmengenart",
            "code" : "{Stueck}"
          }
        }]
      }]
    }
  },
  {
    "fullUrl" : "urn:uuid:62e2daa5-c34b-4b97-8044-fd893bc99a61",
    "resource" : {
      "resourceType" : "MedicationRequest",
      "id" : "At-Emed-Example-Mr-Dosierung-Intervalle-Wh",
      "meta" : {
        "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-mr-planeintrag"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationRequest_At-Emed-Example-Mr-Dosierung-Intervalle-Wh\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationRequest At-Emed-Example-Mr-Dosierung-Intervalle-Wh</b></p><a name=\"At-Emed-Example-Mr-Dosierung-Intervalle-Wh\"> </a><a name=\"hcAt-Emed-Example-Mr-Dosierung-Intervalle-Wh\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-emed-mr-planeintrag.html\">ELGA e-Med Planeintrag</a></p></div><p><b>Extension Definition for MedicationRequest.renderedDosageInstruction for Version 5.0</b>: </p><div><p>alle 8 Tage: je 1 Stück</p>\n</div><p><b>identifier</b>: 4712_202602280800000</p><p><b>status</b>: Active</p><p><b>intent</b>: Order</p><p><b>category</b>: <span title=\"Codes:{https://fhir.hl7.at/elga/emed/r4/CodeSystem/MedicationRequestCategoryCS 1}\">Medikationsplaneintrag</span></p><p><b>reported</b>: false</p><p><b>medication</b>: <a href=\"#hcAt-Emed-Example-Mr-Dosierung-Intervalle-Wh/contained-medication-intervalle-wh\">Medication EBETREXAT TBL 10MG</a></p><p><b>subject</b>: <a href=\"Patient-At-Emed-Example-Patient-01.html\">Max Mustermann  Male, DoB: 1900-01-01 ( Social Security number: 1234010100)</a></p><p><b>authoredOn</b>: 2026-02-27 10:20:00+0000</p><p><b>requester</b>: <a href=\"Practitioner-At-Emed-Example-Practitioner-01.html\">Practitioner Melanie Musterärztin </a></p><blockquote><p><b>dosageInstruction</b></p><p><b>timing</b>: Once per 8 days</p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td> Stück<span style=\"background: LightGoldenRodYellow\"> (Details: ValueSet-elga-medikationmengenart  code{Stueck} = '{Stueck}')</span></td></tr></table></blockquote><hr/><blockquote><p class=\"res-header-id\"><b>Generated Narrative: Medication #contained-medication-intervalle-wh</b></p><a name=\"At-Emed-Example-Mr-Dosierung-Intervalle-Wh/contained-medication-intervalle-wh\"> </a><a name=\"hcAt-Emed-Example-Mr-Dosierung-Intervalle-Wh/contained-medication-intervalle-wh\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-emed-medication.html\">ELGA e-Med Medikation</a></p></div><p><b>code</b>: <span title=\"Codes:{https://termgit.elga.gv.at/CodeSystem/asp-liste 2443061}\">EBETREXAT TBL 10MG</span></p></blockquote></div>"
      },
      "contained" : [{
        "resourceType" : "Medication",
        "id" : "contained-medication-intervalle-wh",
        "meta" : {
          "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-medication"]
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
        "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.renderedDosageInstruction",
        "valueMarkdown" : "alle 8 Tage: je 1 Stück"
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
        "reference" : "#contained-medication-intervalle-wh"
      },
      "subject" : {
        "reference" : "Patient/At-Emed-Example-Patient-01"
      },
      "authoredOn" : "2026-02-27T10:20:00+00:00",
      "requester" : {
        "reference" : "Practitioner/At-Emed-Example-Practitioner-01"
      },
      "dosageInstruction" : [{
        "timing" : {
          "repeat" : {
            "frequency" : 1,
            "period" : 8,
            "periodUnit" : "d"
          }
        },
        "doseAndRate" : [{
          "doseQuantity" : {
            "unit" : "Stück",
            "system" : "https://termgit.elga.gv.at/ValueSet-elga-medikationmengenart",
            "code" : "{Stueck}"
          }
        }]
      }]
    }
  },
  {
    "fullUrl" : "urn:uuid:62e2daa5-c34b-4b97-8044-fd893bc99a62",
    "resource" : {
      "resourceType" : "MedicationRequest",
      "id" : "At-Emed-Example-Mr-Dosierung-Zeitintervalle-Kombi",
      "meta" : {
        "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-mr-planeintrag"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationRequest_At-Emed-Example-Mr-Dosierung-Zeitintervalle-Kombi\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationRequest At-Emed-Example-Mr-Dosierung-Zeitintervalle-Kombi</b></p><a name=\"At-Emed-Example-Mr-Dosierung-Zeitintervalle-Kombi\"> </a><a name=\"hcAt-Emed-Example-Mr-Dosierung-Zeitintervalle-Kombi\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-emed-mr-planeintrag.html\">ELGA e-Med Planeintrag</a></p></div><p><b>Extension Definition for MedicationRequest.renderedDosageInstruction for Version 5.0</b>: </p><div><p>alle 2 Tage: 08:00 Uhr — je 1 Stück; 18:00 Uhr — je 2 Stück</p>\n</div><p><b>identifier</b>: 4712_202602280800000</p><p><b>status</b>: Active</p><p><b>intent</b>: Order</p><p><b>category</b>: <span title=\"Codes:{https://fhir.hl7.at/elga/emed/r4/CodeSystem/MedicationRequestCategoryCS 1}\">Medikationsplaneintrag</span></p><p><b>reported</b>: false</p><p><b>medication</b>: <a href=\"#hcAt-Emed-Example-Mr-Dosierung-Zeitintervalle-Kombi/contained-medication-zeitintervalle-kombi\">Medication EBETREXAT TBL 10MG</a></p><p><b>subject</b>: <a href=\"Patient-At-Emed-Example-Patient-01.html\">Max Mustermann  Male, DoB: 1900-01-01 ( Social Security number: 1234010100)</a></p><p><b>authoredOn</b>: 2026-02-27 10:20:00+0000</p><p><b>requester</b>: <a href=\"Practitioner-At-Emed-Example-Practitioner-01.html\">Practitioner Melanie Musterärztin </a></p><blockquote><p><b>dosageInstruction</b></p><p><b>timing</b>: Once per 2 days</p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td> Stück<span style=\"background: LightGoldenRodYellow\"> (Details: ValueSet-elga-medikationmengenart  code{Stueck} = '{Stueck}')</span></td></tr></table></blockquote><blockquote><p><b>dosageInstruction</b></p><p><b>timing</b>: Once per 2 days</p></blockquote><hr/><blockquote><p class=\"res-header-id\"><b>Generated Narrative: Medication #contained-medication-zeitintervalle-kombi</b></p><a name=\"At-Emed-Example-Mr-Dosierung-Zeitintervalle-Kombi/contained-medication-zeitintervalle-kombi\"> </a><a name=\"hcAt-Emed-Example-Mr-Dosierung-Zeitintervalle-Kombi/contained-medication-zeitintervalle-kombi\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-emed-medication.html\">ELGA e-Med Medikation</a></p></div><p><b>code</b>: <span title=\"Codes:{https://termgit.elga.gv.at/CodeSystem/asp-liste 2443061}\">EBETREXAT TBL 10MG</span></p></blockquote></div>"
      },
      "contained" : [{
        "resourceType" : "Medication",
        "id" : "contained-medication-zeitintervalle-kombi",
        "meta" : {
          "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-medication"]
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
        "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.renderedDosageInstruction",
        "valueMarkdown" : "alle 2 Tage: 08:00 Uhr — je 1 Stück; 18:00 Uhr — je 2 Stück"
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
        "reference" : "#contained-medication-zeitintervalle-kombi"
      },
      "subject" : {
        "reference" : "Patient/At-Emed-Example-Patient-01"
      },
      "authoredOn" : "2026-02-27T10:20:00+00:00",
      "requester" : {
        "reference" : "Practitioner/At-Emed-Example-Practitioner-01"
      },
      "dosageInstruction" : [{
        "timing" : {
          "repeat" : {
            "frequency" : 1,
            "period" : 2,
            "periodUnit" : "d",
            "timeOfDay" : ["08:00:00"]
          }
        },
        "doseAndRate" : [{
          "doseQuantity" : {
            "unit" : "Stück",
            "system" : "https://termgit.elga.gv.at/ValueSet-elga-medikationmengenart",
            "code" : "{Stueck}"
          }
        }]
      },
      {
        "timing" : {
          "repeat" : {
            "frequency" : 1,
            "period" : 2,
            "periodUnit" : "d",
            "timeOfDay" : ["18:00:00"]
          }
        }
      }]
    }
  },
  {
    "fullUrl" : "urn:uuid:62e2daa5-c34b-4b97-8044-fd893bc99a63",
    "resource" : {
      "resourceType" : "MedicationRequest",
      "id" : "At-Emed-Example-Mr-Dosierung-Wochentag-Kombi",
      "meta" : {
        "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-mr-planeintrag"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationRequest_At-Emed-Example-Mr-Dosierung-Wochentag-Kombi\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationRequest At-Emed-Example-Mr-Dosierung-Wochentag-Kombi</b></p><a name=\"At-Emed-Example-Mr-Dosierung-Wochentag-Kombi\"> </a><a name=\"hcAt-Emed-Example-Mr-Dosierung-Wochentag-Kombi\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-emed-mr-planeintrag.html\">ELGA e-Med Planeintrag</a></p></div><p><b>Extension Definition for MedicationRequest.renderedDosageInstruction for Version 5.0</b>: </p><div><p>montags 1-0-1-0 Stück; freitags 1-0-1-0 Stück</p>\n</div><p><b>identifier</b>: 4712_202602280800000</p><p><b>status</b>: Active</p><p><b>intent</b>: Order</p><p><b>category</b>: <span title=\"Codes:{https://fhir.hl7.at/elga/emed/r4/CodeSystem/MedicationRequestCategoryCS 1}\">Medikationsplaneintrag</span></p><p><b>reported</b>: false</p><p><b>medication</b>: <a href=\"#hcAt-Emed-Example-Mr-Dosierung-Wochentag-Kombi/contained-medication-wochentag-kombi\">Medication EBETREXAT TBL 10MG</a></p><p><b>subject</b>: <a href=\"Patient-At-Emed-Example-Patient-01.html\">Max Mustermann  Male, DoB: 1900-01-01 ( Social Security number: 1234010100)</a></p><p><b>authoredOn</b>: 2026-02-27 10:20:00+0000</p><p><b>requester</b>: <a href=\"Practitioner-At-Emed-Example-Practitioner-01.html\">Practitioner Melanie Musterärztin </a></p><blockquote><p><b>dosageInstruction</b></p><p><b>timing</b>: Morning, Evening, 4 per 1 week</p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td> Stück<span style=\"background: LightGoldenRodYellow\"> (Details: ValueSet-elga-medikationmengenart  code{Stueck} = '{Stueck}')</span></td></tr></table></blockquote><hr/><blockquote><p class=\"res-header-id\"><b>Generated Narrative: Medication #contained-medication-wochentag-kombi</b></p><a name=\"At-Emed-Example-Mr-Dosierung-Wochentag-Kombi/contained-medication-wochentag-kombi\"> </a><a name=\"hcAt-Emed-Example-Mr-Dosierung-Wochentag-Kombi/contained-medication-wochentag-kombi\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-emed-medication.html\">ELGA e-Med Medikation</a></p></div><p><b>code</b>: <span title=\"Codes:{https://termgit.elga.gv.at/CodeSystem/asp-liste 2443061}\">EBETREXAT TBL 10MG</span></p></blockquote></div>"
      },
      "contained" : [{
        "resourceType" : "Medication",
        "id" : "contained-medication-wochentag-kombi",
        "meta" : {
          "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-medication"]
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
        "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.renderedDosageInstruction",
        "valueMarkdown" : "montags 1-0-1-0 Stück; freitags 1-0-1-0 Stück"
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
        "reference" : "#contained-medication-wochentag-kombi"
      },
      "subject" : {
        "reference" : "Patient/At-Emed-Example-Patient-01"
      },
      "authoredOn" : "2026-02-27T10:20:00+00:00",
      "requester" : {
        "reference" : "Practitioner/At-Emed-Example-Practitioner-01"
      },
      "dosageInstruction" : [{
        "timing" : {
          "repeat" : {
            "frequency" : 4,
            "period" : 1,
            "periodUnit" : "wk",
            "dayOfWeek" : ["mon", "fri"],
            "when" : ["MORN", "EVE"]
          }
        },
        "doseAndRate" : [{
          "doseQuantity" : {
            "unit" : "Stück",
            "system" : "https://termgit.elga.gv.at/ValueSet-elga-medikationmengenart",
            "code" : "{Stueck}"
          }
        }]
      }]
    }
  }]
}

```
