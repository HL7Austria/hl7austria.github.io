# SearchSet-Bundle der Procedure-Summary-Liste (Version 2) - ELGA e-Diagnose R4 (Draft) v0.1.0

## Example Bundle: SearchSet-Bundle der Procedure-Summary-Liste (Version 2)



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "ProcedureListSearchSet01",
  "type" : "searchset",
  "total" : 1,
  "link" : [{
    "relation" : "self",
    "url" : "https://example.org/fhir/List?code=http://loinc.org|47519-4&_include=*"
  }],
  "entry" : [{
    "fullUrl" : "https://example.org/fhir/List/ProcedureList01",
    "resource" : {
      "resourceType" : "List",
      "id" : "ProcedureList01",
      "meta" : {
        "profile" : ["https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-list"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"List_ProcedureList01\"> </a><p class=\"res-header-id\"><b>Generated Narrative: List ProcedureList01</b></p><a name=\"ProcedureList01\"> </a><a name=\"hcProcedureList01\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-elga-ediag-list.html\">AT ELGA e-Diagnose List</a></p></div><table class=\"clstu\"><tr><td>Date: 2026-03-09 10:00:00+0000 </td><td>Mode: Working List </td><td>Status: Current </td><td>Code: History of Procedures Document </td></tr><tr><td>Subject: Identifier: <code>urn:oid:1.2.40.0.10.2.1.1.149</code>/GH:oeLdSEb0l+8kSdJWjOYyYmnYki0=</td><td>Source: Identifier: <a href=\"http://terminology.hl7.org/7.4.0/NamingSystem-uri.html\" title=\"As defined by RFC 3986 (http://www.ietf.org/rfc/rfc3986.txt)(with many schemes defined in many RFCs). For OIDs and UUIDs, use the URN form (urn:oid:(note: lowercase) and urn:uuid:). See http://www.ietf.org/rfc/rfc3001.txt and http://www.ietf.org/rfc/rfc4122.txt \r\n\r\nThis oid is used as an identifier II.root to indicate the the extension is an absolute URI (technically, an IRI). Typically, this is used for OIDs and GUIDs. Note that when this OID is used with OIDs and GUIDs, the II.extension should start with urn:oid or urn:uuid: \r\n\r\nNote that this OID is created to aid with interconversion between CDA and FHIR - FHIR uses urn:ietf:rfc:3986 as equivalent to this OID. URIs as identifiers appear more commonly in FHIR.\r\n\r\nThis OID may also be used in CD.codeSystem.\">Uniform Resource Identifier (URI)</a>/urn:oid:1.2.40.0.34.99.4613.4</td></tr></table><table class=\"grid\"><tr style=\"backgound-color: #eeeeee\"><td><b>Items</b></td></tr><tr><td><a href=\"Procedure-ProcedureEntry01.html\">Procedure Partial excision of large intestine</a></td></tr></table></div>"
      },
      "status" : "current",
      "mode" : "working",
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "47519-4"
        }]
      },
      "subject" : {
        "identifier" : {
          "system" : "urn:oid:1.2.40.0.10.2.1.1.149",
          "value" : "GH:oeLdSEb0l+8kSdJWjOYyYmnYki0="
        }
      },
      "date" : "2026-03-09T10:00:00+00:00",
      "source" : {
        "identifier" : {
          "system" : "urn:ietf:rfc:3986",
          "value" : "urn:oid:1.2.40.0.34.99.4613.4"
        }
      },
      "entry" : [{
        "item" : {
          "reference" : "Procedure/ProcedureEntry01"
        }
      }]
    },
    "search" : {
      "mode" : "match"
    }
  },
  {
    "fullUrl" : "https://example.org/fhir/Procedure/ProcedureEntry01",
    "resource" : {
      "resourceType" : "Procedure",
      "id" : "ProcedureEntry01",
      "meta" : {
        "profile" : ["https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-procedure"]
      },
      "text" : {
        "status" : "extensions",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Procedure_ProcedureEntry01\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Procedure ProcedureEntry01</b></p><a name=\"ProcedureEntry01\"> </a><a name=\"hcProcedureEntry01\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-elga-ediag-procedure.html\">AT ELGA e-Diagnose Procedure</a></p></div><p><b>AT ELGA Reported (Fremdangabe)</b>: true</p><p><b>status</b>: Completed</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 27010001}\">Partial excision of large intestine</span></p><p><b>subject</b>: <a href=\"Patient-PatientExample.html\">Max Mustermann  Male, DoB: 1970-01-01 ( Social Security number: 1234010100)</a></p><p><b>performed</b>: 2025-09-23 09:30:00+0200</p><p><b>recorder</b>: <a href=\"Practitioner-PractitionerExample.html\">Melanie Musterärztin (OID:1.2.40.0.34.99.4613.4)</a></p><p><b>asserter</b>: <a href=\"Patient-PatientExample.html\">Max Mustermann  Male, DoB: 1970-01-01 ( Social Security number: 1234010100)</a></p></div>"
      },
      "extension" : [{
        "url" : "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-reported",
        "valueBoolean" : true
      }],
      "status" : "completed",
      "code" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "27010001",
          "display" : "Partial excision of large intestine"
        }]
      },
      "subject" : {
        "reference" : "Patient/PatientExample"
      },
      "performedDateTime" : "2025-09-23T09:30:00+02:00",
      "recorder" : {
        "reference" : "Practitioner/PractitionerExample"
      },
      "asserter" : {
        "reference" : "Patient/PatientExample"
      }
    },
    "search" : {
      "mode" : "include"
    }
  }]
}

```
