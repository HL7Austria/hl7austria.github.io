# at-elga-emed-searchparameter-list-mr-medication-code - ELGA e-Medikation (R4) DRAFT v0.1.0

## SearchParameter: at-elga-emed-searchparameter-list-mr-medication-code 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "at-elga-emed-searchparameter-list-mr-medication-code",
  "url" : "https://fhir.hl7.at/elga/emed/r4/SearchParameter/at-elga-emed-searchparameter-list-mr-medication-code",
  "version" : "0.1.0",
  "name" : "Medication Code",
  "status" : "active",
  "date" : "2026-10-09T16:18:46+00:00",
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
  "description" : "The code of the medication that is part of this MedicationRequest",
  "code" : "medicationrequest-medication-code",
  "base" : ["List"],
  "type" : "token",
  "expression" : "List.entry.item.resolve().ofType(MedicationRequest).medication.resolve().ofType(Medication).ingredient.item.ofType(CodeableConcept)"
}

```
