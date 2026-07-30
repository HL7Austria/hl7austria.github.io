# HL7.AT.FHIR.ELGA.EDIAG.R4\AT ELGA Reaktionszeit - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT ELGA Reaktionszeit**

## Extension: AT ELGA Reaktionszeit 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-reaction-time | *Version*:0.1.0 | |
| Active as of 2026-07-30 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:AtEdiagReactionTime |

Zeitlicher Verlauf der Manifestation (<6h, 6-24h, >24h, unknown)

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [AT ELGA e-Diagnose AllergyIntolerance](StructureDefinition-at-elga-ediag-allergyintolerance.md)
* Examples for this Extension: [AllergyIntolerance/AllergyExample](AllergyIntolerance-AllergyExample.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.elga.ediag.r4|current/StructureDefinition/StructureDefinition-at-elga-ediag-reaction-time.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-elga-ediag-reaction-time.csv), [Excel](StructureDefinition-at-elga-ediag-reaction-time.xlsx), [Schematron](StructureDefinition-at-elga-ediag-reaction-time.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-elga-ediag-reaction-time",
  "url" : "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-reaction-time",
  "version" : "0.1.0",
  "name" : "AtEdiagReactionTime",
  "title" : "AT ELGA Reaktionszeit",
  "status" : "active",
  "date" : "2026-07-30T10:22:13+00:00",
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
  "description" : "Zeitlicher Verlauf der Manifestation (<6h, 6-24h, >24h, unknown)",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "AllergyIntolerance.reaction"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "AT ELGA Reaktionszeit",
      "definition" : "Zeitlicher Verlauf der Manifestation (<6h, 6-24h, >24h, unknown)"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-reaction-time"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }]
    }]
  }
}

```
