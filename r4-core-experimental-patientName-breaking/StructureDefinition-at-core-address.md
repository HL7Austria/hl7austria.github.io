# HL7.AT.FHIR.CORE.R4\HL7® AT Core Address Profile - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HL7® AT Core Address Profile**

## Data Type Profile: HL7® AT Core Address Profile 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-address | *Version*:2.1.0 | |
| Active as of 2026-06-18 | *Responsible:*[HL7® Austria, TC FHIR®](https://hl7.at/technische-komitees/tc-fhir/) | *Computable Name*:HL7ATCoreAddress |

 
HL7® Austria FHIR® Core Profile for address data in Austria. Note, this extension represents the common structure of address information within Austrian information systems. This extension does not restrict the documented information to Austrian adresses. Address information that does not fit into the given structure may be captured by [Address Additional Information](StructureDefinition-at-core-ext-address-additionalInformation.md). 

**Usages:**

* Use this DataType Profile: [HL7® AT Core Location Profile](StructureDefinition-at-core-location.md), [HL7® AT Core Organization Profile](StructureDefinition-at-core-organization.md), [HL7® AT Core Patient Profile](StructureDefinition-at-core-patient.md) and [HL7® AT Core Practitioner Profile](StructureDefinition-at-core-practitioner.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.core.r4|current/StructureDefinition/StructureDefinition-at-core-address.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-core-address.csv), [Excel](StructureDefinition-at-core-address.xlsx), [Schematron](StructureDefinition-at-core-address.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-core-address",
  "url" : "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-address",
  "version" : "2.1.0",
  "name" : "HL7ATCoreAddress",
  "title" : "HL7® AT Core Address Profile",
  "status" : "active",
  "date" : "2026-06-18T09:16:06+00:00",
  "publisher" : "HL7® Austria, TC FHIR®",
  "contact" : [{
    "name" : "HL7® Austria, TC FHIR®",
    "telecom" : [{
      "system" : "url",
      "value" : "https://hl7.at/technische-komitees/tc-fhir/"
    }]
  },
  {
    "name" : "Technical Committee for FHIR® at HL7® Austria",
    "telecom" : [{
      "system" : "email",
      "value" : "mailto:tc-fhir@hl7.at"
    }]
  }],
  "description" : "HL7® Austria FHIR® Core Profile for address data in Austria. Note, this extension represents the common structure of address information within Austrian information systems. This extension does not restrict the documented information to Austrian adresses. Address information that does not fit into the given structure may be captured by [Address Additional Information](StructureDefinition-at-core-ext-address-additionalInformation.html).",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "servd",
    "uri" : "http://www.omg.org/spec/ServD/1.0/",
    "name" : "ServD"
  },
  {
    "identity" : "vcard",
    "uri" : "http://w3.org/vcard",
    "name" : "vCard Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "Address",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Address",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Address",
      "path" : "Address",
      "constraint" : [{
        "key" : "at-addr-1",
        "severity" : "error",
        "human" : "If the extension for street name is used then the value for line must not be empty",
        "expression" : "line.all($this.extension('http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName').empty() or $this.hasValue())",
        "source" : "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-address"
      },
      {
        "key" : "at-addr-2",
        "severity" : "error",
        "human" : "If the extension for street number is used then the value for line must not be empty",
        "expression" : "line.all($this.extension('http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber').empty() or $this.hasValue())",
        "source" : "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-address"
      },
      {
        "key" : "at-addr-3",
        "severity" : "error",
        "human" : "If the extension for floor/door number is used then the value for line must not be empty",
        "expression" : "line.all($this.extension('http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-additionalLocator').empty() or $this.hasValue())",
        "source" : "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-address"
      }]
    },
    {
      "id" : "Address.extension:municipalityCode",
      "path" : "Address.extension",
      "sliceName" : "municipalityCode",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-ext-address-municipalityCode"]
      }]
    },
    {
      "id" : "Address.line",
      "path" : "Address.line",
      "definition" : "This component contains the street name, street number, floor and/or door number or additonal information (e.g. street direction, P.O. Box number, delivery hints, and similar address information). This information can be split into structured values in the line-components each defined by international ISO extensions. If these extensions are used then the information they contain has to be written in a concatenated way in the line element itself as well. This makes the usage easier for systems which don't use address data in a structured way."
    },
    {
      "id" : "Address.line.extension",
      "path" : "Address.line.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Address.line.extension:street",
      "path" : "Address.line.extension",
      "sliceName" : "street",
      "short" : "Name of the street",
      "definition" : "Name of the street without the street number",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName"]
      }]
    },
    {
      "id" : "Address.line.extension:streetNumber",
      "path" : "Address.line.extension",
      "sliceName" : "streetNumber",
      "short" : "Number of the street",
      "definition" : "Number of the street without the street name",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber"]
      }]
    },
    {
      "id" : "Address.line.extension:floorDoorNumber",
      "path" : "Address.line.extension",
      "sliceName" : "floorDoorNumber",
      "short" : "Floor and/or door number",
      "definition" : "Floor and/or door number",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-additionalLocator"]
      }]
    },
    {
      "id" : "Address.line.extension:additionalInformation",
      "path" : "Address.line.extension",
      "sliceName" : "additionalInformation",
      "short" : "Additional Information",
      "definition" : "Additional information about the street address",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-ext-address-additionalInformation"]
      }]
    },
    {
      "id" : "Address.district",
      "path" : "Address.district",
      "max" : "0"
    },
    {
      "id" : "Address.period",
      "path" : "Address.period",
      "max" : "0"
    }]
  }
}

```
