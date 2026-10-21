# ELGA e-Med MedicationDispense Performer Function ValueSet - ELGA e-Medikation (R4) DRAFT v0.1.0

## ValueSet: ELGA e-Med MedicationDispense Performer Function ValueSet (Experimental) 

 **References** 

* [AT ELGA e-Medikation MedicationDispense Durchgeführte Abgabe](StructureDefinition-at-elga-emed-medicationdispense-durchgefuehrteabgabe.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "AtElgaEmedValueSetMedicationDispensePerformerFunctionVS",
  "url" : "https://fhir.hl7.at/elga/emed/r4/ValueSet/AtElgaEmedValueSetMedicationDispensePerformerFunctionVS",
  "version" : "0.1.0",
  "name" : "AtElgaEmedValueSetMedicationDispensePerformerFunctionVS",
  "title" : "ELGA e-Med MedicationDispense Performer Function ValueSet",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-10-21T10:08:52+00:00",
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
  "description" : "ValueSet für zulässige Ausprägungen der MedicationDispense Performer Function.",
  "compose" : {
    "include" : [{
      "system" : "https://fhir.hl7.at/elga/emed/r4/CodeSystem/AtElgaEmedValueSetMedicationDispensePerformerFunctionCS"
    }]
  }
}

```
