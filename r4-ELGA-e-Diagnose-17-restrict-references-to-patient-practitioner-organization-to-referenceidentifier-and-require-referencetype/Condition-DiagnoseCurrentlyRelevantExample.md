# HL7.AT.FHIR.ELGA.EDIAG.R4\Beispiel Diagnose currently relevant - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel Diagnose currently relevant**

## Example Condition: Beispiel Diagnose currently relevant

Profile: [AT ELGA e-Diagnose Condition](StructureDefinition-at-elga-ediag-condition.md)

Tag: [currently relevant (Details: AT e-Diagnose Diagnose Typ code relevant = 'currently relevant')](CodeSystem-at-ediag-codesystem-diagnose-type.md)

**AT ELGA Reported (Fremdangabe)**: false

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**code**: Hypothyroidism

**subject**: Identifier: `urn:oid:1.2.40.0.10.2.1.1.149`/GH:oeLdSEb0l+8kSdJWjOYyYmnYki0=

**onset**: 2024-06-01

**recordedDate**: 2026-03-01 00:00:00+0000

**recorder**: Identifier: [Uniform Resource Identifier (URI)](http://terminology.hl7.org/7.3.0/NamingSystem-uri.html)/urn:oid:1.2.40.0.34.99.4613.4

**asserter**: Identifier: [Uniform Resource Identifier (URI)](http://terminology.hl7.org/7.3.0/NamingSystem-uri.html)/urn:oid:1.2.40.0.34.99.4613.4

**note**: 

> 

Patient berichtet über bekannte Schilddrüsenerkrankung seit 2024, aktuell gut eingestellt.




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "DiagnoseCurrentlyRelevantExample",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-condition"],
    "tag" : [{
      "system" : "https://fhir.hl7.at/elga/ediag/r4/CodeSystem/at-ediag-codesystem-diagnose-type",
      "code" : "relevant",
      "display" : "currently relevant"
    }]
  },
  "extension" : [{
    "url" : "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-reported",
    "valueBoolean" : false
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
      "code" : "40930008",
      "display" : "Hypothyroidism"
    }]
  },
  "subject" : {
    "type" : "Patient",
    "identifier" : {
      "system" : "urn:oid:1.2.40.0.10.2.1.1.149",
      "value" : "GH:oeLdSEb0l+8kSdJWjOYyYmnYki0="
    }
  },
  "onsetDateTime" : "2024-06-01",
  "recordedDate" : "2026-03-01T00:00:00+00:00",
  "recorder" : {
    "type" : "Practitioner",
    "identifier" : {
      "system" : "urn:ietf:rfc:3986",
      "value" : "urn:oid:1.2.40.0.34.99.4613.4"
    }
  },
  "asserter" : {
    "type" : "Practitioner",
    "identifier" : {
      "system" : "urn:ietf:rfc:3986",
      "value" : "urn:oid:1.2.40.0.34.99.4613.4"
    }
  },
  "note" : [{
    "text" : "Patient berichtet über bekannte Schilddrüsenerkrankung seit 2024, aktuell gut eingestellt."
  }]
}

```
