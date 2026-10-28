# AllergyIntolerance Evidence - ELGA e-Diagnose R4 v0.1.1

## SearchParameter: AllergyIntolerance Evidence 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "at-elga-ediag-searchparameter-allergyintolerance-evidence",
  "url" : "https://fhir.hl7.at/elga/ediag/r4/SearchParameter/at-elga-ediag-searchparameter-allergyintolerance-evidence",
  "version" : "0.1.1",
  "name" : "AllergyIntoleranceEvidence",
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
  "description" : "Erlaubt die Suche nach Verweisen auf e-Befunde als medizinische Evidenz.",
  "code" : "evidence",
  "base" : ["AllergyIntolerance"],
  "type" : "reference",
  "expression" : "AllergyIntolerance.extension('https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-ext-evidence').value.ofType(Reference)"
}

```
