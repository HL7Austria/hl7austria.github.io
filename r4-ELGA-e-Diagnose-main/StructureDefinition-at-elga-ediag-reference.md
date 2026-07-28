# HL7.AT.FHIR.ELGA.EDIAG.R4\AT ELGA e-Diagnose Reference - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT ELGA e-Diagnose Reference**

## Data Type Profile: AT ELGA e-Diagnose Reference 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-reference | *Version*:0.1.0 | |
| Active as of 2026-07-28 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:AtEdiagReference |

 
Das AT e-Diagnose AllergyIntolerance-Profil leitet sich vom AllergyIntolerance-Profil ab und passt dieses für die Anforderungen der e-Diagnose an. 

**Usages:**

* Use this DataType Profile: [AT ELGA Entered In Error](StructureDefinition-at-elga-ediag-ext-entered-in-error.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.elga.ediag.r4|current/StructureDefinition/StructureDefinition-at-elga-ediag-reference.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-elga-ediag-reference.csv), [Excel](StructureDefinition-at-elga-ediag-reference.xlsx), [Schematron](StructureDefinition-at-elga-ediag-reference.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-elga-ediag-reference",
  "url" : "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-reference",
  "version" : "0.1.0",
  "name" : "AtEdiagReference",
  "title" : "AT ELGA e-Diagnose Reference",
  "status" : "active",
  "date" : "2026-07-28T06:19:15+00:00",
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
  "description" : "Das AT e-Diagnose AllergyIntolerance-Profil leitet sich vom AllergyIntolerance-Profil ab und passt dieses für die Anforderungen der e-Diagnose an.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "Reference",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Reference",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Reference",
      "path" : "Reference",
      "short" : "AT e-Diagnose Reference"
    },
    {
      "id" : "Reference.reference",
      "path" : "Reference.reference",
      "max" : "0"
    },
    {
      "id" : "Reference.identifier",
      "path" : "Reference.identifier",
      "min" : 1
    }]
  }
}

```
