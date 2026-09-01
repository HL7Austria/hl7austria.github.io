# AT APS Consent - Austrian Patient Summary (R4) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT APS Consent**

## Resource Profile: AT APS Consent 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-consent | *Version*:1.1.0 |
| Active as of 2026-09-01 | *Computable Name*:AtApsConsent |

 
Das AT APS-Profil für die Consent-Ressource berücksichtigt die österreichischen Vorgaben (z.B. Patient). 

**Usages:**

* Use this Profile: [AT APS Bundle](StructureDefinition-at-aps-bundle.md)
* Refer to this Profile: [AT APS Composition](StructureDefinition-at-aps-composition.md) and [AT APS Consent](StructureDefinition-at-aps-consent.md)
* Examples for this Profile: [Consent/AtApsExampleConsent01](Consent-AtApsExampleConsent01.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.elga.aps.r4|current/StructureDefinition/StructureDefinition-at-aps-consent.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-aps-consent.csv), [Excel](StructureDefinition-at-aps-consent.xlsx), [Schematron](StructureDefinition-at-aps-consent.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-aps-consent",
  "url" : "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-consent",
  "version" : "1.1.0",
  "name" : "AtApsConsent",
  "title" : "AT APS Consent",
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
  "description" : "Das AT APS-Profil für die Consent-Ressource berücksichtigt die österreichischen Vorgaben (z.B. Patient).",
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
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Consent",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Consent",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Consent",
      "path" : "Consent",
      "short" : "AT APS Consent"
    },
    {
      "id" : "Consent.patient",
      "path" : "Consent.patient",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-patient"]
      }]
    },
    {
      "id" : "Consent.performer",
      "path" : "Consent.performer",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-organization",
        "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-patient",
        "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-practitioner",
        "http://hl7.org/fhir/StructureDefinition/RelatedPerson",
        "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-practitionerrole"]
      }]
    },
    {
      "id" : "Consent.organization",
      "path" : "Consent.organization",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-organization"]
      }]
    },
    {
      "id" : "Consent.source[x]",
      "path" : "Consent.source[x]",
      "type" : [{
        "code" : "Attachment"
      },
      {
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-consent",
        "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-documentreference",
        "http://hl7.org/fhir/StructureDefinition/Contract",
        "http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse"]
      }]
    },
    {
      "id" : "Consent.verification.verifiedWith",
      "path" : "Consent.verification.verifiedWith",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-patient",
        "http://hl7.org/fhir/StructureDefinition/RelatedPerson"]
      }]
    },
    {
      "id" : "Consent.provision.actor.reference",
      "path" : "Consent.provision.actor.reference",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-device",
        "http://hl7.org/fhir/StructureDefinition/Group",
        "http://hl7.org/fhir/StructureDefinition/CareTeam",
        "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-organization",
        "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-patient",
        "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-practitioner",
        "http://hl7.org/fhir/StructureDefinition/RelatedPerson",
        "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-practitionerrole"]
      }]
    }]
  }
}

```
