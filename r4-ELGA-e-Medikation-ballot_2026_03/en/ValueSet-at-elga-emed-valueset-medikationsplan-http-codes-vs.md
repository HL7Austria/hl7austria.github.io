# AT ELGA e-Medikation ValueSet Medikationsplan HTTP Codes - ELGA e-Medikation (R4) DRAFT v0.1.0

## ValueSet: AT ELGA e-Medikation ValueSet Medikationsplan HTTP Codes 

 **References** 

* [AT ELGA e-Medikation Transaction Bundle Medikationsplan](StructureDefinition-at-elga-emed-bundle-medikationsplantx.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "at-elga-emed-valueset-medikationsplan-http-codes-vs",
  "url" : "https://fhir.hl7.at/elga/emed/r4/ValueSet/at-elga-emed-valueset-medikationsplan-http-codes-vs",
  "version" : "0.1.0",
  "name" : "AtElgaEmedValueSetMedikationsplanHTTPCodes",
  "title" : "AT ELGA e-Medikation ValueSet Medikationsplan HTTP Codes",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-10-29T15:54:42+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "http://elga.gv.at"
    }]
  },
  {
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at",
      "use" : "work"
    }]
  }],
  "description" : "ValueSet für die zulässigen HTTP Codes beim Medikationsplan schreiben",
  "compose" : {
    "include" : [{
      "system" : "http://hl7.org/fhir/http-verb",
      "version" : "4.0.1",
      "concept" : [{
        "code" : "POST"
      },
      {
        "code" : "PUT"
      }]
    }]
  }
}

```
