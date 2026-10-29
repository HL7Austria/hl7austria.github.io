# AT ELGA e-Medikation MedicationRequest Planeintrag StatusReason CodeSystem - ELGA e-Medikation (R4) DRAFT v0.1.0

## CodeSystem: AT ELGA e-Medikation MedicationRequest Planeintrag StatusReason CodeSystem 

This Code system is referenced in the definition of the following value sets:

* [AT ELGA e-Medikation Medikationsplaneintrag StatusReason ValueSet](ValueSet-at-elga-emed-valueset-planeintrag-statusreason-vs.md)

-------

 [Description of the above table(s)](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#terminology). 



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "at-elga-emed-codesystem-planeintrag-statusreason-cs",
  "url" : "https://fhir.hl7.at/elga/emed/r4/CodeSystem/at-elga-emed-codesystem-planeintrag-statusreason-cs",
  "version" : "0.1.0",
  "name" : "AtElgaEmedCodeSystemPlaneintragStatusReasonCS",
  "title" : "AT ELGA e-Medikation MedicationRequest Planeintrag StatusReason CodeSystem",
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
  "description" : "Codesystem für zulässige Ausprägungen des StatusReason eines Medikationsplaneintrags (MedicationRequest).",
  "caseSensitive" : false,
  "content" : "complete",
  "count" : 4,
  "concept" : [{
    "code" : "other",
    "display" : "Anderer Grund: Freitexteingabe"
  },
  {
    "code" : "abgl",
    "display" : "Planeintrag Abgelaufen"
  },
  {
    "code" : "kwirk",
    "display" : "keine Wirkung"
  },
  {
    "code" : "ka",
    "display" : "keine Aussage"
  }]
}

```
