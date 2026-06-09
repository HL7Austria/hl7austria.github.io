# ELGA.MOPED\LocationKAK999 - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **LocationKAK999**

## Example Location: LocationKAK999

Profile: [HL7® AT Core Location Profile](https://build.fhir.org/ig/HL7Austria/HL7-AT-FHIR-Core-R5/StructureDefinition-at-core-location.html)

**managingOrganization**: [Organization Testkrankenhaus](Organization-KAK999.md)



## Resource Content

```json
{
  "resourceType" : "Location",
  "id" : "LocationKAK999",
  "meta" : {
    "profile" : ["http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-location"]
  },
  "managingOrganization" : {
    "reference" : "Organization/KAK999"
  }
}

```
