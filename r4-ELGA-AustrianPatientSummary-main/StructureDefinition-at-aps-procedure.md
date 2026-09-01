# AT APS Procedure - Austrian Patient Summary (R4) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT APS Procedure**

## Resource Profile: AT APS Procedure 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-procedure | *Version*:1.1.0 |
| Active as of 2026-09-01 | *Computable Name*:AtApsProcedure |

 
Das AT APS-Profil für die Procedure-Ressource berücksichtigt zum einen die österreichischen Vorgaben (z.B. Patient und zu verwendende Value-Sets) und stellt andererseits die Konformität gegenüber dem IPS-Profil sicher, indem die so genannte [`imposeProfile`](http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile)-Erweiterung verwendet wird. 

**Usages:**

* Use this Profile: [AT APS Bundle](StructureDefinition-at-aps-bundle.md)
* Refer to this Profile: [AT APS Composition](StructureDefinition-at-aps-composition.md), [AT APS DeviceUseStatement](StructureDefinition-at-aps-deviceusestatement.md), [AT APS Flag Alert](StructureDefinition-at-aps-flagalert.md), [AT APS ImagingStudy](StructureDefinition-at-aps-imagingstudy.md)... Show 5 more, [AT APS MedicationAdministration](StructureDefinition-at-aps-medicationadministration.md), [AT APS MedicationDispense](StructureDefinition-at-aps-medicationdispense.md), [AT APS MedicationStatement](StructureDefinition-at-aps-medicationstatement.md), [AT APS Observation](StructureDefinition-at-aps-observation.md) and [AT APS Procedure](StructureDefinition-at-aps-procedure.md)
* Examples for this Profile: [Procedure/at-aps-example-procedure-01](Procedure-at-aps-example-procedure-01.md)
* CapabilityStatements using this Profile: [AT APS CapabilityStatement (Server)](CapabilityStatement-at-aps-capabilitystatement-server.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.elga.aps.r4|current/StructureDefinition/StructureDefinition-at-aps-procedure.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-aps-procedure.csv), [Excel](StructureDefinition-at-aps-procedure.xlsx), [Schematron](StructureDefinition-at-aps-procedure.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-aps-procedure",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile",
    "valueCanonical" : "http://hl7.org/fhir/uv/ips/StructureDefinition/Procedure-uv-ips"
  }],
  "url" : "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-procedure",
  "version" : "1.1.0",
  "name" : "AtApsProcedure",
  "title" : "AT APS Procedure",
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
  "description" : "Das AT APS-Profil für die Procedure-Ressource berücksichtigt zum einen die österreichischen Vorgaben (z.B. Patient und zu verwendende Value-Sets) und stellt andererseits die Konformität gegenüber dem IPS-Profil sicher, indem die so genannte [`imposeProfile`](http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile)-Erweiterung verwendet wird.",
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
  "type" : "Procedure",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Procedure",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Procedure",
      "path" : "Procedure",
      "short" : "AT APS Procedure"
    },
    {
      "id" : "Procedure.basedOn",
      "path" : "Procedure.basedOn",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-careplan",
        "http://hl7.org/fhir/StructureDefinition/ServiceRequest"]
      }]
    },
    {
      "id" : "Procedure.partOf",
      "path" : "Procedure.partOf",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-procedure",
        "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observation",
        "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-medicationadministration"]
      }]
    },
    {
      "id" : "Procedure.code",
      "path" : "Procedure.code",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "http://hl7.org/fhir/uv/ips/ValueSet/procedures-uv-ips"
      }
    },
    {
      "id" : "Procedure.subject",
      "path" : "Procedure.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-patient"]
      }]
    },
    {
      "id" : "Procedure.recorder",
      "path" : "Procedure.recorder",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-patient",
        "http://hl7.org/fhir/StructureDefinition/RelatedPerson",
        "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-practitioner",
        "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-practitionerrole"]
      }]
    },
    {
      "id" : "Procedure.asserter",
      "path" : "Procedure.asserter",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-patient",
        "http://hl7.org/fhir/StructureDefinition/RelatedPerson",
        "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-practitioner",
        "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-practitionerrole"]
      }]
    },
    {
      "id" : "Procedure.performer.actor",
      "path" : "Procedure.performer.actor",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-patient",
        "http://hl7.org/fhir/StructureDefinition/RelatedPerson",
        "http://hl7.org/fhir/uv/ips/StructureDefinition/Device-observer-uv-ips",
        "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-practitioner",
        "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-practitionerrole",
        "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-organization"]
      }]
    },
    {
      "id" : "Procedure.performer.onBehalfOf",
      "path" : "Procedure.performer.onBehalfOf",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-organization"]
      }]
    },
    {
      "id" : "Procedure.reasonReference",
      "path" : "Procedure.reasonReference",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-condition",
        "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observation",
        "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-procedure",
        "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-diagnosticreport",
        "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-documentreference"]
      }]
    },
    {
      "id" : "Procedure.bodySite",
      "path" : "Procedure.bodySite",
      "binding" : {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/elementdefinition-bindingName",
          "valueString" : "BodySite"
        }],
        "strength" : "extensible",
        "description" : "Codes describing anatomical locations. May include laterality.",
        "valueSet" : "http://hl7.org/fhir/ValueSet/body-site"
      }
    },
    {
      "id" : "Procedure.report",
      "path" : "Procedure.report",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-diagnosticreport",
        "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-documentreference",
        "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-composition"]
      }]
    },
    {
      "id" : "Procedure.complicationDetail",
      "path" : "Procedure.complicationDetail",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-condition"]
      }]
    },
    {
      "id" : "Procedure.focalDevice.manipulated",
      "path" : "Procedure.focalDevice.manipulated",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-device"]
      }]
    },
    {
      "id" : "Procedure.usedReference",
      "path" : "Procedure.usedReference",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-device",
        "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-medication",
        "http://hl7.org/fhir/StructureDefinition/Substance"]
      }]
    }]
  }
}

```
