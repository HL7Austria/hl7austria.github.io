# AT ELGA Reported (Fremdangabe) - ELGA e-Diagnose R4 (Draft) v0.1.0

## Extension: AT ELGA Reported (Fremdangabe) 

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [AT ELGA e-Diagnose AllergyIntolerance](StructureDefinition-at-elga-ediag-allergyintolerance.md), [AT ELGA e-Diagnose Condition](StructureDefinition-at-elga-ediag-condition.md) and [AT ELGA e-Diagnose Procedure](StructureDefinition-at-elga-ediag-procedure.md)
* Examples for this Extension: [AllergyIntolerance/AllergyEntry01](AllergyIntolerance-AllergyEntry01.md), [AllergyIntolerance/AllergyEntry01Request](AllergyIntolerance-AllergyEntry01Request.md), [Bundle/AllergyListSearchSet01](Bundle-AllergyListSearchSet01.md), [Bundle/ConditionListSearchSet01](Bundle-ConditionListSearchSet01.md)... Show 19 more, [Bundle/ConditionListSearchSet02](Bundle-ConditionListSearchSet02.md), [Bundle/ConditionListSearchSet03](Bundle-ConditionListSearchSet03.md), [Bundle/ConditionListSearchSet04](Bundle-ConditionListSearchSet04.md), [Bundle/ConditionSearchSet01](Bundle-ConditionSearchSet01.md), [Bundle/ConditionSearchSet02](Bundle-ConditionSearchSet02.md), [Bundle/ConditionSearchSet03](Bundle-ConditionSearchSet03.md), [Bundle/ProcedureListSearchSet01](Bundle-ProcedureListSearchSet01.md), [Condition/ConditionEntry01](Condition-ConditionEntry01.md), [Condition/ConditionEntry01Request](Condition-ConditionEntry01Request.md), [Condition/ConditionEntry02](Condition-ConditionEntry02.md), [Condition/ConditionEntry03](Condition-ConditionEntry03.md), [Condition/ConditionEntry03EnteredInError](Condition-ConditionEntry03EnteredInError.md), [Condition/ConditionEntry04](Condition-ConditionEntry04.md), [Condition/ConditionEntry05](Condition-ConditionEntry05.md), [Condition/ConditionEntry06](Condition-ConditionEntry06.md), [Parameters/ConditionDeleteResponse01](Parameters-ConditionDeleteResponse01.md), [Parameters/ConditionEnteredInErrorResponse01](Parameters-ConditionEnteredInErrorResponse01.md), [Procedure/ProcedureEntry01](Procedure-ProcedureEntry01.md) and [Procedure/ProcedureEntry01Request](Procedure-ProcedureEntry01Request.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.elga.ediag.r4|current/StructureDefinition/StructureDefinition-at-elga-ediag-reported.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-at-elga-ediag-reported.csv), [Excel](../StructureDefinition-at-elga-ediag-reported.xlsx), [Schematron](../StructureDefinition-at-elga-ediag-reported.sch) 



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
  "date" : "2026-10-13T07:15:40+00:00",
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
