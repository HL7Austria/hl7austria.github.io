# HL7.AT.FHIR.ELGA.EDIAG.R4\AT e-Diagnose Diagnose Typ - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT e-Diagnose Diagnose Typ**

## CodeSystem: AT e-Diagnose Diagnose Typ (Experimental) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/ediag/r4/CodeSystem/at-ediag-codesystem-diagnose-type | *Version*:0.1.0 | |
| Active as of 2026-09-01 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:AtEdiagDiagnosisType |

 
Kennzeichnet, ob eine Diagnose, Prozedur oder Allergie aktuell klinisch relevant ist 

 This Code system is referenced in the content logical definition of the following value sets: 

* [AT e-Diagnose Diagnosis Type Value Set](ValueSet-at-ediag-diagnosen-type.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "at-ediag-codesystem-diagnose-type",
  "url" : "https://fhir.hl7.at/elga/ediag/r4/CodeSystem/at-ediag-codesystem-diagnose-type",
  "version" : "0.1.0",
  "name" : "AtEdiagDiagnosisType",
  "title" : "AT e-Diagnose Diagnose Typ",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-09-01T11:42:45+00:00",
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
  "description" : "Kennzeichnet, ob eine Diagnose, Prozedur oder Allergie aktuell klinisch relevant ist",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 2,
  "concept" : [{
    "code" : "relevant",
    "display" : "currently relevant"
  },
  {
    "code" : "notrelevant",
    "display" : "not currently relevant"
  }]
}

```
