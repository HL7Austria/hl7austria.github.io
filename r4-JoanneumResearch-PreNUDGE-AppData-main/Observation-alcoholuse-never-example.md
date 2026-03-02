# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\Alcohol Use O - Non-Drinker - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Alcohol Use O - Non-Drinker**

## Example Observation: Alcohol Use O - Non-Drinker

Profile: [AT PreNUDGE Observation Alcohol Use](StructureDefinition-at-prenudge-alcoholuse-observation.md)

**identifier**: `https://www.joanneum.at`/obs-alc-2026-02-27-001

**status**: Final

**code**: Alcoholic drinks per day

**subject**: [James Pond Male, DoB: 1990-01-01 ( urn:oid:1.2.40.0.10.1.4.3.1#1234567890)](Patient-example.md)

**effective**: 2026-02-27

**value**: 0 drinks/day (Details: UCUM code{drinks}/d = '{drinks}/d')

**note**: 

> 

Ich trinke zwar nicht, bin aber als Kind in ein Fass hausgemachten Schnaps gefallen. Zählt das?


**method**: Manual



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "alcoholuse-never-example",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-alcoholuse-observation"]
  },
  "identifier" : [{
    "system" : "https://www.joanneum.at",
    "value" : "obs-alc-2026-02-27-001"
  }],
  "status" : "final",
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "74013-4",
      "display" : "Alcoholic drinks per day"
    }]
  },
  "subject" : {
    "reference" : "Patient/example"
  },
  "effectiveDateTime" : "2026-02-27",
  "valueQuantity" : {
    "value" : 0,
    "unit" : "drinks/day",
    "system" : "http://unitsofmeasure.org",
    "code" : "{drinks}/d"
  },
  "note" : [{
    "text" : "Ich trinke zwar nicht, bin aber als Kind in ein Fass hausgemachten Schnaps gefallen. Zählt das?"
  }],
  "method" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "87982008",
      "display" : "Manual"
    }]
  }
}

```
