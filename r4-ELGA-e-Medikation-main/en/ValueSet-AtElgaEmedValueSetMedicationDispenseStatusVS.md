# ELGA MedicationDispense Status ValueSet - ELGA e-Medikation (R4) DRAFT v0.1.0

## ValueSet: ELGA MedicationDispense Status ValueSet (Experimental) 

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
  "id" : "AtElgaEmedValueSetMedicationDispenseStatusVS",
  "url" : "https://fhir.hl7.at/elga/emed/r4/ValueSet/AtElgaEmedValueSetMedicationDispenseStatusVS",
  "version" : "0.1.0",
  "name" : "AtElgaEmedValueSetMedicationDispenseStatusVS",
  "title" : "ELGA MedicationDispense Status ValueSet",
  "status" : "active",
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
  "description" : "Zulässige Ausprägungen des Status einer MedicationDispense-Ressource in ELGA.",
  "compose" : {
    "include" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/medicationdispense-status",
      "concept" : [{
        "code" : "completed"
      },
      {
        "code" : "cancelled"
      },
      {
        "code" : "entered-in-error"
      }]
    }]
  }
}

```
