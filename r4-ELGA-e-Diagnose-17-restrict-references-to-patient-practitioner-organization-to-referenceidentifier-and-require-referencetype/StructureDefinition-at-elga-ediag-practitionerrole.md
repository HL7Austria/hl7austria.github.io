# HL7.AT.FHIR.ELGA.EDIAG.R4\AT ELGA e-Diagnose PractitionerRole - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT ELGA e-Diagnose PractitionerRole**

## Resource Profile: AT ELGA e-Diagnose PractitionerRole 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-practitionerrole | *Version*:0.1.0 | |
| Draft as of 2026-08-20 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:AtEdiagPractitionerRole |

 
Das AT e-Diagnose PractitionerRole-Profil leitet sich vom PractitionerRole-Profil ab und passt dieses für die Anforderungen der e-Diagnose an. 

**Usages:**

* Refer to this Profile: [AT ELGA e-Diagnose AllergyIntolerance](StructureDefinition-at-elga-ediag-allergyintolerance.md), [AT ELGA e-Diagnose Condition](StructureDefinition-at-elga-ediag-condition.md) and [AT ELGA e-Diagnose List](StructureDefinition-at-elga-ediag-list.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.elga.ediag.r4|current/StructureDefinition/StructureDefinition-at-elga-ediag-practitionerrole.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-elga-ediag-practitionerrole.csv), [Excel](StructureDefinition-at-elga-ediag-practitionerrole.xlsx), [Schematron](StructureDefinition-at-elga-ediag-practitionerrole.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-elga-ediag-practitionerrole",
  "url" : "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-practitionerrole",
  "version" : "0.1.0",
  "name" : "AtEdiagPractitionerRole",
  "title" : "AT ELGA e-Diagnose PractitionerRole",
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
  "description" : "Das AT e-Diagnose PractitionerRole-Profil leitet sich vom PractitionerRole-Profil ab und passt dieses für die Anforderungen der e-Diagnose an.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "servd",
    "uri" : "http://www.omg.org/spec/ServD/1.0/",
    "name" : "ServD"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "PractitionerRole",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/PractitionerRole",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "PractitionerRole",
      "path" : "PractitionerRole"
    },
    {
      "id" : "PractitionerRole.practitioner",
      "path" : "PractitionerRole.practitioner",
      "type" : [{
        "code" : "Reference",
        "profile" : ["https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-reference"],
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Practitioner"]
      }]
    },
    {
      "id" : "PractitionerRole.organization",
      "path" : "PractitionerRole.organization",
      "type" : [{
        "code" : "Reference",
        "profile" : ["https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-reference"],
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/Organization"]
      }]
    }]
  }
}

```
