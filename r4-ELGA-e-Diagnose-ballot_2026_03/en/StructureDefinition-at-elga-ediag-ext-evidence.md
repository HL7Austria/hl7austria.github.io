# AT e-Diagnose Evidenz (e-Befund) - ELGA e-Diagnose R4 v0.1.1

## Extension: AT e-Diagnose Evidenz (e-Befund) 

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [AT e-Diagnose AllergyIntolerance](StructureDefinition-at-elga-ediag-allergyintolerance.md)
* Search Parameters using this Extension: [AllergyIntoleranceEvidence](SearchParameter-at-elga-ediag-searchparameter-allergyintolerance-evidence.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.elga.ediag.r4|current/StructureDefinition/StructureDefinition-at-elga-ediag-ext-evidence.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-at-elga-ediag-ext-evidence.csv), [Excel](../StructureDefinition-at-elga-ediag-ext-evidence.xlsx), [Schematron](../StructureDefinition-at-elga-ediag-ext-evidence.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-elga-ediag-ext-evidence",
  "url" : "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-ext-evidence",
  "version" : "0.1.1",
  "name" : "AtEdiagExtEvidence",
  "title" : "AT e-Diagnose Evidenz (e-Befund)",
  "status" : "draft",
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
  "description" : "Verweis auf e-Befunde (z. B. Laborbefund, Entlassungsbrief) als medizinische Evidenz, analog zu Condition.evidence.detail.",
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
    "expression" : "AllergyIntolerance"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "AT e-Diagnose Evidenz (e-Befund)",
      "definition" : "Verweis auf e-Befunde (z. B. Laborbefund, Entlassungsbrief) als medizinische Evidenz, analog zu Condition.evidence.detail."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-ext-evidence"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "short" : "Verweis auf ELGA-Befunde als medizinische Evidenz.",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://profiles.ihe.net/ITI/MHD/StructureDefinition/IHE.MHD.Minimal.DocumentReference"]
      }]
    }]
  }
}

```
