# AT ELGA e-Medikation MedicationDispense Performer Function CodeSystem - ELGA e-Medikation (R4) DRAFT v0.1.0

## CodeSystem: AT ELGA e-Medikation MedicationDispense Performer Function CodeSystem 

This Code system is referenced in the definition of the following value sets:

* [AT ELGA e-Medikation MedicationDispense Performer Function ValueSet](ValueSet-at-elga-emed-valueset-medicationdispense-performer-function-vs.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "at-elga-emed-codesystem-medicationdispense-performer-function-cs",
  "url" : "https://fhir.hl7.at/elga/emed/r4/CodeSystem/at-elga-emed-codesystem-medicationdispense-performer-function-cs",
  "version" : "0.1.0",
  "name" : "AtElgaEmedValueSetMedicationDispensePerformerFunctionCS",
  "title" : "AT ELGA e-Medikation MedicationDispense Performer Function CodeSystem",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-10-29T16:50:58+00:00",
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
    "display" : "Abgebender GDA"
  },
  {
    "code" : "referenceGDA",
    "display" : "Planeintrag verknüpfender GDA"
  }]
}

```
