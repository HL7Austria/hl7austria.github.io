# HL7.AT.FHIR.ELGA.EMED.R4\ExampleArzt - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ExampleArzt**

## Example Practitioner: ExampleArzt

Profile: [HL7® AT Core Practitioner Profile](http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/2.0.0/StructureDefinition-at-core-practitioner.html)

**name**: Max Hausarzt 



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "ExampleArzt",
  "meta" : {
    "profile" : [
      "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-practitioner"
    ]
  },
  "name" : [
    {
      "family" : "Hausarzt",
      "given" : ["Max"]
    }
  ]
}

```
