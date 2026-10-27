# AT ELGA e-Medikation SearchParameter List Medication Code - ELGA e-Medikation (R4) DRAFT v0.1.0

## SearchParameter: AT ELGA e-Medikation SearchParameter List Medication Code 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "at-elga-emed-searchparameter-list-mr-medication-code",
  "url" : "https://fhir.hl7.at/elga/emed/r4/SearchParameter/at-elga-emed-searchparameter-list-mr-medication-code",
  "version" : "0.1.0",
  "name" : "Medication Code",
  "status" : "active",
  "date" : "2026-10-27T13:46:50+00:00",
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
  "description" : "Suchparameter für den Code (PZN) eines Arzneimittels, das in einem MedicationRequest eines Medikationsplans (List) enthalten ist.",
  "code" : "medicationrequest-medication-code",
  "base" : ["List"],
  "type" : "token",
  "expression" : "List.entry.item.resolve().ofType(MedicationRequest).medication.resolve().ofType(Medication).code.ofType(CodeableConcept)"
}

```
