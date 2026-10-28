# Procedure Asserter - ELGA e-Diagnose R4 v0.1.1

## SearchParameter: Procedure Asserter 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "at-elga-ediag-searchparameter-procedure-asserter",
  "url" : "https://fhir.hl7.at/elga/ediag/r4/SearchParameter/at-elga-ediag-searchparameter-procedure-asserter",
  "version" : "0.1.1",
  "name" : "ProcedureAsserter",
  "status" : "active",
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
  "description" : "Erlaubt die Suche nach der Quelle der Information zur Prozedur, z. B. Patient, behandelnde Person oder Dritter.",
  "code" : "asserter",
  "base" : ["Procedure"],
  "type" : "reference",
  "expression" : "asserter"
}

```
