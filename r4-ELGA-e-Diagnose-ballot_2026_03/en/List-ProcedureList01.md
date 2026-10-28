# Procedure Summary-Liste mit einem Summary-Eintrag - ELGA e-Diagnose R4 v0.1.1

## Example List: Procedure Summary-Liste mit einem Summary-Eintrag

version: 2

Profile: [AT e-Diagnose Summary-Liste](StructureDefinition-at-elga-ediag-list.md)

| | | | |
| :--- | :--- | :--- | :--- |
| Date: 2026-03-09 10:00:00+0000 | Mode: Working List | Status: Current | Code: History of Procedures Document |
| Subject:[Max Mustermann Male, DoB: 1970-01-01 ( Social Security number: 1234010100)](Patient-PatientExample.md) | Source:[Melanie Musterärztin (OID:1.2.40.0.34.99.4613.4)](Practitioner-PractitionerExample.md) | | |

* **Items**: [Procedure Partial resection of colon](Procedure-ProcedureEntry01.md)



## Resource Content

```json
{
  "resourceType" : "List",
  "id" : "ProcedureList01",
  "meta" : {
    "versionId" : "2",
    "profile" : ["https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-list"]
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
    "reference" : "Patient/PatientExample",
    "identifier" : {
      "system" : "urn:oid:1.2.40.0.10.2.1.1.149",
      "value" : "GH:oeLdSEb0l+8kSdJWjOYyYmnYki0="
    }
  },
  "date" : "2026-03-09T10:00:00+00:00",
  "source" : {
    "reference" : "Practitioner/PractitionerExample",
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
}

```
