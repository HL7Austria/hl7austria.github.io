# HL7.AT.FHIR.CORE.R4\HL7AT Core vbPK - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HL7AT Core vbPK**

## ValueSet: HL7AT Core vbPK 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/ValueSet/at-core-vbpk | *Version*:2.1.0 | |
| Active as of 2026-06-18 | *Responsible:*[HL7® Austria, TC FHIR®](https://hl7.at/technische-komitees/tc-fhir/) | *Computable Name*:HL7ATCoreVBPK |

 
This value set contains the OIDs for the vbPK (Verschlüsseltes bereichsspezifisches Personenkennzeichen) in Austria according to [E-Government-Bereichsabgrenzungsverordnung – E-Gov-BerAbgrV](https://www.ris.bka.gv.at/GeltendeFassung.wxe?Abfrage=Bundesnormen&Gesetzesnummer=20003476). 

 **References** 

* [HL7® AT Core Base Patient Profile](StructureDefinition-at-core-patient-base.md)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "at-core-vbpk",
  "url" : "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/ValueSet/at-core-vbpk",
  "version" : "2.1.0",
  "name" : "HL7ATCoreVBPK",
  "title" : "HL7AT Core vbPK",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-18T09:39:20+00:00",
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
  "description" : "This value set contains the OIDs for the vbPK (Verschlüsseltes bereichsspezifisches Personenkennzeichen) in Austria according to [E-Government-Bereichsabgrenzungsverordnung – E-Gov-BerAbgrV](https://www.ris.bka.gv.at/GeltendeFassung.wxe?Abfrage=Bundesnormen&Gesetzesnummer=20003476).",
  "compose" : {
    "include" : [{
      "system" : "urn:ietf:rfc:3986",
      "concept" : [{
        "code" : "urn:oid:1.2.40.0.34.4.22.1",
        "display" : "vbPK GH"
      },
      {
        "code" : "urn:oid:1.2.40.0.34.4.22.2",
        "display" : "vbPK SV"
      },
      {
        "code" : "urn:oid:1.2.40.0.34.4.22.3",
        "display" : "vbPK AS"
      }]
    }]
  }
}

```
