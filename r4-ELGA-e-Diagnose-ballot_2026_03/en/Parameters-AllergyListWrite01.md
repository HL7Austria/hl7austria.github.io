# Parameters für $write der Allergy-Summary-Liste (Version 2) - ELGA e-Diagnose R4 v0.1.1

## Example Parameters: Parameters für $write der Allergy-Summary-Liste (Version 2)



## Resource Content

```json
{
  "resourceType" : "Parameters",
  "id" : "AllergyListWrite01",
  "parameter" : [{
    "name" : "list",
    "resource" : {
      "resourceType" : "List",
      "id" : "AllergyList01",
      "meta" : {
        "profile" : ["https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-list"]
      },
      "status" : "current",
      "mode" : "working",
      "code" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "48765-2"
        }]
      },
      "subject" : {
        "identifier" : {
          "system" : "urn:oid:1.2.40.0.10.2.1.1.149",
          "value" : "GH:oeLdSEb0l+8kSdJWjOYyYmnYki0="
        }
      },
      "date" : "2026-03-03T08:10:00+00:00",
      "source" : {
        "identifier" : {
          "system" : "urn:ietf:rfc:3986",
          "value" : "urn:oid:1.2.40.0.34.99.4613.4"
        }
      },
      "entry" : [{
        "item" : {
          "reference" : "AllergyIntolerance/AllergyEntry01"
        }
      }]
    }
  }]
}

```
