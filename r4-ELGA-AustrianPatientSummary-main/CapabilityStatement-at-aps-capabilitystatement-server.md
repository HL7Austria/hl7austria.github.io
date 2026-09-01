# AT APS CapabilityStatement (Server) - Austrian Patient Summary (R4) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT APS CapabilityStatement (Server)**

## CapabilityStatement: AT APS CapabilityStatement (Server) 

| | |
| :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/aps/r4/CapabilityStatement/at-aps-capabilitystatement-server | *Version*:1.1.0 |
| Active as of 2025-04-28 | *Computable Name*:AtApsCapabilityStatementServer |

 
Dieser Abschnitt beschreibt die erwarteten Fähigkeiten eines FHIR®-Servers, der die Austrian Patient Summary (APS) unterstützt. Die Liste gibt relevante FHIR®-Profile und -Operationen für diesen Zweck wieder. 

 [Raw OpenAPI-Swagger Definition file](at-aps-capabilitystatement-server.openapi.json) | [Download](at-aps-capabilitystatement-server.openapi.json) 



## Resource Content

```json
{
  "resourceType" : "CapabilityStatement",
  "id" : "at-aps-capabilitystatement-server",
  "url" : "https://fhir.hl7.at/elga/aps/r4/CapabilityStatement/at-aps-capabilitystatement-server",
  "version" : "1.1.0",
  "name" : "AtApsCapabilityStatementServer",
  "title" : "AT APS CapabilityStatement (Server)",
  "status" : "active",
  "experimental" : false,
  "date" : "2025-04-28T13:30:00+01:00",
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
  "description" : "Dieser Abschnitt beschreibt die erwarteten Fähigkeiten eines FHIR®-Servers, der die Austrian Patient Summary (APS) unterstützt. Die Liste gibt relevante FHIR®-Profile und -Operationen für diesen Zweck wieder.",
  "jurisdiction" : [{
    "coding" : [{
      "system" : "urn:iso:std:iso:3166",
      "code" : "AT"
    }]
  }],
  "kind" : "requirements",
  "fhirVersion" : "4.0.1",
  "format" : ["application/fhir+xml", "xml", "application/fhir+json", "json"],
  "rest" : [{
    "mode" : "server",
    "resource" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
        "valueCode" : "SHALL"
      }],
      "type" : "Bundle",
      "profile" : "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-bundle"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
        "valueCode" : "SHALL"
      }],
      "type" : "Composition",
      "profile" : "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-composition"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
        "valueCode" : "SHALL"
      }],
      "type" : "Patient",
      "profile" : "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-patient",
      "operation" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "SHOULD"
        }],
        "name" : "summary",
        "definition" : "http://hl7.org/fhir/uv/ips/OperationDefinition/summary",
        "documentation" : "Operation zum Abrufen einer APS für eine Patient-Ressource. Diese Operation gibt ein APS Document Bundle als Antwort auf einen GET-Request zurück."
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
        "valueCode" : "SHOULD"
      }],
      "type" : "AllergyIntolerance",
      "supportedProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-allergyintolerance"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
        "valueCode" : "SHOULD"
      }],
      "type" : "Condition",
      "supportedProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-condition"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
        "valueCode" : "SHOULD"
      }],
      "type" : "MedicationRequest",
      "supportedProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-medicationrequest"],
      "documentation" : "Some systems may only support AT APS MedicationRequest or AT APS MedicationStatement."
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
        "valueCode" : "SHOULD"
      }],
      "type" : "MedicationStatement",
      "supportedProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-medicationstatement"],
      "documentation" : "Some systems may only support AT APS MedicationRequest or AT APS MedicationStatement."
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
        "valueCode" : "MAY"
      }],
      "type" : "CarePlan"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
        "valueCode" : "MAY"
      }],
      "type" : "ClinicalImpression"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
        "valueCode" : "MAY"
      }],
      "type" : "Consent"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
        "valueCode" : "MAY"
      }],
      "type" : "Device",
      "supportedProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-device"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
        "valueCode" : "MAY"
      }],
      "type" : "DeviceUseStatement",
      "supportedProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-deviceusestatement"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
        "valueCode" : "MAY"
      }],
      "type" : "DocumentReference",
      "supportedProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-diagnosticreport"],
      "operation" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
          "valueCode" : "MAY"
        }],
        "name" : "docref",
        "definition" : "http://hl7.org/fhir/uv/ipa/OperationDefinition/docref"
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
        "valueCode" : "MAY"
      }],
      "type" : "Flag",
      "supportedProfile" : ["http://hl7.org/fhir/uv/ips/StructureDefinition/Flag-alert-uv-ips"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
        "valueCode" : "MAY"
      }],
      "type" : "ImagingStudy",
      "supportedProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-imagingstudy"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
        "valueCode" : "MAY"
      }],
      "type" : "Immunization",
      "supportedProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-immunization"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
        "valueCode" : "MAY"
      }],
      "type" : "Medication",
      "supportedProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-medication"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
        "valueCode" : "MAY"
      }],
      "type" : "MedicationAdministration"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
        "valueCode" : "MAY"
      }],
      "type" : "MedicationDispense"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
        "valueCode" : "MAY"
      }],
      "type" : "Observation",
      "supportedProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observationpregnancyedd",
      "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observationpregnancyoutcome",
      "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observationpregnancystatus",
      "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observationalcoholuse",
      "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observationtobaccouse",
      "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observationresultslaboratorypathology",
      "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observationresultsradiology",
      "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observationvitalsigns"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
        "valueCode" : "MAY"
      }],
      "type" : "Organization",
      "supportedProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-organization"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
        "valueCode" : "MAY"
      }],
      "type" : "Practitioner",
      "supportedProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-practitioner"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
        "valueCode" : "MAY"
      }],
      "type" : "PractitionerRole",
      "supportedProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-practitionerrole"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
        "valueCode" : "MAY"
      }],
      "type" : "Procedure",
      "supportedProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-procedure"]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
        "valueCode" : "MAY"
      }],
      "type" : "RelatedPerson"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/capabilitystatement-expectation",
        "valueCode" : "MAY"
      }],
      "type" : "Specimen",
      "supportedProfile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-specimen"]
    }]
  }]
}

```
