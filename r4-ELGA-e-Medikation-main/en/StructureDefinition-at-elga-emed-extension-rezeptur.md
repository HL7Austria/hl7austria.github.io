# AT ELGA e-Medikation Extension Rezeptur - ELGA e-Medikation (R4) DRAFT v0.1.0

## Extension: AT ELGA e-Medikation Extension Rezeptur 

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [AT ELGA e-Medikation Medication Magistrale Medikation](StructureDefinition-at-elga-emed-medication-magistrale-zubereitung.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.elga.emed.r4|current/StructureDefinition/StructureDefinition-at-elga-emed-extension-rezeptur.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-at-elga-emed-extension-rezeptur.csv), [Excel](../StructureDefinition-at-elga-emed-extension-rezeptur.xlsx), [Schematron](../StructureDefinition-at-elga-emed-extension-rezeptur.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-elga-emed-extension-rezeptur",
  "url" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-extension-rezeptur",
  "version" : "0.1.0",
  "name" : "AtElgaEmedExtensionRezeptur",
  "title" : "AT ELGA e-Medikation Extension Rezeptur",
  "status" : "draft",
  "date" : "2026-10-22T09:48:24+00:00",
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
  "description" : "AT ELGA e-Medikation Extension für die Rezeptur für die Zubereitung einer magistralen Zubereitung",
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
    "expression" : "Medication"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "AT ELGA e-Medikation Extension Rezeptur",
      "definition" : "AT ELGA e-Medikation Extension für die Rezeptur für die Zubereitung einer magistralen Zubereitung"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-extension-rezeptur"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "markdown"
      }],
      "mustSupport" : true
    }]
  }
}

```
