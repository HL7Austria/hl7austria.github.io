# AT e-Diagnose Condition Verification Status - ELGA e-Diagnose R4 (Draft) v0.1.0

## ValueSet: AT e-Diagnose Condition Verification Status (Experimental) 

 **References** 

* [AT ELGA e-Diagnose Condition](StructureDefinition-at-elga-ediag-condition.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "at-ediag-condition-verification-status-vs",
  "url" : "https://fhir.hl7.at/elga/ediag/r4/ValueSet/at-ediag-condition-verification-status-vs",
  "version" : "0.1.0",
  "name" : "AtEdiagConditionVerificationStatusVS",
  "title" : "AT e-Diagnose Condition Verification Status",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-10-08T15:20:56+00:00",
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
  "description" : "Value-Set mit den für e-Diagnose zulässigen Ausprägungen von Condition.verificationStatus (siehe Workflowmanagement: Erlaubte Kombinationen für Condition). Gesicherte Diagnosen (active) sowie Zustand nach (inactive) werden ohne verificationStatus erfasst.",
  "compose" : {
    "include" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
      "concept" : [{
        "code" : "provisional",
        "display" : "Provisional"
      },
      {
        "code" : "differential",
        "display" : "Differential"
      },
      {
        "code" : "refuted",
        "display" : "Refuted"
      }]
    }]
  }
}

```
