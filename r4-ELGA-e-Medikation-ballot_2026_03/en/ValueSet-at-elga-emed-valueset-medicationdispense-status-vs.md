# AT ELGA e-Medikation MedicationDispense Status ValueSet - ELGA e-Medikation (R4) DRAFT v0.1.0

## ValueSet: AT ELGA e-Medikation MedicationDispense Status ValueSet 

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
  "id" : "at-elga-emed-valueset-medicationdispense-status-vs",
  "url" : "https://fhir.hl7.at/elga/emed/r4/ValueSet/at-elga-emed-valueset-medicationdispense-status-vs",
  "version" : "0.1.0",
  "name" : "AtElgaEmedValueSetMedicationDispenseStatusVS",
  "title" : "AT ELGA e-Medikation MedicationDispense Status ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-10-29T15:54:42+00:00",
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
