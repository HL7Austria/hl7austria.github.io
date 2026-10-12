# AT e-Diagnose Condition Clinical Status - ELGA e-Diagnose R4 (Draft) v0.1.0

## ValueSet: AT e-Diagnose Condition Clinical Status (Experimental) 

 **References** 

* [AT ELGA e-Diagnose Condition](StructureDefinition-at-elga-ediag-condition.md)

* Dieses Value-Set wurde für die e-Diagnose entworfen und wird auf den [österreichische e-Health Terminologieserver](https://termgit.elga.gv.at/) verschoben, abhängig vom Ergebnis des Ballots.

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "at-ediag-condition-clinical-status-vs",
  "url" : "https://fhir.hl7.at/elga/ediag/r4/ValueSet/at-ediag-condition-clinical-status-vs",
  "version" : "0.1.0",
  "name" : "AtEdiagConditionClinicalStatusVS",
  "title" : "AT e-Diagnose Condition Clinical Status",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-10-12T14:06:36+00:00",
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
  "description" : "Value-Set mit den für e-Diagnose zulässigen Ausprägungen von Condition.clinicalStatus (siehe Workflowmanagement: Erlaubte Kombinationen für Condition).",
  "compose" : {
    "include" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
      "concept" : [{
        "code" : "active",
        "display" : "Active"
      },
      {
        "code" : "inactive",
        "display" : "Inactive"
      }]
    }]
  }
}

```
