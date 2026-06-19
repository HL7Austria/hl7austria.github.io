# HL7.AT.FHIR.CORE.R4\HL7ATCoreOrganizationExample02-MultipleVPNR - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HL7ATCoreOrganizationExample02-MultipleVPNR**

## Example Organization: HL7ATCoreOrganizationExample02-MultipleVPNR

Profile: [HL7® AT Core Organization Profile](StructureDefinition-at-core-organization.md)

**identifier**: [Uniform Resource Identifier (URI)](http://terminology.hl7.org/7.2.0/NamingSystem-uri.html)/urn:oid:1.2.40.0.34.3.1.1061, `urn:oid:1.2.40.0.10.1.4.3.2`/438968, `urn:oid:1.2.40.0.10.1.4.3.2`/833477

**type**: Allgemeine Krankenanstalt

**name**: Landeskrankenhaus Hall in Tirol

### Contacts

| | | |
| :--- | :--- | :--- |
| - | **Telecom** | **Address** |
| * | [info.pkh@tirol-kliniken.at](mailto:info.pkh@tirol-kliniken.at) | Milser Straße 10 Hall in Tirol Tirol 6060 AUT (work) |



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "HL7ATCoreOrganizationExample02-MultipleVPNR",
  "meta" : {
    "profile" : ["http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-organization"]
  },
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:1.2.40.0.34.3.1.1061",
    "assigner" : {
      "display" : "Bundesministerium für Gesundheit"
    }
  },
  {
    "system" : "urn:oid:1.2.40.0.10.1.4.3.2",
    "value" : "438968",
    "assigner" : {
      "display" : "Dachverband der österreichischen Sozialversicherungsträger"
    }
  },
  {
    "system" : "urn:oid:1.2.40.0.10.1.4.3.2",
    "value" : "833477",
    "assigner" : {
      "display" : "Dachverband der österreichischen Sozialversicherungsträger"
    }
  }],
  "type" : [{
    "coding" : [{
      "system" : "https://termgit.elga.gv.at/ValueSet/hl7-at-organizationtype",
      "code" : "300",
      "display" : "Allgemeine Krankenanstalt"
    }]
  }],
  "name" : "Landeskrankenhaus Hall in Tirol",
  "contact" : [{
    "telecom" : [{
      "system" : "email",
      "value" : "info.pkh@tirol-kliniken.at",
      "use" : "work"
    }],
    "address" : {
      "use" : "work",
      "type" : "both",
      "line" : ["Milser Straße 10"],
      "_line" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName",
          "valueString" : "Milser Straße"
        },
        {
          "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber",
          "valueString" : "10"
        }]
      }],
      "city" : "Hall in Tirol",
      "state" : "Tirol",
      "postalCode" : "6060",
      "country" : "AUT"
    }
  }]
}

```
