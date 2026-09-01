# AT APS DocumentReference - Austrian Patient Summary (R4) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT APS DocumentReference**

## Resource Profile: AT APS DocumentReference 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-documentreference | *Version*:1.1.0 |
| Active as of 2026-09-01 | *Computable Name*:AtApsDocumentReference |

 
Das AT APS-Profil für die DocumentReference-Ressource berücksichtigt die österreichischen Vorgaben (z.B. Patient). 

**Usages:**

* Use this Profile: [AT APS Bundle](StructureDefinition-at-aps-bundle.md)
* Refer to this Profile: [AT APS Composition](StructureDefinition-at-aps-composition.md), [AT APS Consent](StructureDefinition-at-aps-consent.md), [AT APS DeviceUseStatement](StructureDefinition-at-aps-deviceusestatement.md), [AT APS DocumentReference](StructureDefinition-at-aps-documentreference.md)... Show 3 more, [AT APS ImagingStudy](StructureDefinition-at-aps-imagingstudy.md), [AT APS Observation](StructureDefinition-at-aps-observation.md) and [AT APS Procedure](StructureDefinition-at-aps-procedure.md)
* Examples for this Profile: [DocumentReference/AtApsExampleDocumentReference01](DocumentReference-AtApsExampleDocumentReference01.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.elga.aps.r4|current/StructureDefinition/StructureDefinition-at-aps-documentreference.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-aps-documentreference.csv), [Excel](StructureDefinition-at-aps-documentreference.xlsx), [Schematron](StructureDefinition-at-aps-documentreference.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-aps-documentreference",
  "url" : "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-documentreference",
  "version" : "1.1.0",
  "name" : "AtApsDocumentReference",
  "title" : "AT APS DocumentReference",
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
  "description" : "Das AT APS-Profil für die DocumentReference-Ressource berücksichtigt die österreichischen Vorgaben (z.B. Patient).",
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
    "identity" : "fhircomposition",
    "uri" : "http://hl7.org/fhir/composition",
    "name" : "FHIR Composition"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
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
  },
  {
    "identity" : "xds",
    "uri" : "http://ihe.net/xds",
    "name" : "XDS metadata equivalent"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "DocumentReference",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/DocumentReference",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "DocumentReference",
      "path" : "DocumentReference",
      "short" : "At APS DocumentReference"
    },
    {
      "id" : "DocumentReference.subject",
      "path" : "DocumentReference.subject",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-patient",
        "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-practitioner",
        "http://hl7.org/fhir/StructureDefinition/Group",
        "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-device"]
      }]
    },
    {
      "id" : "DocumentReference.author",
      "path" : "DocumentReference.author",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-practitioner",
        "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-practitionerrole",
        "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-organization",
        "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-device",
        "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-patient",
        "http://hl7.org/fhir/StructureDefinition/RelatedPerson"]
      }]
    },
    {
      "id" : "DocumentReference.authenticator",
      "path" : "DocumentReference.authenticator",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-practitioner",
        "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-practitionerrole",
        "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-organization"]
      }]
    },
    {
      "id" : "DocumentReference.custodian",
      "path" : "DocumentReference.custodian",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-organization"]
      }]
    },
    {
      "id" : "DocumentReference.relatesTo.target",
      "path" : "DocumentReference.relatesTo.target",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-documentreference"]
      }]
    },
    {
      "id" : "DocumentReference.context.sourcePatientInfo",
      "path" : "DocumentReference.context.sourcePatientInfo",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-patient"]
      }]
    }]
  }
}

```
