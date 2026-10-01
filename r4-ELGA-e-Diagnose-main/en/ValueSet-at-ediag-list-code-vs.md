# ELGA AT e-Diagnose List Entry Code Value Set - ELGA e-Diagnose R4 (Draft) v0.1.0

## ValueSet: ELGA AT e-Diagnose List Entry Code Value Set (Experimental) 

 
ValueSet mit zulässigen Codes für das Flag eines List-Entries in ELGA. 

 **References** 

* [AT ELGA e-Diagnose List](StructureDefinition-at-elga-ediag-list.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "at-ediag-list-code-vs",
  "url" : "https://fhir.hl7.at/elga/ediag/r4/ValueSet/at-ediag-list-code-vs",
  "version" : "0.1.0",
  "name" : "AtEdiagListCodeVS",
  "title" : "ELGA AT e-Diagnose List Entry Code Value Set",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-10-01T13:01:54+00:00",
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
  "description" : "ValueSet mit zulässigen Codes für das Flag eines List-Entries in ELGA.",
  "compose" : {
    "include" : [{
      "system" : "http://loinc.org",
      "concept" : [{
        "code" : "11450-4"
      },
      {
        "code" : "47519-4"
      },
      {
        "code" : "48765-2"
      }]
    }]
  }
}

```
