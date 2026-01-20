# HL7.AT.FHIR.ELGA.EMED.R4\HL7ATCorePractitioner - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HL7ATCorePractitioner**

## Example Practitioner: HL7ATCorePractitioner

Profile: [HL7® AT Core Practitioner Profile](http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/2.0.0/StructureDefinition-at-core-practitioner.html)

**identifier**: [Uniform Resource Identifier (URI)](http://terminology.hl7.org/6.5.0/NamingSystem-uri.html)/urn:oid:1.2.40.0.10.99.1.2.3.4

**name**: Hanna Hausärztin 



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "at-emed-example-practitioner-01",
  "meta" : {
    "profile" : [
      "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-practitioner"
    ]
  },
  "identifier" : [
    {
      "system" : "urn:ietf:rfc:3986",
      "value" : "urn:oid:1.2.40.0.10.99.1.2.3.4",
      "assigner" : {
        "display" : "Bundesministerium für Gesundheit"
      }
    }
  ],
  "name" : [
    {
      "family" : "Hausärztin",
      "given" : ["Hanna"],
      "prefix" : ["Dr."]
    }
  ]
}

```
