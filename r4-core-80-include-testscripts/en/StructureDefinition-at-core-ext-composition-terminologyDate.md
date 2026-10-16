# Composition Terminology Date - HL7® Austria FHIR® Core Implementation Guide v2.1.0

## Extension: Composition Terminology Date 

**Context of Use**

**Usage info**

**Usages:**

* This Extension is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.core.r4|current/StructureDefinition/StructureDefinition-at-core-ext-composition-terminologyDate.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-at-core-ext-composition-terminologyDate.csv), [Excel](../StructureDefinition-at-core-ext-composition-terminologyDate.xlsx), [Schematron](../StructureDefinition-at-core-ext-composition-terminologyDate.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-core-ext-composition-terminologyDate",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status",
    "valueCode" : "deprecated",
    "_valueCode" : {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-standards-status-reason",
        "valueMarkdown" : "This extension must not be used within FHIR native applications. Its only valid usage is when transforming a CDA document to FHIR in order to capture the `hl7at:terminologyDate`."
      }]
    }
  }],
  "url" : "https://fhir.hl7.at/core/r4/StructureDefinition/at-core-ext-composition-terminologyDate",
  "version" : "2.1.0",
  "name" : "CompositionTerminologyDate",
  "title" : "Composition Terminology Date",
  "status" : "active",
  "date" : "2026-10-16T08:44:30+00:00",
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
  "description" : "HL7® Austria FHIR® Core Extension for documenting the date of last synchronization of the locally stored value sets for usage by the content creating system with the terminology server.\n\nOnly intended for representing `hl7at:terminologyDate` when transforming CDA documents to FHIR; must not be used in FHIR-native applications.",
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
    "expression" : "Composition"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Date of last value set synchronization with the terminology server",
      "definition" : "HL7® Austria FHIR® Core Extension for documenting the date of last synchronization of the locally stored value sets for usage by the content creating system with the terminology server.\n\nOnly intended for representing `hl7at:terminologyDate` when transforming CDA documents to FHIR; must not be used in FHIR-native applications."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://fhir.hl7.at/core/r4/StructureDefinition/at-core-ext-composition-terminologyDate"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "date"
      }]
    }]
  }
}

```
