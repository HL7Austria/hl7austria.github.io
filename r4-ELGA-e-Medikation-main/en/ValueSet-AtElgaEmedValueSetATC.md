# ELGA Dosage Category Status ValueSet - ELGA e-Medikation (R4) DRAFT v0.1.0

## ValueSet: ELGA Dosage Category Status ValueSet (Experimental) 

 **References** 

* [AT ELGA e-Medikation Medication Magistrale Medikation](StructureDefinition-at-elga-emed-medication-magistrale-zubereitung.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unknown Code System)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "AtElgaEmedValueSetATC",
  "url" : "https://fhir.hl7.at/elga/emed/r4/ValueSet/AtElgaEmedValueSetATC",
  "version" : "0.1.0",
  "name" : "AtElgaEmedValueSetATC",
  "title" : "ELGA Dosage Category Status ValueSet",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-10-20T15:36:59+00:00",
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
      "system" : "https://termgit.elga.gv.at/CodeSystem/atc-deutsch-wido"
    }]
  }
}

```
