# ELGA e-Med Medikationsplaneintrag Status ValueSet - ELGA e-Medikation (R4) DRAFT v0.1.0

## ValueSet: ELGA e-Med Medikationsplaneintrag Status ValueSet (Experimental) 

 **References** 

* [At ELGA e-Medikation MedicationRequest Planeintrag](StructureDefinition-at-elga-emed-medicationrequest-planeintrag.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "PlaneintragStatusVS",
  "url" : "https://fhir.hl7.at/elga/emed/r4/ValueSet/PlaneintragStatusVS",
  "version" : "0.1.0",
  "name" : "PlaneintragStatusVS",
  "title" : "ELGA e-Med Medikationsplaneintrag Status ValueSet",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-10-22T12:03:52+00:00",
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
  "description" : "ValueSet für zulässige Ausprägungen eines Status eines Medikationsplaneintrags (MedicationRequest).",
  "compose" : {
    "include" : [{
      "system" : "http://hl7.org/fhir/CodeSystem/medicationrequest-status",
      "version" : "4.0.1",
      "concept" : [{
        "code" : "active"
      },
      {
        "code" : "on-hold"
      },
      {
        "code" : "stopped"
      },
      {
        "code" : "entered-in-error"
      },
      {
        "code" : "completed"
      }]
    }]
  }
}

```
