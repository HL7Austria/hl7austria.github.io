# HL7.AT.FHIR.ELGA.EDIAG.R4\Beispiel Prozedur - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel Prozedur**

## Example Procedure: Beispiel Prozedur

Profile: [AT ELGA e-Diagnose Procedure](StructureDefinition-at-elga-ediag-procedure.md)

Tag: [currently relevant (Details: AT e-Diagnose Diagnose Typ code relevant = 'currently relevant')](CodeSystem-at-ediag-codesystem-diagnose-type.md)

**AT ELGA Reported (Fremdangabe)**: false

**status**: Completed

**code**: Coloskopie

**subject**: Identifier: `urn:oid:1.2.40.0.10.2.1.1.149`/GH:oeLdSEb0l+8kSdJWjOYyYmnYki0=

**performed**: 2026-04-20 09:30:00+0200

**recorder**: Identifier: [Uniform Resource Identifier (URI)](http://terminology.hl7.org/7.3.0/NamingSystem-uri.html)/urn:oid:1.2.40.0.34.99.4613.4

**asserter**: Identifier: [Uniform Resource Identifier (URI)](http://terminology.hl7.org/7.3.0/NamingSystem-uri.html)/urn:oid:1.2.40.0.34.99.4613.4

**note**: 

> 

Diagnostische Coloskopie. Histologiebefund ausständig




## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "ProcedureExample",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-procedure"],
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
  "status" : "completed",
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "73761001",
      "display" : "Coloskopie"
    }]
  },
  "subject" : {
    "type" : "Patient",
    "identifier" : {
      "system" : "urn:oid:1.2.40.0.10.2.1.1.149",
      "value" : "GH:oeLdSEb0l+8kSdJWjOYyYmnYki0="
    }
  },
  "performedDateTime" : "2026-04-20T09:30:00+02:00",
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
    "text" : "Diagnostische Coloskopie. Histologiebefund ausständig"
  }]
}

```
