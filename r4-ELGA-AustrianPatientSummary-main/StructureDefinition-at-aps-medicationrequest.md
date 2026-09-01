# AT APS MedicationRequest - Austrian Patient Summary (R4) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT APS MedicationRequest**

## Resource Profile: AT APS MedicationRequest 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-medicationrequest | *Version*:1.1.0 |
| Active as of 2026-09-01 | *Computable Name*:AtApsMedicationRequest |

 
Das AT APS-Profil für die MedicationRequest-Ressource berücksichtigt zum einen die österreichischen Vorgaben (z.B. Patient und zu verwendende Value-Sets) und stellt andererseits die Konformität gegenüber dem IPS-Profil sicher, indem die so genannte [`imposeProfile`](http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile)-Erweiterung verwendet wird. 

**Usages:**

* Use this Profile: [AT APS Bundle](StructureDefinition-at-aps-bundle.md)
* Refer to this Profile: [AT APS CarePlan](StructureDefinition-at-aps-careplan.md), [AT APS Composition](StructureDefinition-at-aps-composition.md), [AT APS DiagnosticReport](StructureDefinition-at-aps-diagnosticreport.md), [AT APS Immunization](StructureDefinition-at-aps-immunization.md)... Show 5 more, [AT APS MedicationAdministration](StructureDefinition-at-aps-medicationadministration.md), [AT APS MedicationDispense](StructureDefinition-at-aps-medicationdispense.md), [AT APS MedicationRequest](StructureDefinition-at-aps-medicationrequest.md), [AT APS MedicationStatement](StructureDefinition-at-aps-medicationstatement.md) and [AT APS Observation](StructureDefinition-at-aps-observation.md)
* Examples for this Profile: [MedicationRequest/AtApsExampleMedicationRequest01](MedicationRequest-AtApsExampleMedicationRequest01.md)
* CapabilityStatements using this Profile: [AT APS CapabilityStatement (Server)](CapabilityStatement-at-aps-capabilitystatement-server.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.elga.aps.r4|current/StructureDefinition/StructureDefinition-at-aps-medicationrequest.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-aps-medicationrequest.csv), [Excel](StructureDefinition-at-aps-medicationrequest.xlsx), [Schematron](StructureDefinition-at-aps-medicationrequest.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-aps-medicationrequest",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile",
    "valueCanonical" : "http://hl7.org/fhir/uv/ips/StructureDefinition/MedicationRequest-uv-ips"
  }],
  "url" : "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-medicationrequest",
  "version" : "1.1.0",
  "name" : "AtApsMedicationRequest",
  "title" : "AT APS MedicationRequest",
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
  "description" : "Das AT APS-Profil für die MedicationRequest-Ressource berücksichtigt zum einen die österreichischen Vorgaben (z.B. Patient und zu verwendende Value-Sets) und stellt andererseits die Konformität gegenüber dem IPS-Profil sicher, indem die so genannte [`imposeProfile`](http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile)-Erweiterung verwendet wird.",
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
    "identity" : "script10.6",
    "uri" : "http://ncpdp.org/SCRIPT10_6",
    "name" : "Mapping to NCPDP SCRIPT 10.6"
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
  "type" : "MedicationRequest",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MedicationRequest",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "MedicationRequest",
      "path" : "MedicationRequest",
      "short" : "AT APS MedicationRequest"
    },
    {
      "id" : "MedicationRequest.reported[x]",
      "path" : "MedicationRequest.reported[x]",
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
      "id" : "MedicationRequest.medication[x]",
      "path" : "MedicationRequest.medication[x]",
      "type" : [{
        "code" : "CodeableConcept"
      },
      {
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-medication"]
      }]
    },
    {
      "id" : "MedicationRequest.subject",
      "path" : "MedicationRequest.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-patient"]
      }]
    },
    {
      "id" : "MedicationRequest.requester",
      "path" : "MedicationRequest.requester",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-practitioner",
        "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-practitionerrole",
        "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-organization",
        "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-patient",
        "http://hl7.org/fhir/StructureDefinition/RelatedPerson",
        "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-device"]
      }]
    },
    {
      "id" : "MedicationRequest.performer",
      "path" : "MedicationRequest.performer",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-practitioner",
        "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-practitionerrole",
        "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-organization",
        "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-patient",
        "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-device",
        "http://hl7.org/fhir/StructureDefinition/RelatedPerson",
        "http://hl7.org/fhir/StructureDefinition/CareTeam"]
      }]
    },
    {
      "id" : "MedicationRequest.recorder",
      "path" : "MedicationRequest.recorder",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-practitioner",
        "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-practitionerrole"]
      }]
    },
    {
      "id" : "MedicationRequest.reasonReference",
      "path" : "MedicationRequest.reasonReference",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-condition",
        "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observation"]
      }]
    },
    {
      "id" : "MedicationRequest.basedOn",
      "path" : "MedicationRequest.basedOn",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-careplan",
        "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-medicationrequest",
        "http://hl7.org/fhir/StructureDefinition/ServiceRequest",
        "http://hl7.org/fhir/StructureDefinition/ImmunizationRecommendation"]
      }]
    },
    {
      "id" : "MedicationRequest.dispenseRequest.performer",
      "path" : "MedicationRequest.dispenseRequest.performer",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-organization"]
      }]
    },
    {
      "id" : "MedicationRequest.priorPrescription",
      "path" : "MedicationRequest.priorPrescription",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-medicationrequest"]
      }]
    }]
  }
}

```
