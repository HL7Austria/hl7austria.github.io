# HL7.AT.FHIR.ELGA.EMED.R4\Beispiel Ärztin 02 - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel Ärztin 02**

## Example Practitioner: Beispiel Ärztin 02

Profile: [HL7® AT Core Practitioner Profile](http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/2.0.0/StructureDefinition-at-core-practitioner.html)

**identifier**: [Uniform Resource Identifier (URI)](http://terminology.hl7.org/6.2.0/NamingSystem-uri.html)/urn:oid:1.2.40.0.34.99.4613.4, `urn:oid:1.2.40.0.10.1.4.3.2`/987654322

**active**: true

**name**: Hermine Fremdmedikation 

**telecom**: [office@fremdmedikation.at](mailto:office@fremdmedikation.at), [+436500987654399](tel:+436500987654399)

**address**: Hauptstraße 7 Stiege 1 Unterstinkenbrunn Niederösterreich 2154 AUT (work)

**gender**: Female



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "At-Emed-Example-Practitioner-02",
  "meta" : {
    "profile" : ["http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-practitioner"]
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
    "value" : "987654322",
    "assigner" : {
      "display" : "Dachverband der österreichischen Sozialversicherungsträger"
    }
  }],
  "active" : true,
  "name" : [{
    "family" : "Fremdmedikation",
    "given" : ["Hermine"],
    "prefix" : ["Prof. Dr."]
  }],
  "telecom" : [{
    "system" : "email",
    "value" : "office@fremdmedikation.at",
    "use" : "work"
  },
  {
    "system" : "phone",
    "value" : "+436500987654399",
    "use" : "work"
  }],
  "address" : [{
    "use" : "work",
    "type" : "both",
    "line" : ["Hauptstraße 7 Stiege 1"],
    "_line" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName",
        "valueString" : "Hauptstraße"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber",
        "valueString" : "7"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-additionalLocator",
        "valueString" : "Stiege 1"
      },
      {
        "url" : "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-ext-address-additionalInformation",
        "valueString" : "Barrierefreier Zugang"
      }]
    }],
    "city" : "Unterstinkenbrunn",
    "state" : "Niederösterreich",
    "postalCode" : "2154",
    "country" : "AUT"
  }],
  "gender" : "female"
}

```
