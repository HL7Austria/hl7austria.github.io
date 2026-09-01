# Patient Journey Practitioner - Austrian Patient Summary (R4) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Patient Journey Practitioner**

## Example Practitioner: Patient Journey Practitioner

Profile: [AT APS Practitioner](StructureDefinition-at-aps-practitioner.md)

**identifier**: [Uniform Resource Identifier (URI)](http://terminology.hl7.org/6.2.0/NamingSystem-uri.html)/urn:oid:1.2.40.0.10.99.1.2.3.4

**name**: Hanna Hausärztin 



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "at-aps-example-practitioner-01",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-practitioner"]
  },
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:1.2.40.0.10.99.1.2.3.4",
    "assigner" : {
      "display" : "Bundesministerium für Gesundheit"
    }
  }],
  "name" : [{
    "family" : "Hausärztin",
    "given" : ["Hanna"],
    "prefix" : ["Dr."]
  }]
}

```
