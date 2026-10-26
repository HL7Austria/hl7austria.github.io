# ELGA e-Med MedicationDispense Performer Function CodeSystem - ELGA e-Medikation (R4) DRAFT v0.1.0

## CodeSystem: ELGA e-Med MedicationDispense Performer Function CodeSystem (Experimental) 

This Code system is referenced in the definition of the following value sets:

* [ELGA e-Med MedicationDispense Performer Function ValueSet](ValueSet-AtElgaEmedValueSetMedicationDispensePerformerFunctionVS.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "AtElgaEmedValueSetMedicationDispensePerformerFunctionCS",
  "url" : "https://fhir.hl7.at/elga/emed/r4/CodeSystem/AtElgaEmedValueSetMedicationDispensePerformerFunctionCS",
  "version" : "0.1.0",
  "name" : "AtElgaEmedValueSetMedicationDispensePerformerFunctionCS",
  "title" : "ELGA e-Med MedicationDispense Performer Function CodeSystem",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-10-26T17:56:13+00:00",
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
  "description" : "Codesystem für zulässige Ausprägungen der MedicationDispense Performer Function.",
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "dispenseGDA",
    "display" : "Planeintrag verknüpfender GDA"
  },
  {
    "code" : "referenceGDA",
    "display" : "Abgebender GDA"
  }]
}

```
