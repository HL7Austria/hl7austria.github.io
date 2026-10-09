# AT e-Diagnose AllergyIntolerance Clinical Status - ELGA e-Diagnose R4 (Draft) v0.1.0

## ValueSet: AT e-Diagnose AllergyIntolerance Clinical Status (Experimental) 

 **References** 

* [AT ELGA e-Diagnose AllergyIntolerance](StructureDefinition-at-elga-ediag-allergyintolerance.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "at-ediag-allergyintolerance-clinical-status-vs",
  "url" : "https://fhir.hl7.at/elga/ediag/r4/ValueSet/at-ediag-allergyintolerance-clinical-status-vs",
  "version" : "0.1.0",
  "name" : "AtEdiagAllergyIntoleranceClinicalStatusVS",
  "title" : "AT e-Diagnose AllergyIntolerance Clinical Status",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-10-09T08:42:14+00:00",
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
  "description" : "Value-Set mit den für e-Diagnose zulässigen Ausprägungen von AllergyIntolerance.clinicalStatus (siehe Workflowmanagement: Erlaubte Kombinationen für AllergyIntolerance).",
  "compose" : {
    "include" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical",
      "concept" : [{
        "code" : "active",
        "display" : "Active"
      },
      {
        "code" : "resolved",
        "display" : "Resolved"
      }]
    }]
  }
}

```
