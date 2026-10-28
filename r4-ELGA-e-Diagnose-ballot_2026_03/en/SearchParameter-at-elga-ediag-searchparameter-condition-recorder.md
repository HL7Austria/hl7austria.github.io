# Condition Recorder - ELGA e-Diagnose R4 v0.1.1

## SearchParameter: Condition Recorder 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "at-elga-ediag-searchparameter-condition-recorder",
  "url" : "https://fhir.hl7.at/elga/ediag/r4/SearchParameter/at-elga-ediag-searchparameter-condition-recorder",
  "version" : "0.1.1",
  "name" : "ConditionRecorder",
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
  "description" : "Erlaubt die Suche nach dem GDA, der die Diagnose in der e-Diagnose erfasst bzw. dokumentiert hat.",
  "code" : "recorder",
  "base" : ["Condition"],
  "type" : "reference",
  "expression" : "Condition.recorder"
}

```
