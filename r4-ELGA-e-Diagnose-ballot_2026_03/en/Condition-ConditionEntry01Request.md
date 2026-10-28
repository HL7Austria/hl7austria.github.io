# Request: Diagnose erfassen (POST /Condition) - ELGA e-Diagnose R4 v0.1.1

## Example Condition: Request: Diagnose erfassen (POST /Condition)

Profile: [AT e-Diagnose Condition](StructureDefinition-at-elga-ediag-condition.md)

**AT e-Diagnose Reported (Fremdangabe)**: true

**clinicalStatus**: Active

**code**: Hypertensive disorder, systemic arterial

**subject**: Identifier: `urn:oid:1.2.40.0.10.2.1.1.149`/GH:oeLdSEb0l+8kSdJWjOYyYmnYki0=

**onset**: 2022-06-01

**recordedDate**: 2026-03-03 08:05:00+0000

**recorder**: Identifier: [Uniform Resource Identifier (URI)](http://terminology.hl7.org/7.2.0/NamingSystem-uri.html)/urn:oid:1.2.40.0.34.99.4613.4

**asserter**: Identifier: `urn:oid:1.2.40.0.10.2.1.1.149`/GH:oeLdSEb0l+8kSdJWjOYyYmnYki0=

**note**: 

> 

Patient berichtet über bekannte Hypertonie seit 2022, Lisinopril 10mg 1-0-0.




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "ConditionEntry01Request",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-condition"]
  },
  "extension" : [{
    "url" : "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-ext-reported",
    "valueBoolean" : true
  }],
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
      "version" : "3.0.0",
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
    "identifier" : {
      "system" : "urn:oid:1.2.40.0.10.2.1.1.149",
      "value" : "GH:oeLdSEb0l+8kSdJWjOYyYmnYki0="
    }
  },
  "onsetDateTime" : "2022-06-01",
  "recordedDate" : "2026-03-03T08:05:00+00:00",
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
  },
  "note" : [{
    "text" : "Patient berichtet über bekannte Hypertonie seit 2022, Lisinopril 10mg 1-0-0."
  }]
}

```
