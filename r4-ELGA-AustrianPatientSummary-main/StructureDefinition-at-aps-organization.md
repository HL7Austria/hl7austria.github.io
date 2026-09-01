# AT APS Organization - Austrian Patient Summary (R4) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT APS Organization**

## Resource Profile: AT APS Organization 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-organization | *Version*:1.1.0 |
| Active as of 2026-09-01 | *Computable Name*:AtApsOrganization |

 
Das AT APS-Profil für die Organization-Ressource ist vom entsprechenden Profil aus dem HL7® Austria FHIR® Core IG abgeleitet und stellt zusätzlich die Konformität gegenüber dem IPS-Profil sicher, indem die so genannte [`imposeProfile`](http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile)-Erweiterung verwendet wird. 

**Usages:**

* Use this Profile: [AT APS Bundle](StructureDefinition-at-aps-bundle.md)
* Refer to this Profile: [AT APS CarePlan](StructureDefinition-at-aps-careplan.md), [AT APS Composition](StructureDefinition-at-aps-composition.md), [AT APS Consent](StructureDefinition-at-aps-consent.md), [AT APS Device](StructureDefinition-at-aps-device.md)... Show 16 more, [AT APS DiagnosticReport](StructureDefinition-at-aps-diagnosticreport.md), [AT APS DocumentReference](StructureDefinition-at-aps-documentreference.md), [AT APS Flag Alert](StructureDefinition-at-aps-flagalert.md), [AT APS ImagingStudy](StructureDefinition-at-aps-imagingstudy.md), [AT APS Immunization](StructureDefinition-at-aps-immunization.md), [AT APS Immunization](StructureDefinition-at-aps-immunizationrecommendation.md), [AT APS Medication](StructureDefinition-at-aps-medication.md), [AT APS MedicationDispense](StructureDefinition-at-aps-medicationdispense.md), [AT APS MedicationRequest](StructureDefinition-at-aps-medicationrequest.md), [AT APS MedicationStatement](StructureDefinition-at-aps-medicationstatement.md), [AT APS Observation](StructureDefinition-at-aps-observation.md), [AT APS Organization](StructureDefinition-at-aps-organization.md), [AT APS Patient](StructureDefinition-at-aps-patient.md), [AT APS Practitioner](StructureDefinition-at-aps-practitioner.md), [AT APS PractitionerRole](StructureDefinition-at-aps-practitionerrole.md) and [AT APS Procedure](StructureDefinition-at-aps-procedure.md)
* Examples for this Profile: [Amadeus Spital](Organization-AtApsExampleOrganization01.md)
* CapabilityStatements using this Profile: [AT APS CapabilityStatement (Server)](CapabilityStatement-at-aps-capabilitystatement-server.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.elga.aps.r4|current/StructureDefinition/StructureDefinition-at-aps-organization.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-aps-organization.csv), [Excel](StructureDefinition-at-aps-organization.xlsx), [Schematron](StructureDefinition-at-aps-organization.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-aps-organization",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile",
    "valueCanonical" : "http://hl7.org/fhir/uv/ips/StructureDefinition/Organization-uv-ips"
  }],
  "url" : "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-organization",
  "version" : "1.1.0",
  "name" : "AtApsOrganization",
  "title" : "AT APS Organization",
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
  "description" : "Das AT APS-Profil für die Organization-Ressource ist vom entsprechenden Profil aus dem HL7® Austria FHIR® Core IG abgeleitet und stellt zusätzlich die Konformität gegenüber dem IPS-Profil sicher, indem die so genannte [`imposeProfile`](http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile)-Erweiterung verwendet wird.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "AT"
    }]
  }],
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
  "type" : "Organization",
  "baseDefinition" : "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-organization",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Organization",
      "path" : "Organization",
      "short" : "AT APS Organization"
    },
    {
      "id" : "Organization.identifier:GDA-OID",
      "path" : "Organization.identifier",
      "sliceName" : "GDA-OID"
    },
    {
      "id" : "Organization.identifier:GDA-OID.assigner",
      "path" : "Organization.identifier.assigner",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-organization"]
      }]
    },
    {
      "id" : "Organization.identifier:VPNR",
      "path" : "Organization.identifier",
      "sliceName" : "VPNR"
    },
    {
      "id" : "Organization.identifier:VPNR.assigner",
      "path" : "Organization.identifier.assigner",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-organization"]
      }]
    },
    {
      "id" : "Organization.identifier:VKZ",
      "path" : "Organization.identifier",
      "sliceName" : "VKZ"
    },
    {
      "id" : "Organization.identifier:VKZ.assigner",
      "path" : "Organization.identifier.assigner",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-organization"]
      }]
    },
    {
      "id" : "Organization.identifier:KANR",
      "path" : "Organization.identifier",
      "sliceName" : "KANR"
    },
    {
      "id" : "Organization.identifier:KANR.assigner",
      "path" : "Organization.identifier.assigner",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-organization"]
      }]
    },
    {
      "id" : "Organization.partOf",
      "path" : "Organization.partOf",
      "type" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy",
          "valueBoolean" : true
        }],
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-organization"]
      }]
    }]
  }
}

```
