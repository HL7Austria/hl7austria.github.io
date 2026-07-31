# HL7.AT.FHIR.ELGA.EDIAG.R4\AT ELGA Reported (Fremdangabe) - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT ELGA Reported (Fremdangabe)**

## Extension: AT ELGA Reported (Fremdangabe) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-reported | *Version*:0.1.0 | |
| Draft as of 2026-07-31 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:AtReported |

Kennzeichnet, ob eine Information fremdberichtet ist (z. B. vom Patienten oder Dritten).

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [AT ELGA e-Diagnose AllergyIntolerance](StructureDefinition-at-elga-ediag-allergyintolerance.md), [AT ELGA e-Diagnose Condition](StructureDefinition-at-elga-ediag-condition.md) and [AT ELGA e-Diagnose Procedure](StructureDefinition-at-elga-ediag-procedure.md)
* Examples for this Extension: [AllergyIntolerance/AllergyExample](AllergyIntolerance-AllergyExample.md), [Bundle/At-Ediag-Journey-01-Bundle-Liste-Tx](Bundle-At-Ediag-Journey-01-Bundle-Liste-Tx.md), [Condition/DiagnoseCurrentlyRelevantExample](Condition-DiagnoseCurrentlyRelevantExample.md), [Condition/DiagnoseNotCurrentlyRelevantExample](Condition-DiagnoseNotCurrentlyRelevantExample.md) and [Procedure/ProcedureExample](Procedure-ProcedureExample.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.elga.ediag.r4|current/StructureDefinition/StructureDefinition-at-elga-ediag-reported.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-elga-ediag-reported.csv), [Excel](StructureDefinition-at-elga-ediag-reported.xlsx), [Schematron](StructureDefinition-at-elga-ediag-reported.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-elga-ediag-reported",
  "url" : "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-reported",
  "version" : "0.1.0",
  "name" : "AtReported",
  "title" : "AT ELGA Reported (Fremdangabe)",
  "status" : "draft",
  "date" : "2026-07-31T07:01:03+00:00",
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
  "description" : "Kennzeichnet, ob eine Information fremdberichtet ist (z. B. vom Patienten oder Dritten).",
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
    "expression" : "Element"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "AT ELGA Reported (Fremdangabe)",
      "definition" : "Kennzeichnet, ob eine Information fremdberichtet ist (z. B. vom Patienten oder Dritten)."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-reported"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "type" : [{
        "code" : "boolean"
      }]
    }]
  }
}

```
