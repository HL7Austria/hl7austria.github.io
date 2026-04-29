# ELGA.MOPED\LocationKAHerzJesu - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **LocationKAHerzJesu**

## Example Location: LocationKAHerzJesu

Profile: [HL7® AT Core Location Profile](https://build.fhir.org/ig/HL7Austria/HL7-AT-FHIR-Core-R5/StructureDefinition-at-core-location.html)

**managingOrganization**: [Organization Herz Jesu-Krankenhaus](Organization-OrganizationHerzJesuKrankenhaus.md)



## Resource Content

```json
{
  "resourceType" : "Location",
  "id" : "LocationKAHerzJesu",
  "meta" : {
    "profile" : ["http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-location"]
  },
  "managingOrganization" : {
    "reference" : "Organization/OrganizationHerzJesuKrankenhaus"
  }
}

```
