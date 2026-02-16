# HL7.AT.FHIR.ELGA.EMED.R4\ELGA e-Med MedicationRequest Status - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ELGA e-Med MedicationRequest Status**

## CodeSystem: ELGA e-Med MedicationRequest Status (Experimental) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/emed/r4/CodeSystem/MedicationRequestStatusCS | *Version*:0.1.1 | |
| Active as of 2026-02-16 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:MedicationRequestStatusCS |

 
**Beschreibung:** Codesystem für zulässige Ausprägungen eines Status eines MedicationRequests im Medikationsplaneintrag und in geplanter Abgabe. Basiert auf VS https://hl7.org/fhir/R4/valueset-medicationrequest-status.html, ohne Status: draft, unknown 

 This Code system is referenced in the content logical definition of the following value sets: 

* [GeplanteAbgabeStatusVS](ValueSet-GeplanteAbgabeStatusVS.md)
* [MedikationsplaneintragStatusVS](ValueSet-MedikationsplaneintragStatusVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "MedicationRequestStatusCS",
  "url" : "https://fhir.hl7.at/elga/emed/r4/CodeSystem/MedicationRequestStatusCS",
  "version" : "0.1.1",
  "name" : "MedicationRequestStatusCS",
  "title" : "ELGA e-Med MedicationRequest Status",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-02-16T15:59:40+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [
    {
      "name" : "ELGA GmbH",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://elga.gv.at"
        }
      ]
    },
    {
      "name" : "ELGA GmbH",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://elga.gv.at",
          "use" : "work"
        }
      ]
    }
  ],
  "description" : "**Beschreibung:** Codesystem für zulässige Ausprägungen eines Status eines MedicationRequests im Medikationsplaneintrag und in geplanter Abgabe. \nBasiert auf VS https://hl7.org/fhir/R4/valueset-medicationrequest-status.html, ohne Status: draft, unknown",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 6,
  "concept" : [
    {
      "code" : "active",
      "display" : "active"
    },
    {
      "code" : "on-hold",
      "display" : "on-hold"
    },
    {
      "code" : "cancelled",
      "display" : "cancelled"
    },
    {
      "code" : "completed",
      "display" : "completed"
    },
    {
      "code" : "entered-in-error",
      "display" : "entered-in-error"
    },
    {
      "code" : "stopped",
      "display" : "stopped"
    }
  ]
}

```
