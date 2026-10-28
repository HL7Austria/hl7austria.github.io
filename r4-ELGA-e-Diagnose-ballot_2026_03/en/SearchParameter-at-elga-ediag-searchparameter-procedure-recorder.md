# Procedure Recorder - ELGA e-Diagnose R4 v0.1.1

## SearchParameter: Procedure Recorder 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "at-elga-ediag-searchparameter-procedure-recorder",
  "url" : "https://fhir.hl7.at/elga/ediag/r4/SearchParameter/at-elga-ediag-searchparameter-procedure-recorder",
  "version" : "0.1.1",
  "name" : "ProcedureRecorder",
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
  "description" : "Erlaubt die Suche nach dem GDA, der die Prozedur in der e-Diagnose erfasst bzw. dokumentiert hat.",
  "code" : "recorder",
  "base" : ["Procedure"],
  "type" : "reference",
  "expression" : "Procedure.recorder"
}

```
