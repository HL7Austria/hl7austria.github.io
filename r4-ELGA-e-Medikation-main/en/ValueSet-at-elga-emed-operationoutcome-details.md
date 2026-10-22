# ValueSet für AT e-Medikation OperationOutcome Details - ELGA e-Medikation (R4) DRAFT v0.1.0

## ValueSet: ValueSet für AT e-Medikation OperationOutcome Details 

 **References** 

* [AT ELGA e-Medikation OperationOutcome](StructureDefinition-at-elga-emed-operationoutcome.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "at-elga-emed-operationoutcome-details",
  "url" : "https://fhir.hl7.at/elga/emed/r4/ValueSet/at-elga-emed-operationoutcome-details",
  "version" : "0.1.0",
  "name" : "AtElgaEmedOperationOutcomeDetailsVS",
  "title" : "ValueSet für AT e-Medikation OperationOutcome Details",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-10-22T07:17:51+00:00",
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
  "description" : "Value-Set mit den für e-Medikation zulässigen detaillierten Fehlercodes.",
  "compose" : {
    "include" : [{
      "system" : "https://fhir.hl7.at/elga/emed/r4/CodeSystem/at-emed-codesystem-operationoutcome-details"
    }]
  }
}

```
