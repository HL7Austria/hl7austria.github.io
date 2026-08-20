# HL7.AT.FHIR.ELGA.EDIAG.R4\AT ELGA e-Diagnose RelatedPerson - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT ELGA e-Diagnose RelatedPerson**

## Resource Profile: AT ELGA e-Diagnose RelatedPerson 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-relatedperson | *Version*:0.1.0 | |
| Draft as of 2026-08-20 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:AtEdiagRelatedPerson |

 
Das AT e-Diagnose RelatedPerson-Profil leitet sich vom RelatedPerson-Profil ab und passt dieses für die Anforderungen der e-Diagnose an. 

**Usages:**

* Refer to this Profile: [AT ELGA e-Diagnose AllergyIntolerance](StructureDefinition-at-elga-ediag-allergyintolerance.md), [AT ELGA e-Diagnose Condition](StructureDefinition-at-elga-ediag-condition.md) and [AT ELGA e-Diagnose Procedure](StructureDefinition-at-elga-ediag-procedure.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.elga.ediag.r4|current/StructureDefinition/StructureDefinition-at-elga-ediag-relatedperson.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-elga-ediag-relatedperson.csv), [Excel](StructureDefinition-at-elga-ediag-relatedperson.xlsx), [Schematron](StructureDefinition-at-elga-ediag-relatedperson.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-elga-ediag-relatedperson",
  "url" : "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-relatedperson",
  "version" : "0.1.0",
  "name" : "AtEdiagRelatedPerson",
  "title" : "AT ELGA e-Diagnose RelatedPerson",
  "status" : "draft",
  "date" : "2026-08-20T12:23:05+00:00",
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
  "description" : "Das AT e-Diagnose RelatedPerson-Profil leitet sich vom RelatedPerson-Profil ab und passt dieses für die Anforderungen der e-Diagnose an.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "RelatedPerson",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/RelatedPerson",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "RelatedPerson",
      "path" : "RelatedPerson"
    },
    {
      "id" : "RelatedPerson.patient",
      "path" : "RelatedPerson.patient",
      "type" : [{
        "code" : "Reference",
        "profile" : ["https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-reference"],
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Patient"]
      }]
    }]
  }
}

```
