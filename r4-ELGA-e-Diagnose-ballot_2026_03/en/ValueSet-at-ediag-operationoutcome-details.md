# AT e-Diagnose OperationOutcome Details VS - ELGA e-Diagnose R4 v0.1.1

## ValueSet: AT e-Diagnose OperationOutcome Details VS 

 **References** 

* [AT e-Diagnose OperationOutcome](StructureDefinition-at-elga-ediag-operationoutcome.md)

* Dieses Value-Set wurde für die e-Diagnose entworfen und wird auf den [österreichischen e-Health Terminologieserver](https://termgit.elga.gv.at/) verschoben, abhängig vom Ergebnis des Ballots.
* Dieses Value-Set ist aktuell leer, weil noch keine detaillierten Fehlercodes der e-Diagnose-Fachanwendung bekannt sind.

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "at-ediag-operationoutcome-details",
  "url" : "https://fhir.hl7.at/elga/ediag/r4/ValueSet/at-ediag-operationoutcome-details",
  "version" : "0.1.1",
  "name" : "AtEdiagOperationOutcomeDetails",
  "title" : "AT e-Diagnose OperationOutcome Details VS",
  "status" : "draft",
  "experimental" : false,
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
  "description" : "Value-Set mit den für e-Diagnose zulässigen detaillierten Fehlercodes.",
  "compose" : {
    "include" : [{
      "system" : "https://fhir.hl7.at/elga/ediag/r4/CodeSystem/at-ediag-operationoutcome-details"
    }]
  }
}

```
