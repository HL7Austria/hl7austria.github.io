# AT APS Observation - Austrian Patient Summary (R4) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT APS Observation**

## Resource Profile: AT APS Observation 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observation | *Version*:1.1.0 |
| Active as of 2026-09-01 | *Computable Name*:AtApsObservation |

 
Das AT APS-Profil für die Observation-Ressource berücksichtigt die österreichischen Vorgaben (z.B. Patient). 

**Usages:**

* Derived from this Profile: [AT APS Observation Alcohol Use](StructureDefinition-at-aps-observationalcoholuse.md), [AT APS Observation Pregnancy Expected Delivery Date](StructureDefinition-at-aps-observationpregnancyedd.md), [AT APS Observation Pregnancy Outcome](StructureDefinition-at-aps-observationpregnancyoutcome.md), [AT APS Observation Pregnancy Status](StructureDefinition-at-aps-observationpregnancystatus.md)... Show 4 more, [AT APS Observation Results Laboratory Pathology](StructureDefinition-at-aps-observationresultslaboratorypathology.md), [AT APS Observation Results Radiology](StructureDefinition-at-aps-observationresultsradiology.md), [AT APS Observation Tobacco Use](StructureDefinition-at-aps-observationtobaccouse.md) and [AT APS Observation Vital Signs](StructureDefinition-at-aps-observationvitalsigns.md)
* Use this Profile: [AT APS Bundle](StructureDefinition-at-aps-bundle.md)
* Refer to this Profile: [AT APS ClinicalImpression](StructureDefinition-at-aps-clinicalimpression.md), [AT APS Composition](StructureDefinition-at-aps-composition.md), [AT APS Condition](StructureDefinition-at-aps-condition.md), [AT APS DeviceUseStatement](StructureDefinition-at-aps-deviceusestatement.md)... Show 8 more, [AT APS DiagnosticReport](StructureDefinition-at-aps-diagnosticreport.md), [AT APS ImagingStudy](StructureDefinition-at-aps-imagingstudy.md), [AT APS Immunization](StructureDefinition-at-aps-immunization.md), [AT APS MedicationAdministration](StructureDefinition-at-aps-medicationadministration.md), [AT APS MedicationRequest](StructureDefinition-at-aps-medicationrequest.md), [AT APS MedicationStatement](StructureDefinition-at-aps-medicationstatement.md), [AT APS Observation](StructureDefinition-at-aps-observation.md) and [AT APS Procedure](StructureDefinition-at-aps-procedure.md)
* Examples for this Profile: [Observation/AtApsExampleObservation01](Observation-AtApsExampleObservation01.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.elga.aps.r4|current/StructureDefinition/StructureDefinition-at-aps-observation.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-aps-observation.csv), [Excel](StructureDefinition-at-aps-observation.xlsx), [Schematron](StructureDefinition-at-aps-observation.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-aps-observation",
  "url" : "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observation",
  "version" : "1.1.0",
  "name" : "AtApsObservation",
  "title" : "AT APS Observation",
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
  "description" : "Das AT APS-Profil für die Observation-Ressource berücksichtigt die österreichischen Vorgaben (z.B. Patient).",
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
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation",
      "short" : "AT APS Observation"
    },
    {
      "id" : "Observation.basedOn",
      "path" : "Observation.basedOn",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-careplan",
        "http://hl7.org/fhir/StructureDefinition/DeviceRequest",
        "http://hl7.org/fhir/StructureDefinition/ImmunizationRecommendation",
        "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-medicationrequest",
        "http://hl7.org/fhir/StructureDefinition/NutritionOrder",
        "http://hl7.org/fhir/StructureDefinition/ServiceRequest"]
      }]
    },
    {
      "id" : "Observation.partOf",
      "path" : "Observation.partOf",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-medicationadministration",
        "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-medicationdispense",
        "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-medicationstatement",
        "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-procedure",
        "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-immunization",
        "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-imagingstudy"]
      }]
    },
    {
      "id" : "Observation.subject",
      "path" : "Observation.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-patient",
        "http://hl7.org/fhir/StructureDefinition/Group",
        "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-device",
        "http://hl7.org/fhir/StructureDefinition/Location"]
      }]
    },
    {
      "id" : "Observation.performer",
      "path" : "Observation.performer",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-practitioner",
        "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-practitionerrole",
        "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-organization",
        "http://hl7.org/fhir/StructureDefinition/CareTeam",
        "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-patient",
        "http://hl7.org/fhir/StructureDefinition/RelatedPerson"]
      }]
    },
    {
      "id" : "Observation.specimen",
      "path" : "Observation.specimen",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-specimen"]
      }]
    },
    {
      "id" : "Observation.device",
      "path" : "Observation.device",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-device",
        "http://hl7.org/fhir/StructureDefinition/DeviceMetric"]
      }]
    },
    {
      "id" : "Observation.hasMember",
      "path" : "Observation.hasMember",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observation",
        "http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse",
        "http://hl7.org/fhir/StructureDefinition/MolecularSequence"]
      }]
    },
    {
      "id" : "Observation.derivedFrom",
      "path" : "Observation.derivedFrom",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-documentreference",
        "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-imagingstudy",
        "http://hl7.org/fhir/StructureDefinition/Media",
        "http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse",
        "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observation",
        "http://hl7.org/fhir/StructureDefinition/MolecularSequence"]
      }]
    }]
  }
}

```
