# AT APS Patient - Austrian Patient Summary (R4) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT APS Patient**

## Resource Profile: AT APS Patient 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-patient | *Version*:1.1.0 |
| Active as of 2026-09-01 | *Computable Name*:AtApsPatient |

 
Patientendaten, inkl. Angabe von Kontaktpersonen, Hausarzt bzw. primäre Ansprechpartner. 
Um die Vorgaben aus dem Umfeld von MyHealth@EU zu erfüllen, muss ein Vor- und Nachname angegeben werden. 
Das AT APS-Profil für die Patient-Ressource ist vom entsprechenden Profil aus dem HL7® Austria FHIR® Core IG abgeleitet und stellt zusätzlich die Konformität gegenüber dem IPS-Profil sicher, indem die so genannte [`imposeProfile`](http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile)-Erweiterung verwendet wird. Deshalb ist die Angabe des Geburtsdatums erforderlich. 

> Dieses Profil beinhaltet Abkürzungen (z.B. bPK = bereichsspezifisches Personenkennzeichen) aus dem [HL7® AT Core Patient Profile](https://fhir.hl7.at/HL7-AT-FHIR-Core-R4/2.0.0/StructureDefinition-at-core-patient.html).Die Beschreibung der Abkürzungen in dem Profil wird in diesem Ticket verfolgt: [#147](https://github.com/HL7Austria/HL7-AT-FHIR-Core-R4/issues/147) und wird in der nächsten Version des APS IGs übernommen.

**Usages:**

* Use this Profile: [AT APS Bundle](StructureDefinition-at-aps-bundle.md)
* Refer to this Profile: [AT APS AllergyIntolerance](StructureDefinition-at-aps-allergyintolerance.md), [AT APS CarePlan](StructureDefinition-at-aps-careplan.md), [AT APS ClinicalImpression](StructureDefinition-at-aps-clinicalimpression.md), [AT APS Composition](StructureDefinition-at-aps-composition.md)... Show 25 more, [AT APS Condition](StructureDefinition-at-aps-condition.md), [AT APS Consent](StructureDefinition-at-aps-consent.md), [AT APS Device](StructureDefinition-at-aps-device.md), [AT APS DeviceUseStatement](StructureDefinition-at-aps-deviceusestatement.md), [AT APS DiagnosticReport](StructureDefinition-at-aps-diagnosticreport.md), [AT APS DocumentReference](StructureDefinition-at-aps-documentreference.md), [AT APS Flag Alert](StructureDefinition-at-aps-flagalert.md), [AT APS ImagingStudy](StructureDefinition-at-aps-imagingstudy.md), [AT APS Immunization](StructureDefinition-at-aps-immunization.md), [AT APS Immunization](StructureDefinition-at-aps-immunizationrecommendation.md), [AT APS MedicationAdministration](StructureDefinition-at-aps-medicationadministration.md), [AT APS MedicationDispense](StructureDefinition-at-aps-medicationdispense.md), [AT APS MedicationRequest](StructureDefinition-at-aps-medicationrequest.md), [AT APS MedicationStatement](StructureDefinition-at-aps-medicationstatement.md), [AT APS Observation](StructureDefinition-at-aps-observation.md), [AT APS Observation Alcohol Use](StructureDefinition-at-aps-observationalcoholuse.md), [AT APS Observation Pregnancy Expected Delivery Date](StructureDefinition-at-aps-observationpregnancyedd.md), [AT APS Observation Pregnancy Outcome](StructureDefinition-at-aps-observationpregnancyoutcome.md), [AT APS Observation Pregnancy Status](StructureDefinition-at-aps-observationpregnancystatus.md), [AT APS Observation Results Radiology](StructureDefinition-at-aps-observationresultsradiology.md), [AT APS Observation Tobacco Use](StructureDefinition-at-aps-observationtobaccouse.md), [AT APS Observation Vital Signs](StructureDefinition-at-aps-observationvitalsigns.md), [AT APS Patient](StructureDefinition-at-aps-patient.md), [AT APS Procedure](StructureDefinition-at-aps-procedure.md) and [AT APS Specimen](StructureDefinition-at-aps-specimen.md)
* Examples for this Profile: [Patient/at-aps-example-patient-01](Patient-at-aps-example-patient-01.md)
* CapabilityStatements using this Profile: [AT APS CapabilityStatement (Server)](CapabilityStatement-at-aps-capabilitystatement-server.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.elga.aps.r4|current/StructureDefinition/StructureDefinition-at-aps-patient.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-aps-patient.csv), [Excel](StructureDefinition-at-aps-patient.xlsx), [Schematron](StructureDefinition-at-aps-patient.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-aps-patient",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile",
    "valueCanonical" : "http://hl7.org/fhir/uv/ips/StructureDefinition/Patient-uv-ips"
  }],
  "url" : "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-patient",
  "version" : "1.1.0",
  "name" : "AtApsPatient",
  "title" : "AT APS Patient",
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
  "description" : "Patientendaten, inkl. Angabe von Kontaktpersonen, Hausarzt bzw. primäre Ansprechpartner.\n\nUm die Vorgaben aus dem Umfeld von MyHealth@EU zu erfüllen, muss ein Vor- und Nachname angegeben werden.\n\nDas AT APS-Profil für die Patient-Ressource ist vom entsprechenden Profil aus dem HL7® Austria FHIR® Core IG abgeleitet und stellt zusätzlich die Konformität gegenüber dem IPS-Profil sicher, indem die so genannte [`imposeProfile`](http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile)-Erweiterung verwendet wird. \nDeshalb ist die Angabe des Geburtsdatums erforderlich.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "AT"
    }]
  }],
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "at-core-mapping-patient2cdaatv3",
    "uri" : "https://wiki.hl7.at/index.php?title=ILF:Allgemeiner_Implementierungsleitfaden_(Version_3)",
    "name" : "Allgemeiner Implementierungsleitfaden v3"
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
    "identity" : "loinc",
    "uri" : "http://loinc.org",
    "name" : "LOINC code for the element"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-patient",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Patient",
      "path" : "Patient",
      "short" : "AT APS Patient"
    },
    {
      "id" : "Patient.identifier",
      "path" : "Patient.identifier",
      "min" : 1
    },
    {
      "id" : "Patient.identifier.assigner",
      "path" : "Patient.identifier.assigner",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-organization"]
      }]
    },
    {
      "id" : "Patient.identifier:socialSecurityNumber",
      "path" : "Patient.identifier",
      "sliceName" : "socialSecurityNumber"
    },
    {
      "id" : "Patient.identifier:socialSecurityNumber.assigner",
      "path" : "Patient.identifier.assigner",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-organization"]
      }]
    },
    {
      "id" : "Patient.identifier:bPK",
      "path" : "Patient.identifier",
      "sliceName" : "bPK"
    },
    {
      "id" : "Patient.identifier:bPK.assigner",
      "path" : "Patient.identifier.assigner",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-organization"]
      }]
    },
    {
      "id" : "Patient.identifier:localPatientId",
      "path" : "Patient.identifier",
      "sliceName" : "localPatientId",
      "min" : 1
    },
    {
      "id" : "Patient.identifier:localPatientId.assigner",
      "path" : "Patient.identifier.assigner",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-organization"]
      }]
    },
    {
      "id" : "Patient.name.family",
      "path" : "Patient.name.family",
      "min" : 1
    },
    {
      "id" : "Patient.name.given",
      "path" : "Patient.name.given",
      "min" : 1
    },
    {
      "id" : "Patient.birthDate",
      "path" : "Patient.birthDate",
      "min" : 1
    },
    {
      "id" : "Patient.contact.organization",
      "path" : "Patient.contact.organization",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-organization"]
      }]
    },
    {
      "id" : "Patient.generalPractitioner",
      "path" : "Patient.generalPractitioner",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-organization",
        "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-practitioner",
        "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-practitionerrole"]
      }]
    },
    {
      "id" : "Patient.managingOrganization",
      "path" : "Patient.managingOrganization",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-organization"]
      }]
    },
    {
      "id" : "Patient.link.other",
      "path" : "Patient.link.other",
      "type" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy",
          "valueBoolean" : false
        }],
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-patient",
        "http://hl7.org/fhir/StructureDefinition/RelatedPerson"]
      }]
    }]
  }
}

```
