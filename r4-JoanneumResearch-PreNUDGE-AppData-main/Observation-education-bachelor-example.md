# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\Education O mapped from Q - Bachelor's Level Example - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Education O mapped from Q - Bachelor's Level Example**

## Example Observation: Education O mapped from Q - Bachelor's Level Example

Profile: [AT PreNUDGE Observation Highest Completed Education](StructureDefinition-at-prenudge-education-observation.md)

**identifier**: `https://www.joanneum.at`/obs-education-2026-03-20-001

**status**: Final

**code**: Highest level of education

**subject**: [James Pond Male, DoB: 1990-01-01 ( urn:oid:1.2.40.0.10.1.4.3.1#1234567890)](Patient-example.md)

**effective**: 2026-03-20 09:00:00+0000

**issued**: 2026-03-20 09:00:00+0000

**value**: ISCED 6 - Bachelor- bzw. gleichwertiges Bildungsprogramm

**note**: 

> 

Bachelorabschluss an einer Fachhochschule.


**method**: Manual

**derivedFrom**: [Response to Questionnaire '->Höchster abgeschlossener Bildungsabschluss' about '->James Pond Male, DoB: 1990-01-01 ( urn:oid:1.2.40.0.10.1.4.3.1#1234567890)'](QuestionnaireResponse-education-response-bachelor-example.md)

IG © 2026+
[The PreNUDGE Consortium](https://prenudge.at). Package hl7.at.fhir.prenudge.appdata.r4#0.1.0 based on
[FHIR® 4.0.1](http://hl7.org/fhir/R4/). Generated
2026-07-23

Links:
[Table of Contents](toc.md)|
[QA Report](qa.md)

## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "education-bachelor-example",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-education-observation"]
  },
  "identifier" : [{
    "system" : "https://www.joanneum.at",
    "value" : "obs-education-2026-03-20-001"
  }],
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "82589-3",
      "display" : "Highest level of education"
    }]
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "effectiveDateTime" : "2026-03-20T09:00:00Z",
  "issued" : "2026-03-20T09:00:00Z",
  "valueCodeableConcept" : {
    "coding" : [{
      "system" : "https://fhir.hl7.at/prenudge/appdata/r4/CodeSystem/prenudge-isced-2011-education-level",
      "code" : "isced-6",
      "display" : "ISCED 6 - Bachelor- bzw. gleichwertiges Bildungsprogramm"
    }]
  },
  "note" : [{
    "text" : "Bachelorabschluss an einer Fachhochschule."
  }],
  "method" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "87982008",
      "display" : "Manual"
    }]
  },
  "derivedFrom" : [{
    "reference" : "QuestionnaireResponse/education-response-bachelor-example"
  }]
}

```
