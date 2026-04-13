# HL7.AT.FHIR.ELGA.EMED.R4\Beispiel Journey 01: Transaction Bundle - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel Journey 01: Transaction Bundle**

## Example Bundle: Beispiel Journey 01: Transaction Bundle



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "At-Emed-Journey-01-Bundle-Tx-Medikationsplan",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-bundle-tx-medikationsplan"]
  },
  "type" : "transaction",
  "timestamp" : "2026-02-27T08:00:00+00:00",
  "entry" : [{
    "fullUrl" : "urn:uuid:62e2daa5-c34b-4b97-8044-fd893bc99a55",
    "resource" : {
      "resourceType" : "List",
      "id" : "At-Emed-Journey-01-List-Medikationsplan",
      "meta" : {
        "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-list-medikationsplan"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"List_At-Emed-Journey-01-List-Medikationsplan\"> </a><p class=\"res-header-id\"><b>Generated Narrative: List At-Emed-Journey-01-List-Medikationsplan</b></p><a name=\"At-Emed-Journey-01-List-Medikationsplan\"> </a><a name=\"hcAt-Emed-Journey-01-List-Medikationsplan\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-emed-list-medikationsplan.html\">ELGA e-Med Medikationsplan</a></p></div><table class=\"clstu\"><tr><td>Date: 2026-02-27 08:00:00+0000 </td><td>Mode: Working List </td><td>Status: Current </td><td>Code: Medikationsplan </td></tr><tr><td>Subject: <a href=\"Patient-At-Emed-Example-Patient-01.html\">Max Mustermann  Male, DoB: 1900-01-01 ( Social Security number: 1234010100)</a>Source: Order: Sorted by User </td></tr></table><table class=\"grid\"><tr style=\"backgound-color: #eeeeee\"><td><b>Items</b></td></tr></table></div>"
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
      "date" : "2026-02-27T08:00:00+00:00",
      "source" : {
        "reference" : "Device/At-Emed-Example-Device-01"
      },
      "orderedBy" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/list-order",
          "code" : "user"
        }]
      },
      "emptyReason" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/list-empty-reason",
          "code" : "notstarted"
        }]
      }
    },
    "request" : {
      "method" : "PUT",
      "url" : "List/At-Emed-Journey-01-List-Medikationsplan"
    }
  }]
}

```
