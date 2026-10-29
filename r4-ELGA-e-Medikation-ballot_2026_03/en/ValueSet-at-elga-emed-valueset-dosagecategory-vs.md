# AT ELGA e-Medikation Dosage Category Status ValueSet - ELGA e-Medikation (R4) DRAFT v0.1.0

## ValueSet: AT ELGA e-Medikation Dosage Category Status ValueSet 

 **References** 

* [AT ELGA e-Medikation Extension Dosierungskategorie](StructureDefinition-at-elga-emed-extension-dosage-category.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "at-elga-emed-valueset-dosagecategory-vs",
  "url" : "https://fhir.hl7.at/elga/emed/r4/ValueSet/at-elga-emed-valueset-dosagecategory-vs",
  "version" : "0.1.0",
  "name" : "AtElgaEmedValueSetDosageCategory",
  "title" : "AT ELGA e-Medikation Dosage Category Status ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-10-29T16:50:58+00:00",
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
  "description" : "Zulässige Ausprägungen der Kategorie einer Dosierung in ELGA.",
  "compose" : {
    "include" : [{
      "system" : "https://fhir.hl7.at/elga/emed/r4/CodeSystem/at-elga-emed-codesystem-dosagecategory-cs"
    }]
  }
}

```
