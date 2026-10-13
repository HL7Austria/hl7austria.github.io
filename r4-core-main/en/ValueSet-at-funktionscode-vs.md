# ValueSet for Austrian Funktionscodes Excerpt - HL7® Austria FHIR® Core Implementation Guide v2.1.0

## ValueSet: ValueSet for Austrian Funktionscodes Excerpt (Experimental) 

 **References** 

* [HL7® AT Core HealthcareService Profile](StructureDefinition-at-core-HealthcareService.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "at-funktionscode-vs",
  "url" : "https://fhir.hl7.at/core/r4/ValueSet/at-funktionscode-vs",
  "version" : "2.1.0",
  "name" : "HealthcareServiceSpecialtyVS",
  "title" : "ValueSet for Austrian Funktionscodes Excerpt",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-10-13T06:32:12+00:00",
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
  "description" : "ValueSet for Austrian Funktionscodes Excerpt",
  "compose" : {
    "include" : [{
      "system" : "https://fhir.hl7.at/core/r4/CodeSystem/at-core-funktionscode"
    }]
  }
}

```
