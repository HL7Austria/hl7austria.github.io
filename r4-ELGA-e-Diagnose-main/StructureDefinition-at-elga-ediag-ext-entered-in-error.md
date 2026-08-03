# HL7.AT.FHIR.ELGA.EDIAG.R4\AT ELGA Entered In Error - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT ELGA Entered In Error**

## Extension: AT ELGA Entered In Error 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-ext-entered-in-error | *Version*:0.1.0 | |
| Draft as of 2026-08-03 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:AtElgaEdiagExtEnteredInError |

Kennzeichnet, ob eine Information fehlerhaft eingegeben wurde.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [AT ELGA e-Diagnose AllergyIntolerance](StructureDefinition-at-elga-ediag-allergyintolerance.md), [AT ELGA e-Diagnose Condition](StructureDefinition-at-elga-ediag-condition.md) and [AT ELGA e-Diagnose Procedure](StructureDefinition-at-elga-ediag-procedure.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.elga.ediag.r4|current/StructureDefinition/StructureDefinition-at-elga-ediag-ext-entered-in-error.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-elga-ediag-ext-entered-in-error.csv), [Excel](StructureDefinition-at-elga-ediag-ext-entered-in-error.xlsx), [Schematron](StructureDefinition-at-elga-ediag-ext-entered-in-error.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-elga-ediag-ext-entered-in-error",
  "url" : "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-ext-entered-in-error",
  "version" : "0.1.0",
  "name" : "AtElgaEdiagExtEnteredInError",
  "title" : "AT ELGA Entered In Error",
  "status" : "draft",
  "date" : "2026-08-03T10:33:06+00:00",
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
  "description" : "Kennzeichnet, ob eine Information fehlerhaft eingegeben wurde.",
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
    "expression" : "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-condition#Condition"
  },
  {
    "type" : "element",
    "expression" : "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-procedure#Procedure"
  },
  {
    "type" : "element",
    "expression" : "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-allergyintolerance#AllergyIntolerance"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "AT ELGA Entered In Error",
      "definition" : "Kennzeichnet, ob eine Information fehlerhaft eingegeben wurde."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "min" : 2
    },
    {
      "id" : "Extension.extension:practitioner",
      "path" : "Extension.extension",
      "sliceName" : "practitioner",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:practitioner.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:practitioner.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "practitioner"
    },
    {
      "id" : "Extension.extension:practitioner.value[x]",
      "path" : "Extension.extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "profile" : ["https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-reference"],
        "targetProfile" : ["http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-practitioner"]
      }]
    },
    {
      "id" : "Extension.extension:datetime",
      "path" : "Extension.extension",
      "sliceName" : "datetime",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:datetime.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:datetime.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "datetime"
    },
    {
      "id" : "Extension.extension:datetime.value[x]",
      "path" : "Extension.extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Extension.extension:reason",
      "path" : "Extension.extension",
      "sliceName" : "reason",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Extension.extension:reason.extension",
      "path" : "Extension.extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.extension:reason.url",
      "path" : "Extension.extension.url",
      "fixedUri" : "reason"
    },
    {
      "id" : "Extension.extension:reason.value[x]",
      "path" : "Extension.extension.value[x]",
      "type" : [{
        "code" : "string"
      }]
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-ext-entered-in-error"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "max" : "0"
    }]
  }
}

```
