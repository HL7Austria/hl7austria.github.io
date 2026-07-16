# HL7.AT.FHIR.ELGA.EDIAG.R4\Beispiel Practitioner - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel Practitioner**

## Example Practitioner: Beispiel Practitioner

Profile: [AT ELGA Core Practitioner Profil](https://build.fhir.org/ig/HL7Austria/ELGA-Core-R4/StructureDefinition-at-elga-core-practitioner.html)

**identifier**: [Uniform Resource Identifier (URI)](http://terminology.hl7.org/7.0.1/NamingSystem-uri.html)/urn:oid:1.2.40.0.34.99.4613.4, `urn:oid:1.2.40.0.10.1.4.3.2`/987654321

**active**: true

**name**: Melanie Musterärztin 

**telecom**: [office@musterpraxis.at](mailto:office@musterpraxis.at), [+436500987654321](tel:+436500987654321)

**address**: Mozartgasse 8 Stiege 2 St. Wolfgang Salzburg 5350 AUT (work)

**gender**: Female



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "PractitionerExample",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/core/r4/StructureDefinition/at-elga-core-practitioner"]
  },
  "identifier" : [{
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
  }],
  "active" : true,
  "name" : [{
    "family" : "Musterärztin",
    "given" : ["Melanie"],
    "prefix" : ["Prof. Dr."]
  }],
  "telecom" : [{
    "system" : "email",
    "value" : "office@musterpraxis.at",
    "use" : "work"
  },
  {
    "system" : "phone",
    "value" : "+436500987654321",
    "use" : "work"
  }],
  "address" : [{
    "use" : "work",
    "type" : "both",
    "line" : ["Mozartgasse 8 Stiege 2"],
    "_line" : [{
      "extension" : [{
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
        "url" : "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-ext-address-additionalInformation",
        "valueString" : "Barrierefreier Zugang"
      }]
    }],
    "city" : "St. Wolfgang",
    "state" : "Salzburg",
    "postalCode" : "5350",
    "country" : "AUT"
  }],
  "gender" : "female"
}

```
