# Request: Prozedur erfassen (POST /Procedure) - ELGA e-Diagnose R4 v0.1.1

## Example Procedure: Request: Prozedur erfassen (POST /Procedure)

Profile: [AT e-Diagnose Procedure](StructureDefinition-at-elga-ediag-procedure.md)

**AT e-Diagnose Reported (Fremdangabe)**: true

**R5: When the procedure was first captured in the subject's record (new)**: 2026-03-09 09:53:00+0000

**status**: Completed

**code**: Partial resection of colon

**subject**: Identifier: `urn:oid:1.2.40.0.10.2.1.1.149`/GH:oeLdSEb0l+8kSdJWjOYyYmnYki0=

**performed**: 2025-09-23 09:30:00+0200

**recorder**: Identifier: [Uniform Resource Identifier (URI)](http://terminology.hl7.org/7.2.0/NamingSystem-uri.html)/urn:oid:1.2.40.0.34.99.4613.4

**asserter**: Identifier: `urn:oid:1.2.40.0.10.2.1.1.149`/GH:oeLdSEb0l+8kSdJWjOYyYmnYki0=



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "ProcedureEntry01Request",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-procedure"]
  },
  "extension" : [{
    "url" : "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-ext-reported",
    "valueBoolean" : true
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Procedure.recorded",
    "valueDateTime" : "2026-03-09T09:53:00+00:00"
  }],
  "status" : "completed",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "43075005",
      "display" : "Partial resection of colon"
    }]
  },
  "subject" : {
    "identifier" : {
      "system" : "urn:oid:1.2.40.0.10.2.1.1.149",
      "value" : "GH:oeLdSEb0l+8kSdJWjOYyYmnYki0="
    }
  },
  "performedDateTime" : "2025-09-23T09:30:00+02:00",
  "recorder" : {
    "identifier" : {
      "system" : "urn:ietf:rfc:3986",
      "value" : "urn:oid:1.2.40.0.34.99.4613.4"
    }
  },
  "asserter" : {
    "identifier" : {
      "system" : "urn:oid:1.2.40.0.10.2.1.1.149",
      "value" : "GH:oeLdSEb0l+8kSdJWjOYyYmnYki0="
    }
  }
}

```
