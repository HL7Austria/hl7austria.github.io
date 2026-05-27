# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\Sleep Duration O - Short Automated Example - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Sleep Duration O - Short Automated Example**

## Example Observation: Sleep Duration O - Short Automated Example

Profile: [AT PreNUDGE Observation Sleep Duration](StructureDefinition-at-prenudge-sleep-observation.md)

**identifier**: `https://www.joanneum.at`/obs-sl-2026-03-11-001

**status**: Final

**code**: Sleep duration

**subject**: [James Pond Male, DoB: 1990-01-01 ( urn:oid:1.2.40.0.10.1.4.3.1#1234567890)](Patient-example.md)

**effective**: 2026-03-11

**issued**: 2026-03-11 07:00:00+0000

**value**: 5.5 h (Details: UCUM codeh = 'h')

**note**: 

> 

Kurze Schlafdauer, möglicherweise Schlafmangel.


**method**: Automated



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "sleep-duration-short-automated-example",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-sleep-observation"]
  },
  "identifier" : [{
    "system" : "https://www.joanneum.at",
    "value" : "obs-sl-2026-03-11-001"
  }],
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "93832-4",
      "display" : "Sleep duration"
    }]
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "effectiveDateTime" : "2026-03-11",
  "issued" : "2026-03-11T07:00:00Z",
  "valueQuantity" : {
    "value" : 5.5,
    "unit" : "h",
    "system" : "http://unitsofmeasure.org",
    "code" : "h"
  },
  "note" : [{
    "text" : "Kurze Schlafdauer, möglicherweise Schlafmangel."
  }],
  "method" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "8359006",
      "display" : "Automated"
    }]
  }
}

```
