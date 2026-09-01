# AT APS Observation Vital Signs - Austrian Patient Summary (R4) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT APS Observation Vital Signs**

## Resource Profile: AT APS Observation Vital Signs 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observationvitalsigns | *Version*:1.1.0 |
| Active as of 2026-09-01 | *Computable Name*:AtApsObservationVitalSigns |

 
Das AT APS-Profil für die Abbildung der Vitalparameter ist abgeleitet vom allgemeinen ["Vital Signs"-Profil](http://hl7.org/fhir/StructureDefinition/vitalsigns) und berücksichtigt die österreichischen Vorgaben (z.B. Patient und zu verwendende Value-Sets). 

**Usages:**

* Refer to this Profile: [AT APS Composition](StructureDefinition-at-aps-composition.md)
* Examples for this Profile: [Observation/AtApsExampleObservationVitalSigns01](Observation-AtApsExampleObservationVitalSigns01.md)
* CapabilityStatements using this Profile: [AT APS CapabilityStatement (Server)](CapabilityStatement-at-aps-capabilitystatement-server.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.elga.aps.r4|current/StructureDefinition/StructureDefinition-at-aps-observationvitalsigns.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-aps-observationvitalsigns.csv), [Excel](StructureDefinition-at-aps-observationvitalsigns.xlsx), [Schematron](StructureDefinition-at-aps-observationvitalsigns.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-aps-observationvitalsigns",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile",
    "valueCanonical" : "http://hl7.org/fhir/StructureDefinition/vitalsigns"
  }],
  "url" : "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observationvitalsigns",
  "version" : "1.1.0",
  "name" : "AtApsObservationVitalSigns",
  "title" : "AT APS Observation Vital Signs",
  "status" : "active",
  "date" : "2026-09-01T07:40:12+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
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
  "description" : "Das AT APS-Profil für die Abbildung der Vitalparameter ist abgeleitet vom allgemeinen [\"Vital Signs\"-Profil](http://hl7.org/fhir/StructureDefinition/vitalsigns) und berücksichtigt die österreichischen Vorgaben (z.B. Patient und zu verwendende Value-Sets).",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "AT"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
  },
  {
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
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation",
      "short" : "AT APS Observation Vital Signs"
    },
    {
      "id" : "Observation.category",
      "path" : "Observation.category",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "coding.code"
        },
        {
          "type" : "value",
          "path" : "coding.system"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.category:VSCat",
      "path" : "Observation.category",
      "sliceName" : "VSCat",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Observation.category:VSCat.coding",
      "path" : "Observation.category.coding",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Observation.category:VSCat.coding.system",
      "path" : "Observation.category.coding.system",
      "min" : 1,
      "fixedUri" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "mustSupport" : true
    },
    {
      "id" : "Observation.category:VSCat.coding.code",
      "path" : "Observation.category.coding.code",
      "min" : 1,
      "fixedCode" : "vital-signs",
      "mustSupport" : true
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-patient"]
      }]
    }]
  }
}

```
