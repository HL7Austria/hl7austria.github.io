# HL7.AT.FHIR.ELGA.EMED.R4\Beispiel Organisation Hausärztin - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel Organisation Hausärztin**

## Example Organization: Beispiel Organisation Hausärztin

Profile: [HL7® AT Core Organization Profile](http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/2.0.0/StructureDefinition-at-core-organization.html)

**telecom**: [office@musterpraxis.at](mailto:office@musterpraxis.at), [+436500987654321](tel:+436500987654321)

**address**: Hausarzt-Straße 8 Stiege 2 St. Wolfgang Salzburg 5350 AUT (work)



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "At-Emed-Example-Organization-01",
  "meta" : {
    "profile" : ["http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-organization"]
  },
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
    "line" : ["Hausarzt-Straße 8 Stiege 2"],
    "_line" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName",
        "valueString" : "Hausarzt-Straße"
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
  }]
}

```
