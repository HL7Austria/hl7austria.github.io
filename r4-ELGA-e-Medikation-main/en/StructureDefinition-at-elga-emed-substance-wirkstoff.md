# At ELGA e-Medikation Substance Wirkstoff - ELGA e-Medikation (R4) DRAFT v0.1.0

## Resource Profile: At ELGA e-Medikation Substance Wirkstoff 

**Usages:**

* Refer to this Profile: [AT ELGA e-Medikation Medication Magistrale Medikation](StructureDefinition-at-elga-emed-medication-magistrale-zubereitung.md) and [AT ELGA e-Medikation Medication Medikation](StructureDefinition-at-elga-emed-medication-standard-medikation.md)
* Examples for this Profile: [Substance/At-Emed-Example-Substance-Clotrimazol](Substance-At-Emed-Example-Substance-Clotrimazol.md) and [Substance/At-Emed-Example-Substance-Hydrocortison](Substance-At-Emed-Example-Substance-Hydrocortison.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.elga.emed.r4|current/StructureDefinition/StructureDefinition-at-elga-emed-substance-wirkstoff.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-at-elga-emed-substance-wirkstoff.csv), [Excel](../StructureDefinition-at-elga-emed-substance-wirkstoff.xlsx), [Schematron](../StructureDefinition-at-elga-emed-substance-wirkstoff.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-elga-emed-substance-wirkstoff",
  "url" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-substance-wirkstoff",
  "version" : "0.1.0",
  "name" : "AtElgaEmedSubstanceWirkstoff",
  "title" : "At ELGA e-Medikation Substance Wirkstoff",
  "status" : "draft",
  "date" : "2026-10-14T10:33:13+00:00",
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
  "description" : "Dokumentation des Wirkstoffs eines Arzneimittels in der ELGA e-Medikation, sofern es nicht kodiert vorliegt.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "orim",
    "uri" : "http://hl7.org/orim",
    "name" : "Ontological RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Substance",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Substance",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Substance",
      "path" : "Substance"
    }]
  }
}

```
