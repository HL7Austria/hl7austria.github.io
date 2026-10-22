# ELGA MedicationDispense Type ValueSet - ELGA e-Medikation (R4) DRAFT v0.1.0

## ValueSet: ELGA MedicationDispense Type ValueSet (Experimental) 

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
  "id" : "at-elga-emed-medicationdispense-type-vs",
  "url" : "https://fhir.hl7.at/elga/emed/r4/ValueSet/at-elga-emed-medicationdispense-type-vs",
  "version" : "0.1.0",
  "name" : "AtElgaEmedMedicationDispenseTypeVS",
  "title" : "ELGA MedicationDispense Type ValueSet",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-10-22T11:28:40+00:00",
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
  "description" : "ValueSet für zulässige Ausprägungen des Elements type einer MedicationDispense.",
  "compose" : {
    "include" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
      "version" : "11.0.0",
      "concept" : [{
        "code" : "FFC"
      },
      {
        "code" : "FFP"
      },
      {
        "code" : "RFP"
      },
      {
        "code" : "RFC"
      },
      {
        "code" : "EM"
      }]
    }]
  }
}

```
