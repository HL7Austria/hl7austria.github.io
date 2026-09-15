# BRZPDPractitioner - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **BRZPDPractitioner**

## Resource Profile: BRZPDPractitioner 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.hl7.at/brz/providerdirectory/r4/StructureDefinition/BRZPDPractitioner | *Version*:0.1.0 |
| Draft as of 2026-09-15 | *Computable Name*:BRZPDPractitioner |

 
An example profile of the Practitioner resource. 

**Usages:**

* Examples for this Profile: [Practitioner/PractitionerExample](Practitioner-PractitionerExample.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.brz.providerdirectory.r4|current/StructureDefinition/StructureDefinition-BRZPDPractitioner.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-BRZPDPractitioner.csv), [Excel](StructureDefinition-BRZPDPractitioner.xlsx), [Schematron](StructureDefinition-BRZPDPractitioner.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "BRZPDPractitioner",
  "url" : "http://fhir.hl7.at/brz/providerdirectory/r4/StructureDefinition/BRZPDPractitioner",
  "version" : "0.1.0",
  "name" : "BRZPDPractitioner",
  "status" : "draft",
  "date" : "2026-09-15T07:07:21+00:00",
  "publisher" : "BRZ - Bundesrechenzentrum",
  "contact" : [{
    "name" : "BRZ - Bundesrechenzentrum",
    "telecom" : [{
      "system" : "url",
      "value" : "http://brz.gv.at"
    }]
  }],
  "description" : "An example profile of the Practitioner resource.",
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
  "type" : "Practitioner",
  "baseDefinition" : "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-practitioner",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Practitioner",
      "path" : "Practitioner"
    }]
  }
}

```
