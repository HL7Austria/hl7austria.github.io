# AT ELGA e-Medikation OperationOutcome - ELGA e-Medikation (R4) DRAFT v0.1.0

## Resource Profile: AT ELGA e-Medikation OperationOutcome 

**Usages:**

* Use this Profile: [AT ELGA e-Medikation Parameters Out $dispense-discard](StructureDefinition-at-elga-emed-parameters-out-dispense-discard.md), [AT ELGA e-Medikation Parameters Out $dispense-write](StructureDefinition-at-elga-emed-parameters-out-dispense-write.md), [AT ELGA e-Medikation Parameters Out $groupidentifier-create](StructureDefinition-at-elga-emed-parameters-out-groupidentifier-create.md), [AT ELGA e-Medikation Parameters Out $groupidentifier-search](StructureDefinition-at-elga-emed-parameters-out-groupidentifier-search.md)... Show 5 more, [AT ELGA e-Medikation Parameters Out $plan-read](StructureDefinition-at-elga-emed-parameters-out-plan-read.md), [AT ELGA e-Medikation Parameters Out $plan-write](StructureDefinition-at-elga-emed-parameters-out-plan-write.md), [AT ELGA e-Medikation Parameters Out $prescription-discard](StructureDefinition-at-elga-emed-parameters-out-prescription-discard.md), [AT ELGA e-Medikation Parameters Out $prescription-write](StructureDefinition-at-elga-emed-parameters-out-prescription-write.md) and [AT ELGA e-Medikation Parameters Out $reference-plan](StructureDefinition-at-elga-emed-parameters-out-reference-plan.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.elga.emed.r4|current/StructureDefinition/StructureDefinition-at-elga-emed-operationoutcome.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-at-elga-emed-operationoutcome.csv), [Excel](../StructureDefinition-at-elga-emed-operationoutcome.xlsx), [Schematron](../StructureDefinition-at-elga-emed-operationoutcome.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-elga-emed-operationoutcome",
  "url" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-operationoutcome",
  "version" : "0.1.0",
  "name" : "AtElgaEmedOperationOutcome",
  "title" : "AT ELGA e-Medikation OperationOutcome",
  "status" : "active",
  "date" : "2026-10-27T21:19:55+00:00",
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
  "description" : "Dieses Profil gibt vor, welche Details im Rahmen der e-Medikation im Fehlerfall...",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "OperationOutcome",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/OperationOutcome",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "OperationOutcome",
      "path" : "OperationOutcome",
      "short" : "AT ELGA e-Medikation OperationOutcome"
    },
    {
      "id" : "OperationOutcome.issue.details",
      "path" : "OperationOutcome.issue.details",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.hl7.at/elga/emed/r4/ValueSet/at-elga-emed-operationoutcome-details"
      }
    }]
  }
}

```
