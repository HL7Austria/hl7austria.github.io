# ELGA e-Med Durchgeführte Abgabe Typ ValueSet - ELGA e-Medikation (R4) DRAFT v0.1.0

## ValueSet: ELGA e-Med Durchgeführte Abgabe Typ ValueSet (Experimental) 

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
  "id" : "DurchgefuehrteAbgabeTypVS",
  "url" : "https://fhir.hl7.at/elga/emed/r4/ValueSet/DurchgefuehrteAbgabeTypVS",
  "version" : "0.1.0",
  "name" : "DurchgefuehrteAbgabeTypVS",
  "title" : "ELGA e-Med Durchgeführte Abgabe Typ ValueSet",
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
  "description" : "ValueSet für zulässige Ausprägungen eines Typs einer Durchgeführten Abgabe (MedicationDispense).",
  "compose" : {
    "include" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ActCode",
      "version" : "11.0.0",
      "concept" : [{
        "code" : "FFC",
        "display" : "First Fill - Complete"
      },
      {
        "code" : "FFP",
        "display" : "First Fill - Part Fill"
      },
      {
        "code" : "RFP",
        "display" : "Refill - Part Fill"
      },
      {
        "code" : "RFC",
        "display" : "Refill - Complete"
      }]
    }]
  }
}

```
