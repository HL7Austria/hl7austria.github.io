# Procedure Report - ELGA e-Diagnose R4 v0.1.1

## SearchParameter: Procedure Report 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "at-elga-ediag-searchparameter-procedure-report",
  "url" : "https://fhir.hl7.at/elga/ediag/r4/SearchParameter/at-elga-ediag-searchparameter-procedure-report",
  "version" : "0.1.1",
  "name" : "ProcedureReport",
  "status" : "active",
  "date" : "2026-10-28T08:57:40+00:00",
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
  "description" : "Erlaubt die Suche nach Verweisen auf e-Befunde als medizinische Evidenz.",
  "code" : "report",
  "base" : ["Procedure"],
  "type" : "reference",
  "expression" : "Procedure.report"
}

```
