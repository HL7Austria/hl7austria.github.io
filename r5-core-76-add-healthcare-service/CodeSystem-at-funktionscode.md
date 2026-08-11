# HL7.AT.FHIR.CORE.R5\CodeSystem for Austrian Funktionscodes Excerpt - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **CodeSystem for Austrian Funktionscodes Excerpt**

## CodeSystem: CodeSystem for Austrian Funktionscodes Excerpt (Experimental) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/core/r5/CodeSystem/at-funktionscode | *Version*:2.1.0 | |
| Draft as of 2026-08-11 | *Responsible:*[HL7® Austria, TC FHIR®](https://hl7.at/technische-komitees/tc-fhir/) | *Computable Name*:ATFunktionscode |

 
CodeSystem for Austrian Funktionscodes Excerpt 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ATFunktionscodeVS](ValueSet-at-funktionscode-vs.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "at-funktionscode",
  "url" : "https://fhir.hl7.at/core/r5/CodeSystem/at-funktionscode",
  "version" : "2.1.0",
  "name" : "ATFunktionscode",
  "title" : "CodeSystem for Austrian Funktionscodes Excerpt",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-08-11T21:36:48+00:00",
  "publisher" : "HL7® Austria, TC FHIR®",
  "contact" : [{
    "name" : "HL7® Austria, TC FHIR®",
    "telecom" : [{
      "system" : "url",
      "value" : "https://hl7.at/technische-komitees/tc-fhir/"
    }]
  },
  {
    "name" : "Technical Committee for FHIR® at HL7® Austria",
    "telecom" : [{
      "system" : "email",
      "value" : "mailto:tc-fhir@hl7.at"
    }]
  }],
  "description" : "CodeSystem for Austrian Funktionscodes Excerpt",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 7,
  "concept" : [{
    "code" : "10119",
    "display" : "Angiographie (IM und Angiologie)"
  },
  {
    "code" : "10914",
    "display" : "Atemphysiologie (IM und Pneumologie)"
  },
  {
    "code" : "11091",
    "display" : "Ergotherapie (IM und Rheumatologie)"
  },
  {
    "code" : "11114",
    "display" : "Rheumatologie"
  },
  {
    "code" : "12217",
    "display" : "Gipszimmer (Unfallchirurgie)"
  },
  {
    "code" : "12391",
    "display" : "Ergotherapie (Orthopädie)"
  },
  {
    "code" : "13113",
    "display" : "Kreißzimmer (Frauenheilkunde und Geburtshilfe)"
  }]
}

```
