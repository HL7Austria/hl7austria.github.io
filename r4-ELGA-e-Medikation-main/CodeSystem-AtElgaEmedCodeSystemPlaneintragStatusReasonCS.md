# HL7.AT.FHIR.ELGA.EMED.R4\ELGA e-Med MedicationRequest Planeintrag StatusReason CodeSystem - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ELGA e-Med MedicationRequest Planeintrag StatusReason CodeSystem**

## CodeSystem: ELGA e-Med MedicationRequest Planeintrag StatusReason CodeSystem (Experimental) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/emed/r4/CodeSystem/AtElgaEmedCodeSystemPlaneintragStatusReasonCS | *Version*:0.1.1 | |
| Active as of 2026-09-16 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:AtElgaEmedCodeSystemPlaneintragStatusReasonCS |

 
Codesystem für zulässige Ausprägungen des StatusReason eines Medikationsplaneintrags (MedicationRequest). 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ELGA e-Med Medikationsplaneintrag StatusReason Value Set](ValueSet-AtElgaEmedValueSetPlaneintragStatusReasonVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "AtElgaEmedCodeSystemPlaneintragStatusReasonCS",
  "url" : "https://fhir.hl7.at/elga/emed/r4/CodeSystem/AtElgaEmedCodeSystemPlaneintragStatusReasonCS",
  "version" : "0.1.1",
  "name" : "AtElgaEmedCodeSystemPlaneintragStatusReasonCS",
  "title" : "ELGA e-Med MedicationRequest Planeintrag StatusReason CodeSystem",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-09-16T08:21:32+00:00",
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
