# HL7.AT.FHIR.ELGA.EDIAG.R4\Beispiel einer leeren e-Diagnose-Liste - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel einer leeren e-Diagnose-Liste**

## Example List: Beispiel einer leeren e-Diagnose-Liste

Profile: [AT ELGA e-Diagnose List](StructureDefinition-at-elga-ediag-list.md)

| | | | |
| :--- | :--- | :--- | :--- |
| Date: 2026-03-01 08:00:00+0000 | Mode: Working List | Status: Current | Code: Problem list - Reported |
| Subject: Identifier:`urn:oid:1.2.40.0.10.2.1.1.149`/GH:oeLdSEb0l+8kSdJWjOYyYmnYki0=Source: | | | |




## Resource Content

```json
{
  "resourceType" : "List",
  "id" : "ListExample01",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-list"]
  },
  "identifier" : [{
    "value" : "123"
  }],
  "status" : "current",
  "mode" : "working",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "11450-4"
    }]
  },
  "subject" : {
    "type" : "Patient",
    "identifier" : {
      "system" : "urn:oid:1.2.40.0.10.2.1.1.149",
      "value" : "GH:oeLdSEb0l+8kSdJWjOYyYmnYki0="
    }
  },
  "date" : "2026-03-01T08:00:00+00:00",
  "source" : {
    "type" : "Practitioner",
    "identifier" : {
      "system" : "urn:ietf:rfc:3986",
      "value" : "urn:oid:1.2.40.0.34.99.4613.4"
    }
  },
  "emptyReason" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/list-empty-reason",
      "code" : "notstarted"
    }]
  }
}

```
