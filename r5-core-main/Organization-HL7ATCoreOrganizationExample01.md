# HL7.AT.FHIR.CORE.R5\HL7ATCoreOrganizationExample01 - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HL7ATCoreOrganizationExample01**

## Example Organization: HL7ATCoreOrganizationExample01

Profile: [HL7® AT Core Organization Profile](StructureDefinition-at-core-organization.md)

**identifier**: [Uniform Resource Identifier (URI)](http://terminology.hl7.org/7.0.0/NamingSystem-uri.html)/urn:oid:1.2.40.0.34.99.4613.3, `urn:oid:1.2.40.0.34.4.10`/K101, `urn:oid:1.2.40.0.10.1.4.3.2`/123456789

**type**: Allgemeine Krankenanstalt

**name**: Amadeus Spital

### Contacts

| | | |
| :--- | :--- | :--- |
| - | **Telecom** | **Address** |
| * | [info@amadeusspital.at](mailto:info@amadeusspital.at),[+43.6138.3453446.0](tel:+43.6138.3453446.0) | Mozartgasse 1-7 Haupteingang St. Wolfgang Salzburg 5350 AUT (work) |



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "HL7ATCoreOrganizationExample01",
  "meta" : {
    "profile" : [
      "http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-organization"
    ]
  },
  "identifier" : [
    {
      "system" : "urn:ietf:rfc:3986",
      "value" : "urn:oid:1.2.40.0.34.99.4613.3",
      "assigner" : {
        "display" : "Bundesministerium für Gesundheit"
      }
    },
    {
      "system" : "urn:oid:1.2.40.0.34.4.10",
      "value" : "K101",
      "assigner" : {
        "display" : "Österreichisches Bundesministerium für Gesundheit"
      }
    },
    {
      "system" : "urn:oid:1.2.40.0.10.1.4.3.2",
      "value" : "123456789",
      "assigner" : {
        "display" : "Dachverband der österreichischen Sozialversicherungsträger"
      }
    }
  ],
  "type" : [
    {
      "coding" : [
        {
          "system" : "https://termgit.elga.gv.at/ValueSet/hl7-at-organizationtype",
          "code" : "300",
          "display" : "Allgemeine Krankenanstalt"
        }
      ]
    }
  ],
  "name" : "Amadeus Spital",
  "contact" : [
    {
      "telecom" : [
        {
          "system" : "email",
          "value" : "info@amadeusspital.at",
          "use" : "work"
        },
        {
          "system" : "phone",
          "value" : "+43.6138.3453446.0",
          "use" : "mobile"
        }
      ],
      "address" : {
        "use" : "work",
        "type" : "both",
        "line" : ["Mozartgasse 1-7 Haupteingang"],
        "_line" : [
          {
            "extension" : [
              {
                "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName",
                "valueString" : "Mozartgasse"
              },
              {
                "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber",
                "valueString" : "1-7"
              },
              {
                "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-additionalLocator",
                "valueString" : "Haupteingang"
              },
              {
                "url" : "http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-ext-address-additionalInformation",
                "valueString" : "Barrierefreier Zugang"
              }
            ]
          }
        ],
        "city" : "St. Wolfgang",
        "state" : "Salzburg",
        "postalCode" : "5350",
        "country" : "AUT"
      }
    }
  ]
}

```
