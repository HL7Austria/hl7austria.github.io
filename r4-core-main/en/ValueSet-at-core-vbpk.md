# HL7AT Core vbPK - HL7® Austria FHIR® Core Implementation Guide v2.1.0

## ValueSet: HL7AT Core vbPK 

 **References** 

* [HL7® AT Core Patient Profile](StructureDefinition-at-core-patient.md)
* [HL7® AT Core Practitioner Profile](StructureDefinition-at-core-practitioner.md)

This value set was designed for the HL7AT Core IGs (R4 and R5) and will be moved to the [Austrian e-Health terminology server](https://termgit.elga.gv.at), depending on the outcome of the ballot.

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "at-core-vbpk",
  "url" : "https://fhir.hl7.at/core/r4/ValueSet/at-core-vbpk",
  "version" : "2.1.0",
  "name" : "HL7ATCoreVBPK",
  "title" : "HL7AT Core vbPK",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-10-13T12:58:59+00:00",
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
