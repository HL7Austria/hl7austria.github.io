# AT APS Practitioner - Austrian Patient Summary (R4) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT APS Practitioner**

## Resource Profile: AT APS Practitioner 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-practitioner | *Version*:1.1.0 |
| Active as of 2026-09-01 | *Computable Name*:AtApsPractitioner |

 
Das AT APS-Profil für die Practitioner-Ressource ist vom entsprechenden Profil aus dem HL7® Austria FHIR® Core IG abgeleitet und stellt zusätzlich die Konformität gegenüber dem IPS-Profil sicher, indem die so genannte [`imposeProfile`](http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile)-Erweiterung verwendet wird. 

**Usages:**

* Use this Profile: [AT APS Bundle](StructureDefinition-at-aps-bundle.md)
* Refer to this Profile: [AT APS AllergyIntolerance](StructureDefinition-at-aps-allergyintolerance.md), [AT APS CarePlan](StructureDefinition-at-aps-careplan.md), [AT APS ClinicalImpression](StructureDefinition-at-aps-clinicalimpression.md), [AT APS Composition](StructureDefinition-at-aps-composition.md)... Show 17 more, [AT APS Condition](StructureDefinition-at-aps-condition.md), [AT APS Consent](StructureDefinition-at-aps-consent.md), [AT APS DeviceUseStatement](StructureDefinition-at-aps-deviceusestatement.md), [AT APS DiagnosticReport](StructureDefinition-at-aps-diagnosticreport.md), [AT APS DocumentReference](StructureDefinition-at-aps-documentreference.md), [AT APS Flag Alert](StructureDefinition-at-aps-flagalert.md), [AT APS ImagingStudy](StructureDefinition-at-aps-imagingstudy.md), [AT APS Immunization](StructureDefinition-at-aps-immunization.md), [AT APS MedicationAdministration](StructureDefinition-at-aps-medicationadministration.md), [AT APS MedicationDispense](StructureDefinition-at-aps-medicationdispense.md), [AT APS MedicationRequest](StructureDefinition-at-aps-medicationrequest.md), [AT APS MedicationStatement](StructureDefinition-at-aps-medicationstatement.md), [AT APS Observation](StructureDefinition-at-aps-observation.md), [AT APS Patient](StructureDefinition-at-aps-patient.md), [AT APS PractitionerRole](StructureDefinition-at-aps-practitionerrole.md), [AT APS Procedure](StructureDefinition-at-aps-procedure.md) and [AT APS Specimen](StructureDefinition-at-aps-specimen.md)
* Examples for this Profile: [Practitioner/at-aps-example-practitioner-01](Practitioner-at-aps-example-practitioner-01.md)
* CapabilityStatements using this Profile: [AT APS CapabilityStatement (Server)](CapabilityStatement-at-aps-capabilitystatement-server.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.elga.aps.r4|current/StructureDefinition/StructureDefinition-at-aps-practitioner.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-aps-practitioner.csv), [Excel](StructureDefinition-at-aps-practitioner.xlsx), [Schematron](StructureDefinition-at-aps-practitioner.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-aps-practitioner",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile",
    "valueCanonical" : "http://hl7.org/fhir/uv/ips/StructureDefinition/Practitioner-uv-ips"
  }],
  "url" : "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-practitioner",
  "version" : "1.1.0",
  "name" : "AtApsPractitioner",
  "title" : "AT APS Practitioner",
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
  "description" : "Das AT APS-Profil für die Practitioner-Ressource ist vom entsprechenden Profil aus dem HL7® Austria FHIR® Core IG abgeleitet und stellt zusätzlich die Konformität gegenüber dem IPS-Profil sicher, indem die so genannte [`imposeProfile`](http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile)-Erweiterung verwendet wird.",
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
  "type" : "Practitioner",
  "baseDefinition" : "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-practitioner",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Practitioner",
      "path" : "Practitioner",
      "short" : "AT APS Practitioner"
    },
    {
      "id" : "Practitioner.identifier",
      "path" : "Practitioner.identifier"
    },
    {
      "id" : "Practitioner.identifier.assigner",
      "path" : "Practitioner.identifier.assigner",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-organization"]
      }]
    },
    {
      "id" : "Practitioner.identifier:GDA-OID",
      "path" : "Practitioner.identifier",
      "sliceName" : "GDA-OID"
    },
    {
      "id" : "Practitioner.identifier:GDA-OID.assigner",
      "path" : "Practitioner.identifier.assigner",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-organization"]
      }]
    },
    {
      "id" : "Practitioner.identifier:VPNR",
      "path" : "Practitioner.identifier",
      "sliceName" : "VPNR"
    },
    {
      "id" : "Practitioner.identifier:VPNR.assigner",
      "path" : "Practitioner.identifier.assigner",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-organization"]
      }]
    },
    {
      "id" : "Practitioner.identifier:vbPK",
      "path" : "Practitioner.identifier",
      "sliceName" : "vbPK"
    },
    {
      "id" : "Practitioner.identifier:vbPK.assigner",
      "path" : "Practitioner.identifier.assigner",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-organization"]
      }]
    },
    {
      "id" : "Practitioner.qualification.issuer",
      "path" : "Practitioner.qualification.issuer",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-organization"]
      }]
    }]
  }
}

```
