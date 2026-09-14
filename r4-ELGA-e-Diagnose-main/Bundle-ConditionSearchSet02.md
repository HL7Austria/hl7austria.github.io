# HL7.AT.FHIR.ELGA.EDIAG.R4\SearchSet-Bundle der Diagnosen eines Patienten - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SearchSet-Bundle der Diagnosen eines Patienten**

## Example Bundle: SearchSet-Bundle der Diagnosen eines Patienten



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "ConditionSearchSet02",
  "type" : "searchset",
  "total" : 5,
  "link" : [{
    "relation" : "self",
    "url" : "https://example.org/fhir/Condition?patient=Patient/example"
  }],
  "entry" : [{
    "fullUrl" : "https://example.org/fhir/Condition/ConditionEntry01",
    "resource" : {
      "resourceType" : "Condition",
      "id" : "ConditionEntry01",
      "meta" : {
        "profile" : ["https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-condition"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Condition_ConditionEntry01\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Condition ConditionEntry01</b></p><a name=\"ConditionEntry01\"> </a><a name=\"hcConditionEntry01\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-elga-ediag-condition.html\">AT ELGA e-Diagnose Condition</a></p></div><p><b>AT ELGA Reported (Fremdangabe)</b>: true</p><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-clinical active}\">Active</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-ver-status confirmed}\">Confirmed</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 38341003}\">Hypertensive disorder, systemic arterial</span></p><p><b>subject</b>: <a href=\"Patient-PatientExample.html\">Max Mustermann  Male, DoB: 1970-01-01 ( Social Security number: 1234010100)</a></p><p><b>onset</b>: 2024-06-01</p><p><b>recordedDate</b>: 2026-03-03 00:00:00+0000</p><p><b>recorder</b>: <a href=\"Practitioner-PractitionerExample.html\">Practitioner Melanie Musterärztin </a></p><p><b>asserter</b>: <a href=\"Practitioner-PractitionerExample.html\">Practitioner Melanie Musterärztin </a></p><p><b>note</b>: </p><blockquote><div><p>Patient berichtet über bekannte Hypertonie seit 2024, Lisinopril 10mg 1-0-0.</p>\n</div></blockquote></div>"
      },
      "extension" : [{
        "url" : "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-reported",
        "valueBoolean" : true
      }],
      "clinicalStatus" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
          "code" : "active"
        }]
      },
      "verificationStatus" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
          "code" : "confirmed"
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
      "onsetDateTime" : "2024-06-01",
      "recordedDate" : "2026-03-03T00:00:00+00:00",
      "recorder" : {
        "reference" : "Practitioner/PractitionerExample"
      },
      "asserter" : {
        "reference" : "Practitioner/PractitionerExample"
      },
      "note" : [{
        "text" : "Patient berichtet über bekannte Hypertonie seit 2024, Lisinopril 10mg 1-0-0."
      }]
    }
  },
  {
    "fullUrl" : "https://example.org/fhir/Condition/ConditionEntry02",
    "resource" : {
      "resourceType" : "Condition",
      "id" : "ConditionEntry02",
      "meta" : {
        "profile" : ["https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-condition"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Condition_ConditionEntry02\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Condition ConditionEntry02</b></p><a name=\"ConditionEntry02\"> </a><a name=\"hcConditionEntry02\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-elga-ediag-condition.html\">AT ELGA e-Diagnose Condition</a></p></div><p><b>AT ELGA Reported (Fremdangabe)</b>: true</p><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-clinical active}\">Active</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-ver-status confirmed}\">Confirmed</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 10351008}\">Suppurative tonsillitis</span></p><p><b>subject</b>: <a href=\"Patient-PatientExample.html\">Max Mustermann  Male, DoB: 1970-01-01 ( Social Security number: 1234010100)</a></p><p><b>onset</b>: 2026-02-28</p><p><b>recordedDate</b>: 2026-03-03 00:00:00+0000</p><p><b>recorder</b>: <a href=\"Practitioner-PractitionerExample.html\">Practitioner Melanie Musterärztin </a></p><p><b>asserter</b>: <a href=\"Practitioner-PractitionerExample.html\">Practitioner Melanie Musterärztin </a></p><p><b>note</b>: </p><blockquote><div><p>Temperatur &gt;38.5, Schmerzen beim Schlucken</p>\n</div></blockquote></div>"
      },
      "extension" : [{
        "url" : "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-reported",
        "valueBoolean" : true
      }],
      "clinicalStatus" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
          "code" : "active"
        }]
      },
      "verificationStatus" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
          "code" : "confirmed"
        }]
      },
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "10351008",
          "display" : "Suppurative tonsillitis"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientExample"
      },
      "onsetDateTime" : "2026-02-28",
      "recordedDate" : "2026-03-03T00:00:00+00:00",
      "recorder" : {
        "reference" : "Practitioner/PractitionerExample"
      },
      "asserter" : {
        "reference" : "Practitioner/PractitionerExample"
      },
      "note" : [{
        "text" : "Temperatur >38.5, Schmerzen beim Schlucken"
      }]
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
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Condition_ConditionEntry03\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Condition ConditionEntry03</b></p><a name=\"ConditionEntry03\"> </a><a name=\"hcConditionEntry03\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-elga-ediag-condition.html\">AT ELGA e-Diagnose Condition</a></p></div><p><b>AT ELGA Reported (Fremdangabe)</b>: true</p><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-clinical active}\">Active</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-ver-status confirmed}\">Confirmed</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 34000006}\">Crohn's disease</span></p><p><b>subject</b>: <a href=\"Patient-PatientExample.html\">Max Mustermann  Male, DoB: 1970-01-01 ( Social Security number: 1234010100)</a></p><p><b>onset</b>: 2010-01-01</p><p><b>recordedDate</b>: 2026-03-09 00:00:00+0000</p><p><b>recorder</b>: <a href=\"Practitioner-PractitionerExample.html\">Practitioner Melanie Musterärztin </a></p><p><b>asserter</b>: <a href=\"Practitioner-PractitionerExample.html\">Practitioner Melanie Musterärztin </a></p><p><b>note</b>: </p><blockquote><div><p>Seit 2010</p>\n</div></blockquote></div>"
      },
      "extension" : [{
        "url" : "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-reported",
        "valueBoolean" : true
      }],
      "clinicalStatus" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
          "code" : "active"
        }]
      },
      "verificationStatus" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
          "code" : "confirmed"
        }]
      },
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "34000006",
          "display" : "Crohn's disease"
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
    }
  },
  {
    "fullUrl" : "https://example.org/fhir/Condition/ConditionEntry04",
    "resource" : {
      "resourceType" : "Condition",
      "id" : "ConditionEntry04",
      "meta" : {
        "profile" : ["https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-condition"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Condition_ConditionEntry04\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Condition ConditionEntry04</b></p><a name=\"ConditionEntry04\"> </a><a name=\"hcConditionEntry04\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-elga-ediag-condition.html\">AT ELGA e-Diagnose Condition</a></p></div><p><b>AT ELGA Reported (Fremdangabe)</b>: true</p><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-clinical active}\">Active</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-ver-status confirmed}\">Confirmed</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 428867008}\">Diarrhea caused by drug</span></p><p><b>subject</b>: <a href=\"Patient-PatientExample.html\">Max Mustermann  Male, DoB: 1970-01-01 ( Social Security number: 1234010100)</a></p><p><b>onset</b>: 2026-03-09</p><p><b>recordedDate</b>: 2026-03-09 00:00:00+0000</p><p><b>recorder</b>: <a href=\"Practitioner-PractitionerExample.html\">Practitioner Melanie Musterärztin </a></p><p><b>asserter</b>: <a href=\"Practitioner-PractitionerExample.html\">Practitioner Melanie Musterärztin </a></p><p><b>note</b>: </p><blockquote><div><p>Wässrige Durchfälle bei bestehender AB-Therapie</p>\n</div></blockquote></div>"
      },
      "extension" : [{
        "url" : "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-reported",
        "valueBoolean" : true
      }],
      "clinicalStatus" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
          "code" : "active"
        }]
      },
      "verificationStatus" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
          "code" : "confirmed"
        }]
      },
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "428867008",
          "display" : "Diarrhea caused by drug"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientExample"
      },
      "onsetDateTime" : "2026-03-09",
      "recordedDate" : "2026-03-09T00:00:00+00:00",
      "recorder" : {
        "reference" : "Practitioner/PractitionerExample"
      },
      "asserter" : {
        "reference" : "Practitioner/PractitionerExample"
      },
      "note" : [{
        "text" : "Wässrige Durchfälle bei bestehender AB-Therapie"
      }]
    }
  },
  {
    "fullUrl" : "https://example.org/fhir/Condition/ConditionEntry05",
    "resource" : {
      "resourceType" : "Condition",
      "id" : "ConditionEntry05",
      "meta" : {
        "profile" : ["https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-condition"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Condition_ConditionEntry05\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Condition ConditionEntry05</b></p><a name=\"ConditionEntry05\"> </a><a name=\"hcConditionEntry05\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-elga-ediag-condition.html\">AT ELGA e-Diagnose Condition</a></p></div><p><b>AT ELGA Reported (Fremdangabe)</b>: true</p><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-clinical active}\">Active</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-ver-status confirmed}\">Confirmed</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 52643007}\">Candidal balanitis</span></p><p><b>subject</b>: <a href=\"Patient-PatientExample.html\">Max Mustermann  Male, DoB: 1970-01-01 ( Social Security number: 1234010100)</a></p><p><b>onset</b>: 2026-03-09</p><p><b>recordedDate</b>: 2026-03-09 00:00:00+0000</p><p><b>recorder</b>: <a href=\"Practitioner-PractitionerExample.html\">Practitioner Melanie Musterärztin </a></p><p><b>asserter</b>: <a href=\"Practitioner-PractitionerExample.html\">Practitioner Melanie Musterärztin </a></p><p><b>note</b>: </p><blockquote><div><p>Juckreiz im Genitalbereich bei bestehender AB-Therapie</p>\n</div></blockquote></div>"
      },
      "extension" : [{
        "url" : "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-reported",
        "valueBoolean" : true
      }],
      "clinicalStatus" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
          "code" : "active"
        }]
      },
      "verificationStatus" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
          "code" : "confirmed"
        }]
      },
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "52643007",
          "display" : "Candidal balanitis"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientExample"
      },
      "onsetDateTime" : "2026-03-09",
      "recordedDate" : "2026-03-09T00:00:00+00:00",
      "recorder" : {
        "reference" : "Practitioner/PractitionerExample"
      },
      "asserter" : {
        "reference" : "Practitioner/PractitionerExample"
      },
      "note" : [{
        "text" : "Juckreiz im Genitalbereich bei bestehender AB-Therapie"
      }]
    }
  }]
}

```
