# Request: Prozedur erfassen (POST /Procedure) - ELGA e-Diagnose R4 (Draft) v0.1.0

## Example Procedure: Request: Prozedur erfassen (POST /Procedure)

Profile: [AT ELGA e-Diagnose Procedure](StructureDefinition-at-elga-ediag-procedure.md)

**AT ELGA Reported (Fremdangabe)**: true

**status**: Completed

**code**: Colonoscopy

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
    "url" : "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-reported",
    "valueBoolean" : true
  }],
  "status" : "completed",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "73761001",
      "display" : "Colonoscopy"
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
