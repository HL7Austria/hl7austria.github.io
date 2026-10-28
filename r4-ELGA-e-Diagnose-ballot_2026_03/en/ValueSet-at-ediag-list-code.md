# AT e-Diagnose List Code - ELGA e-Diagnose R4 v0.1.1

## ValueSet: AT e-Diagnose List Code 

 **References** 

* [AT e-Diagnose Summary-Liste](StructureDefinition-at-elga-ediag-list.md)

* Dieses Value-Set wurde für die e-Diagnose entworfen und wird auf den [österreichischen e-Health Terminologieserver](https://termgit.elga.gv.at/) verschoben, abhängig vom Ergebnis des Ballots.

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "at-ediag-list-code",
  "url" : "https://fhir.hl7.at/elga/ediag/r4/ValueSet/at-ediag-list-code",
  "version" : "0.1.1",
  "name" : "AtEdiagListCode",
  "title" : "AT e-Diagnose List Code",
  "status" : "draft",
  "experimental" : false,
  "date" : "2026-10-28T08:34:30+00:00",
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
