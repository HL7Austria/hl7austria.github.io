# ELGA.MOPED\OrganizationUeberweisendeOrganization2 - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **OrganizationUeberweisendeOrganization2**

## Example Organization: OrganizationUeberweisendeOrganization2

Profile: [HL7® AT Core Organization Profile](https://build.fhir.org/ig/HL7Austria/HL7-AT-FHIR-Core-R5/StructureDefinition-at-core-organization.html)

**identifier**: [Uniform Resource Identifier (URI)](http://terminology.hl7.org/7.1.0/NamingSystem-uri.html)/urn:oid:1.3.6.1.4.1.36122.tbd.234

**name**: HJK Interne Ambulanz

### Contacts

| | |
| :--- | :--- |
| - | **Address** |
| * | Wien Wien 1030 AUT |



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "OrganizationUeberweisendeOrganization2",
  "meta" : {
    "profile" : ["http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-organization"]
  },
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:1.3.6.1.4.1.36122.tbd.234"
  }],
  "name" : "HJK Interne Ambulanz",
  "contact" : [{
    "address" : {
      "city" : "Wien",
      "state" : "Wien",
      "postalCode" : "1030",
      "country" : "AUT"
    }
  }]
}

```
