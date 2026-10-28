# AT e-Diagnose Reaktionszeit VS - ELGA e-Diagnose R4 v0.1.1

## ValueSet: AT e-Diagnose Reaktionszeit VS 

 **References** 

* [AT e-Diagnose Reaktionszeit](StructureDefinition-at-elga-ediag-ext-reaction-time.md)

* Dieses Value-Set wurde für die e-Diagnose entworfen und wird auf den [österreichischen e-Health Terminologieserver](https://termgit.elga.gv.at/) verschoben, abhängig vom Ergebnis des Ballots.

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "at-ediag-reaction-time",
  "url" : "https://fhir.hl7.at/elga/ediag/r4/ValueSet/at-ediag-reaction-time",
  "version" : "0.1.1",
  "name" : "AtEdiagReactionTime",
  "title" : "AT e-Diagnose Reaktionszeit VS",
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
  "description" : "ValueSet mit zulässigen Ausprägungen der Reaktionszeit einer allergischen Reaktion.",
  "compose" : {
    "include" : [{
      "system" : "https://fhir.hl7.at/elga/ediag/r4/CodeSystem/at-ediag-reaction-time"
    }]
  }
}

```
