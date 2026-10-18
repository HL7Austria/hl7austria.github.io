# ELGA e-Med Durchgeführte Abgabe Status Value Set - ELGA e-Medikation (R4) DRAFT v0.1.0

## ValueSet: ELGA e-Med Durchgeführte Abgabe Status Value Set (Experimental) 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "DurchgefuehrteAbgabeStatusVS",
  "url" : "https://fhir.hl7.at/elga/emed/r4/ValueSet/DurchgefuehrteAbgabeStatusVS",
  "version" : "0.1.0",
  "name" : "DurchgefuehrteAbgabeStatusVS",
  "title" : "ELGA e-Med Durchgeführte Abgabe Status Value Set",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-10-18T08:01:40+00:00",
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
  "description" : "ValueSet für zulässige Ausprägungen eines Status einer Durchgeführten Abgabe (MedicationDispense).",
  "compose" : {
    "include" : [{
      "system" : "http://hl7.org/fhir/CodeSystem/medicationdispense-status",
      "concept" : [{
        "code" : "completed"
      },
      {
        "code" : "entered-in-error"
      },
      {
        "code" : "cancelled"
      }]
    }]
  }
}

```
