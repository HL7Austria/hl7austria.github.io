# Beispielinstanz einer Prozedur für die Summary-Liste - ELGA e-Diagnose R4 v0.1.0

## Example Procedure: Beispielinstanz einer Prozedur für die Summary-Liste

Profile: [AT e-Diagnose Procedure](StructureDefinition-at-elga-ediag-procedure.md)

**AT e-Diagnose Reported (Fremdangabe)**: true

**R5: When the procedure was first captured in the subject's record (new)**: 2026-03-09 09:53:00+0000

**identifier**: `https://fhir.hl7.at/elga/ediag/r4/CodeSystem/at-ediag-business-identifier`/1337

**status**: Completed

**code**: Partial resection of colon

**subject**: [Max Mustermann Male, DoB: 1970-01-01 ( Social Security number: 1234010100)](Patient-PatientExample.md)

**performed**: 2025-09-23 09:30:00+0200

**recorder**: [Melanie Musterärztin (OID:1.2.40.0.34.99.4613.4)](Practitioner-PractitionerExample.md)

**asserter**: [Max Mustermann Male, DoB: 1970-01-01 ( Social Security number: 1234010100)](Patient-PatientExample.md)



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "ProcedureEntry01",
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
  "identifier" : [{
    "system" : "https://fhir.hl7.at/elga/ediag/r4/CodeSystem/at-ediag-business-identifier",
    "value" : "1337"
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
    "reference" : "Patient/PatientExample",
    "identifier" : {
      "system" : "urn:oid:1.2.40.0.10.2.1.1.149",
      "value" : "GH:oeLdSEb0l+8kSdJWjOYyYmnYki0="
    }
  },
  "performedDateTime" : "2025-09-23T09:30:00+02:00",
  "recorder" : {
    "reference" : "Practitioner/PractitionerExample",
    "identifier" : {
      "system" : "urn:ietf:rfc:3986",
      "value" : "urn:oid:1.2.40.0.34.99.4613.4"
    }
  },
  "asserter" : {
    "reference" : "Patient/PatientExample",
    "identifier" : {
      "system" : "urn:oid:1.2.40.0.10.2.1.1.149",
      "value" : "GH:oeLdSEb0l+8kSdJWjOYyYmnYki0="
    }
  }
}

```
