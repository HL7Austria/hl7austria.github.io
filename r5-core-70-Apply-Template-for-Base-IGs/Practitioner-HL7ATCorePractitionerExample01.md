# HL7.AT.FHIR.CORE.R5\HL7ATCorePractitionerExample01 - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HL7ATCorePractitionerExample01**

## Example Practitioner: HL7ATCorePractitionerExample01

Profile: [HL7® AT Core Practitioner Profile](StructureDefinition-at-core-practitioner.md)

**identifier**: [Uniform Resource Identifier (URI)](http://terminology.hl7.org/6.5.0/NamingSystem-uri.html)/urn:oid:1.2.40.0.34.99.4613.4, `urn:oid:1.2.40.0.10.1.4.3.2`/987654321

**active**: true

**name**: Melanie Musterärztin 

**telecom**: [office@musterpraxis.at](mailto:office@musterpraxis.at), [+436500987654321](tel:+436500987654321)

**gender**: Female

**address**: Mozartgasse 8 Stiege 2 St. Wolfgang Salzburg 5350 AUT (work)



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "HL7ATCorePractitionerExample01",
  "meta" : {
    "profile" : [
      "http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-practitioner"
    ]
  },
  "identifier" : [
    {
      "system" : "urn:ietf:rfc:3986",
      "value" : "urn:oid:1.2.40.0.34.99.4613.4",
      "assigner" : {
        "display" : "Bundesministerium für Gesundheit"
      }
    },
    {
      "system" : "urn:oid:1.2.40.0.10.1.4.3.2",
      "value" : "987654321",
      "assigner" : {
        "display" : "Dachverband der österreichischen Sozialversicherungsträger"
      }
    }
  ],
  "active" : true,
  "name" : [
    {
      "family" : "Musterärztin",
      "given" : ["Melanie"],
      "prefix" : ["Prof. Dr."]
    }
  ],
  "telecom" : [
    {
      "system" : "email",
      "value" : "office@musterpraxis.at",
      "use" : "work"
    },
    {
      "system" : "phone",
      "value" : "+436500987654321",
      "use" : "work"
    }
  ],
  "gender" : "female",
  "address" : [
    {
      "use" : "work",
      "type" : "both",
      "line" : ["Mozartgasse 8 Stiege 2"],
      "_line" : [
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName",
              "valueString" : "Mozartgasse"
            },
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber",
              "valueString" : "8"
            },
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-additionalLocator",
              "valueString" : "Stiege 2"
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
  ]
}

```
