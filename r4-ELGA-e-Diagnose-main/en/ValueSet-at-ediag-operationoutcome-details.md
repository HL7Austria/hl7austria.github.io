# AT e-Diagnose OperationOutcome Details - ELGA e-Diagnose R4 (Draft) v0.1.0

## ValueSet: AT e-Diagnose OperationOutcome Details 

 **References** 

* [AT ELGA e-Diagnose OperationOutcome](StructureDefinition-at-elga-ediat-operationoutcome.md)

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
  "version" : "0.1.0",
  "name" : "AtEdiagOperationOutcomeDetailsVS",
  "title" : "AT e-Diagnose OperationOutcome Details",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-10-09T09:07:37+00:00",
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
      "system" : "https://fhir.hl7.at/elga/ediag/r4/CodeSystem/at-ediag-codesystem-operationoutcome-details"
    }]
  }
}

```
