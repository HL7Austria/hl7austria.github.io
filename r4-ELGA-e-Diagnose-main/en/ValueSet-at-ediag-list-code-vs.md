# ELGA AT e-Diagnose List Entry Code - ELGA e-Diagnose R4 v0.1.0

## ValueSet: ELGA AT e-Diagnose List Entry Code (Experimental) 

 **References** 

* [AT ELGA e-Diagnose List](StructureDefinition-at-elga-ediag-list.md)

* Dieses Value-Set wurde für die e-Diagnose entworfen und wird auf den [österreichische e-Health Terminologieserver](https://termgit.elga.gv.at/) verschoben, abhängig vom Ergebnis des Ballots.

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
  "title" : "ELGA AT e-Diagnose List Entry Code",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-10-16T09:08:48+00:00",
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
  "description" : "ValueSet mit zulässigen Codes für Summary-Listen.",
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
