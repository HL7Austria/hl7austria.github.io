# Beispiel Journey 01-01-01: Medikationsplan-Bundle - ELGA e-Medikation (R4) DRAFT v0.1.0

## Example Bundle: Beispiel Journey 01-01-01: Medikationsplan-Bundle



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "At-Emed-Journey-01-01-01-Bundle-Medikationsplan",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-bundle-medikationsplan"]
  },
  "type" : "searchset",
  "total" : 1,
  "link" : [{
    "relation" : "self",
    "url" : "https://example.elga.com/base/List/$plan-read"
  }],
  "entry" : [{
    "fullUrl" : "https://example.elga.com/base/List/4cb4dceb-173f-461a-a267-683ec33e4be1",
    "resource" : {
      "resourceType" : "List",
      "id" : "4cb4dceb-173f-461a-a267-683ec33e4be1",
      "meta" : {
        "versionId" : "v1f43395bd-d5e7-4d61-872e-46c214d090ab",
        "lastUpdated" : "2026-02-27T08:00:00.120+00:00",
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
      "date" : "2026-02-27T08:00:00+00:00",
      "source" : {
        "reference" : "Device/At-Emed-Example-Device-01"
      },
      "emptyReason" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/list-empty-reason",
          "code" : "notstarted"
        }]
      }
    },
    "search" : {
      "mode" : "match"
    }
  },
  {
    "fullUrl" : "https://example.elga.com/base/Patient/At-Emed-Example-Patient-01",
    "resource" : {
      "resourceType" : "Patient",
      "id" : "At-Emed-Example-Patient-01",
      "meta" : {
        "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-patient"]
      },
      "text" : {
        "status" : "generated",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Patient_At-Emed-Example-Patient-01\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Patient At-Emed-Example-Patient-01</b></p><a name=\"At-Emed-Example-Patient-01\"> </a><a name=\"hcAt-Emed-Example-Patient-01\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-elga-emed-patient.html\">AT ELGA e-Medikation Patient</a></p></div><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">Anton Mustermann  Male, DoB: 1900-01-01 ( Social Security number: 1234010100)</p><hr/><table class=\"grid\"><tr><td style=\"background-color: #f3f5da\" title=\"Other Ids (see the one above)\">Other Ids:</td><td colspan=\"3\"><ul><li>National unique individual identifier/GH:oeLdSEb0l+8kSdJWjOYyYmnYki0=</li><li>Patient internal identifier/0815</li></ul></td></tr></table></div>"
      },
      "identifier" : [{
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "SS",
            "display" : "Social Security number"
          }]
        },
        "system" : "urn:oid:1.2.40.0.10.1.4.3.1",
        "value" : "1234010100"
      },
      {
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "NI",
            "display" : "National unique individual identifier"
          }]
        },
        "system" : "urn:oid:1.2.40.0.10.2.1.1.149",
        "value" : "GH:oeLdSEb0l+8kSdJWjOYyYmnYki0="
      },
      {
        "type" : {
          "coding" : [{
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "PI",
            "display" : "Patient internal identifier"
          }]
        },
        "system" : "urn:oid:1.2.3.4.5",
        "value" : "0815"
      }],
      "name" : [{
        "family" : "Mustermann",
        "given" : ["Anton"],
        "prefix" : ["DI"]
      }],
      "gender" : "male",
      "birthDate" : "1900-01-01"
    },
    "search" : {
      "mode" : "include"
    }
  },
  {
    "fullUrl" : "https://example.elga.com/base/Device/At-Emed-Example-Device-01",
    "resource" : {
      "resourceType" : "Device",
      "id" : "At-Emed-Example-Device-01",
      "meta" : {
        "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-device-fachanwendung"]
      },
      "text" : {
        "status" : "additional",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Device_At-Emed-Example-Device-01\"> </a><p>e-Medikation Fachanwendung.</p></div>"
      },
      "status" : "active",
      "deviceName" : [{
        "name" : "e-Med Fachanwendung",
        "type" : "user-friendly-name"
      }],
      "type" : {
        "coding" : [{
          "system" : "http://snomed.info/sct",
          "code" : "49062001",
          "display" : "Device"
        }]
      }
    },
    "search" : {
      "mode" : "include"
    }
  }]
}

```
