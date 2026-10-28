# AT e-Diagnose Reaktionszeit - ELGA e-Diagnose R4 v0.1.1

## Extension: AT e-Diagnose Reaktionszeit 

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [AT e-Diagnose AllergyIntolerance](StructureDefinition-at-elga-ediag-allergyintolerance.md)
* Examples for this Extension: [AllergyIntolerance/AllergyEntry01](AllergyIntolerance-AllergyEntry01.md), [AllergyIntolerance/AllergyEntry01Request](AllergyIntolerance-AllergyEntry01Request.md) and [Bundle/AllergyListSearchSet01](Bundle-AllergyListSearchSet01.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.elga.ediag.r4|current/StructureDefinition/StructureDefinition-at-elga-ediag-ext-reaction-time.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-at-elga-ediag-ext-reaction-time.csv), [Excel](../StructureDefinition-at-elga-ediag-ext-reaction-time.xlsx), [Schematron](../StructureDefinition-at-elga-ediag-ext-reaction-time.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-elga-ediag-ext-reaction-time",
  "url" : "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-ext-reaction-time",
  "version" : "0.1.1",
  "name" : "AtEdiagExtReactionTime",
  "title" : "AT e-Diagnose Reaktionszeit",
  "status" : "active",
  "date" : "2026-10-28T08:57:40+00:00",
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
      "short" : "AT e-Diagnose Reaktionszeit",
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
      "fixedUri" : "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-ext-reaction-time"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.hl7.at/elga/ediag/r4/ValueSet/at-ediag-reaction-time"
      }
    }]
  }
}

```
