# HL7.AT.FHIR.ELGA.EMED.R4\at-elga-emed-searchparameter-list-mr-medication-code - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **at-elga-emed-searchparameter-list-mr-medication-code**

## SearchParameter: at-elga-emed-searchparameter-list-mr-medication-code 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/emed/r4/SearchParameter/at-elga-emed-searchparameter-list-mr-medication-code | *Version*:0.1.0 | |
| Active as of 2026-10-02 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:Medication Code |

 
The code of the medication that is part of this MedicationRequest 



## Resource Content

```json
{
  "resourceType" : "SearchParameter",
  "id" : "at-elga-emed-searchparameter-list-mr-medication-code",
  "url" : "https://fhir.hl7.at/elga/emed/r4/SearchParameter/at-elga-emed-searchparameter-list-mr-medication-code",
  "version" : "0.1.0",
  "name" : "Medication Code",
  "status" : "active",
  "date" : "2026-10-02T13:24:17+00:00",
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
