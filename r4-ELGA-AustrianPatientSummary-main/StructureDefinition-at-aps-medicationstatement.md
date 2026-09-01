# AT APS MedicationStatement - Austrian Patient Summary (R4) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT APS MedicationStatement**

## Resource Profile: AT APS MedicationStatement 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-medicationstatement | *Version*:1.1.0 |
| Active as of 2026-09-01 | *Computable Name*:AtApsMedicationStatement |

 
Das AT APS-Profil für die MedicationStatement-Ressource berücksichtigt zum einen die österreichischen Vorgaben (z.B. Patient und zu verwendende Value-Sets) und stellt andererseits die Konformität gegenüber dem IPS-Profil sicher, indem die so genannte [`imposeProfile`](http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile)-Erweiterung verwendet wird. 

**Usages:**

* Use this Profile: [AT APS Bundle](StructureDefinition-at-aps-bundle.md)
* Refer to this Profile: [AT APS Composition](StructureDefinition-at-aps-composition.md), [AT APS MedicationStatement](StructureDefinition-at-aps-medicationstatement.md) and [AT APS Observation](StructureDefinition-at-aps-observation.md)
* Examples for this Profile: [MedicationStatement/AtApsExampleMedicationStatement01](MedicationStatement-AtApsExampleMedicationStatement01.md)
* CapabilityStatements using this Profile: [AT APS CapabilityStatement (Server)](CapabilityStatement-at-aps-capabilitystatement-server.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.elga.aps.r4|current/StructureDefinition/StructureDefinition-at-aps-medicationstatement.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-aps-medicationstatement.csv), [Excel](StructureDefinition-at-aps-medicationstatement.xlsx), [Schematron](StructureDefinition-at-aps-medicationstatement.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-aps-medicationstatement",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile",
    "valueCanonical" : "http://hl7.org/fhir/uv/ips/StructureDefinition/MedicationStatement-uv-ips"
  }],
  "url" : "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-medicationstatement",
  "version" : "1.1.0",
  "name" : "AtApsMedicationStatement",
  "title" : "AT APS MedicationStatement",
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
  "description" : "Das AT APS-Profil für die MedicationStatement-Ressource berücksichtigt zum einen die österreichischen Vorgaben (z.B. Patient und zu verwendende Value-Sets) und stellt andererseits die Konformität gegenüber dem IPS-Profil sicher, indem die so genannte [`imposeProfile`](http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile)-Erweiterung verwendet wird.",
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
  "type" : "MedicationStatement",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MedicationStatement",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "MedicationStatement",
      "path" : "MedicationStatement",
      "short" : "AT APS MedicationStatement"
    },
    {
      "id" : "MedicationStatement.basedOn",
      "path" : "MedicationStatement.basedOn",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-medicationrequest",
        "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-careplan",
        "http://hl7.org/fhir/StructureDefinition/ServiceRequest"]
      }]
    },
    {
      "id" : "MedicationStatement.partOf",
      "path" : "MedicationStatement.partOf",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-medicationadministration",
        "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-medicationdispense",
        "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-medicationstatement",
        "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-procedure",
        "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observation"]
      }]
    },
    {
      "id" : "MedicationStatement.medication[x]",
      "path" : "MedicationStatement.medication[x]",
      "type" : [{
        "code" : "CodeableConcept"
      },
      {
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-medication"]
      }]
    },
    {
      "id" : "MedicationStatement.subject",
      "path" : "MedicationStatement.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-patient"]
      }]
    },
    {
      "id" : "MedicationStatement.informationSource",
      "path" : "MedicationStatement.informationSource",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-patient",
        "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-practitioner",
        "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-practitionerrole",
        "http://hl7.org/fhir/StructureDefinition/RelatedPerson",
        "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-organization"]
      }]
    },
    {
      "id" : "MedicationStatement.reasonReference",
      "path" : "MedicationStatement.reasonReference",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-condition",
        "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observation",
        "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-diagnosticreport"]
      }]
    }]
  }
}

```
