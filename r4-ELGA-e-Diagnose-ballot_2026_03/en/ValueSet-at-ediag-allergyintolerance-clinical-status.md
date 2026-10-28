# AT e-Diagnose AllergyIntolerance Clinical Status - ELGA e-Diagnose R4 v0.1.1

## ValueSet: AT e-Diagnose AllergyIntolerance Clinical Status 

 **References** 

* [AT e-Diagnose AllergyIntolerance](StructureDefinition-at-elga-ediag-allergyintolerance.md)

* Dieses Value-Set wurde für die e-Diagnose entworfen und wird auf den [österreichischen e-Health Terminologieserver](https://termgit.elga.gv.at/) verschoben, abhängig vom Ergebnis des Ballots.

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "at-ediag-allergyintolerance-clinical-status",
  "url" : "https://fhir.hl7.at/elga/ediag/r4/ValueSet/at-ediag-allergyintolerance-clinical-status",
  "version" : "0.1.1",
  "name" : "AtEdiagAllergyIntoleranceClinicalStatus",
  "title" : "AT e-Diagnose AllergyIntolerance Clinical Status",
  "status" : "draft",
  "experimental" : false,
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
  "description" : "Value-Set mit den für e-Diagnose zulässigen Ausprägungen von AllergyIntolerance.clinicalStatus (siehe Workflowmanagement: Erlaubte Kombinationen für AllergyIntolerance).",
  "compose" : {
    "include" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical",
      "version" : "1.0.1",
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
