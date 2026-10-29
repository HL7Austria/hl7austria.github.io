# AT ELGA e-Medikation Geplante Abgabe Status ValueSet - ELGA e-Medikation (R4) DRAFT v0.1.0

## ValueSet: AT ELGA e-Medikation Geplante Abgabe Status ValueSet (Experimental) 

 **References** 

* [AT ELGA e-Medikation MedicationRequest Geplante Abgabe](StructureDefinition-at-elga-emed-medicationrequest-geplanteabgabe.md)

### Logical Definition (CLD)

 

### Expansion

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "at-elga-emed-valueset-geplanteabgabestatus-vs",
  "url" : "https://fhir.hl7.at/elga/emed/r4/ValueSet/at-elga-emed-valueset-geplanteabgabestatus-vs",
  "version" : "0.1.0",
  "name" : "GeplanteAbgabeStatusVS",
  "title" : "AT ELGA e-Medikation Geplante Abgabe Status ValueSet",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-10-29T14:50:53+00:00",
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
  "description" : "ValueSet für zulässige Ausprägungen eines Status einer Geplanten Abgabe (MedicationRequest).",
  "compose" : {
    "include" : [{
      "system" : "http://hl7.org/fhir/CodeSystem/medicationrequest-status",
      "version" : "4.0.1",
      "concept" : [{
        "code" : "active"
      },
      {
        "code" : "completed"
      },
      {
        "code" : "entered-in-error"
      },
      {
        "code" : "stopped"
      },
      {
        "code" : "cancelled"
      }]
    }]
  }
}

```
