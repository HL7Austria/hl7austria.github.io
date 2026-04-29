# ELGA.MOPED\KAK999 - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **KAK999**

## Example Organization: KAK999

Profiles: [KA Organization](StructureDefinition-KAOrganization.md), [HL7® AT Core Organization Profile](https://build.fhir.org/ig/HL7Austria/HL7-AT-FHIR-Core-R5/StructureDefinition-at-core-organization.html)

**identifier**: [Uniform Resource Identifier (URI)](http://terminology.hl7.org/7.0.1/NamingSystem-uri.html)/urn:oid:1.3.6.1.4.1.36124.5.999, `urn:oid:1.2.40.0.34.4.10`/K999, `urn:oid:1.2.40.0.10.1.4.3.2`/123456

**type**: Allgemeine Krankenanstalt

**name**: Testkrankenhaus

### Contacts

| | | |
| :--- | :--- | :--- |
| - | **Telecom** | **Address** |
| * | ph: Contact details not provided | Test Test Test Test Test 1234 Test |



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "KAK999",
  "meta" : {
    "profile" : ["https://elga.moped.at/StructureDefinition/KAOrganization",
    "http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-organization"]
  },
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:1.3.6.1.4.1.36124.5.999"
  },
  {
    "system" : "urn:oid:1.2.40.0.34.4.10",
    "value" : "K999"
  },
  {
    "system" : "urn:oid:1.2.40.0.10.1.4.3.2",
    "value" : "123456"
  }],
  "type" : [{
    "coding" : [{
      "system" : "https://termgit.elga.gv.at/CodeSystem/elga-gtelvogdarollen",
      "code" : "300",
      "display" : "Allgemeine Krankenanstalt"
    }]
  }],
  "name" : "Testkrankenhaus",
  "contact" : [{
    "telecom" : [{
      "system" : "phone",
      "value" : "Contact details not provided"
    }],
    "address" : {
      "line" : ["Test Test Test"],
      "_line" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName",
          "valueString" : "Test"
        },
        {
          "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber",
          "valueString" : "1243"
        }]
      }],
      "city" : "Test",
      "state" : "Test",
      "postalCode" : "1234",
      "country" : "Test"
    }
  }]
}

```
