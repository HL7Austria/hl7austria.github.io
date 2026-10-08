# SearchSet-Bundle der Condition-Summary-Liste (Version 3) - ELGA e-Diagnose R4 (Draft) v0.1.0

## Example Bundle: SearchSet-Bundle der Condition-Summary-Liste (Version 3)



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "ConditionListSearchSet02",
  "type" : "searchset",
  "total" : 1,
  "link" : [{
    "relation" : "self",
    "url" : "https://example.org/fhir/List?code=http://loinc.org|11450-4&_include=*"
  }],
  "entry" : [{
    "fullUrl" : "https://example.org/fhir/List/ConditionList02",
    "resource" : {
      "resourceType" : "List",
      "id" : "ConditionList02",
      "meta" : {
        "versionId" : "3",
        "profile" : ["https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-list"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"List_ConditionList02\"> </a><p class=\"res-header-id\"><b>Generated Narrative: List ConditionList02</b></p><a name=\"ConditionList02\"> </a><a name=\"hcConditionList02\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">version: 3</p><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-elga-ediag-list.html\">AT ELGA e-Diagnose List</a></p></div><table class=\"clstu\"><tr><td>Date: 2026-03-09 08:00:00+0000 </td><td>Mode: Working List </td><td>Status: Current </td><td>Code: Problem list - Reported </td></tr><tr><td>Subject: <a href=\"Patient-PatientExample.html\">Max Mustermann  Male, DoB: 1970-01-01 ( Social Security number: 1234010100)</a></td><td>Source: <a href=\"Practitioner-PractitionerExample.html\">Melanie Musterärztin (OID:1.2.40.0.34.99.4613.4)</a></td></tr></table><table class=\"grid\"><tr style=\"backgound-color: #eeeeee\"><td><b>Items</b></td></tr><tr><td><a href=\"Condition-ConditionEntry01.html\">Condition Hypertensive disorder, systemic arterial</a></td></tr><tr><td><a href=\"Condition-ConditionEntry03.html\">Condition Hyperthyroidism</a></td></tr></table></div>"
      },
      "status" : "current",
      "mode" : "working",
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "11450-4"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientExample"
      },
      "date" : "2026-03-09T08:00:00+00:00",
      "source" : {
        "reference" : "Practitioner/PractitionerExample"
      },
      "entry" : [{
        "item" : {
          "reference" : "Condition/ConditionEntry01"
        }
      },
      {
        "item" : {
          "reference" : "Condition/ConditionEntry03"
        }
      }]
    },
    "search" : {
      "mode" : "match"
    }
  },
  {
    "fullUrl" : "https://example.org/fhir/Condition/ConditionEntry01",
    "resource" : {
      "resourceType" : "Condition",
      "id" : "ConditionEntry01",
      "meta" : {
        "profile" : ["https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-condition"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Condition_ConditionEntry01\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Condition ConditionEntry01</b></p><a name=\"ConditionEntry01\"> </a><a name=\"hcConditionEntry01\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-elga-ediag-condition.html\">AT ELGA e-Diagnose Condition</a></p></div><p><b>AT ELGA Reported (Fremdangabe)</b>: true</p><p><b>identifier</b>: <code>https://fhir.hl7.at/elga/ediag/r4/CodeSystem/at-ediag-codesystem-business-identifier</code>/1234</p><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-clinical active}\">Active</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 38341003}\">Hypertensive disorder, systemic arterial</span></p><p><b>subject</b>: <a href=\"Patient-PatientExample.html\">Max Mustermann  Male, DoB: 1970-01-01 ( Social Security number: 1234010100)</a></p><p><b>onset</b>: 2022-06-01</p><p><b>recordedDate</b>: 2026-03-03 00:00:00+0000</p><p><b>recorder</b>: <a href=\"Practitioner-PractitionerExample.html\">Melanie Musterärztin (OID:1.2.40.0.34.99.4613.4)</a></p><p><b>asserter</b>: <a href=\"Practitioner-PractitionerExample.html\">Melanie Musterärztin (OID:1.2.40.0.34.99.4613.4)</a></p><p><b>note</b>: </p><blockquote><div><p>Patient berichtet über bekannte Hypertonie seit 2022, Lisinopril 10mg 1-0-0.</p>\n</div></blockquote></div>"
      },
      "extension" : [{
        "url" : "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-reported",
        "valueBoolean" : true
      }],
      "identifier" : [{
        "system" : "https://fhir.hl7.at/elga/ediag/r4/CodeSystem/at-ediag-codesystem-business-identifier",
        "value" : "1234"
      }],
      "clinicalStatus" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
          "code" : "active"
        }]
      },
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "38341003",
          "display" : "Hypertensive disorder, systemic arterial"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientExample"
      },
      "onsetDateTime" : "2022-06-01",
      "recordedDate" : "2026-03-03T00:00:00+00:00",
      "recorder" : {
        "reference" : "Practitioner/PractitionerExample"
      },
      "asserter" : {
        "reference" : "Practitioner/PractitionerExample"
      },
      "note" : [{
        "text" : "Patient berichtet über bekannte Hypertonie seit 2022, Lisinopril 10mg 1-0-0."
      }]
    },
    "search" : {
      "mode" : "include"
    }
  },
  {
    "fullUrl" : "https://example.org/fhir/Condition/ConditionEntry03",
    "resource" : {
      "resourceType" : "Condition",
      "id" : "ConditionEntry03",
      "meta" : {
        "profile" : ["https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-condition"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Condition_ConditionEntry03\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Condition ConditionEntry03</b></p><a name=\"ConditionEntry03\"> </a><a name=\"hcConditionEntry03\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-elga-ediag-condition.html\">AT ELGA e-Diagnose Condition</a></p></div><p><b>AT ELGA Reported (Fremdangabe)</b>: true</p><p><b>identifier</b>: <code>https://fhir.hl7.at/elga/ediag/r4/CodeSystem/at-ediag-codesystem-business-identifier</code>/1236</p><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-clinical active}\">Active</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 34486009}\">Hyperthyroidism</span></p><p><b>subject</b>: <a href=\"Patient-PatientExample.html\">Max Mustermann  Male, DoB: 1970-01-01 ( Social Security number: 1234010100)</a></p><p><b>onset</b>: 2010-01-01</p><p><b>recordedDate</b>: 2026-03-09 00:00:00+0000</p><p><b>recorder</b>: <a href=\"Practitioner-PractitionerExample.html\">Melanie Musterärztin (OID:1.2.40.0.34.99.4613.4)</a></p><p><b>asserter</b>: <a href=\"Practitioner-PractitionerExample.html\">Melanie Musterärztin (OID:1.2.40.0.34.99.4613.4)</a></p><p><b>note</b>: </p><blockquote><div><p>Seit 2010</p>\n</div></blockquote></div>"
      },
      "extension" : [{
        "url" : "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-reported",
        "valueBoolean" : true
      }],
      "identifier" : [{
        "system" : "https://fhir.hl7.at/elga/ediag/r4/CodeSystem/at-ediag-codesystem-business-identifier",
        "value" : "1236"
      }],
      "clinicalStatus" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
          "code" : "active"
        }]
      },
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "34486009",
          "display" : "Hyperthyroidism"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientExample"
      },
      "onsetDateTime" : "2010-01-01",
      "recordedDate" : "2026-03-09T00:00:00+00:00",
      "recorder" : {
        "reference" : "Practitioner/PractitionerExample"
      },
      "asserter" : {
        "reference" : "Practitioner/PractitionerExample"
      },
      "note" : [{
        "text" : "Seit 2010"
      }]
    },
    "search" : {
      "mode" : "include"
    }
  }]
}

```
