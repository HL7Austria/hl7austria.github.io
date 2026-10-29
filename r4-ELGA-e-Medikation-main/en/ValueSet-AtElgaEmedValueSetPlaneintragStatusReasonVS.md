# ELGA e-Med Medikationsplaneintrag StatusReason ValueSet - ELGA e-Medikation (R4) DRAFT v0.1.0

## ValueSet: ELGA e-Med Medikationsplaneintrag StatusReason ValueSet (Experimental) 

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
  "id" : "AtElgaEmedValueSetPlaneintragStatusReasonVS",
  "url" : "https://fhir.hl7.at/elga/emed/r4/ValueSet/AtElgaEmedValueSetPlaneintragStatusReasonVS",
  "version" : "0.1.0",
  "name" : "AtElgaEmedValueSetPlaneintragStatusReasonVS",
  "title" : "ELGA e-Med Medikationsplaneintrag StatusReason ValueSet",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-10-29T10:03:24+00:00",
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
  "description" : "ValueSet für zulässige Ausprägungen des StatusReason eines Medikationsplaneintrags (MedicationRequest).",
  "compose" : {
    "include" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/medicationrequest-status-reason",
      "version" : "1.0.1",
      "concept" : [{
        "code" : "salg",
        "display" : "Allergy"
      },
      {
        "code" : "sddi",
        "display" : "Drug interacts with another drug"
      },
      {
        "code" : "sdupther",
        "display" : "Duplicate therapy"
      },
      {
        "code" : "surg",
        "display" : "Patient scheduled for surgery."
      },
      {
        "code" : "sintol",
        "display" : "Suspected intolerance"
      }]
    },
    {
      "system" : "https://fhir.hl7.at/elga/emed/r4/CodeSystem/AtElgaEmedCodeSystemPlaneintragStatusReasonCS"
    }]
  }
}

```
