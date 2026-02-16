# AT APS ClinicalImpression - Austrian Patient Summary (R4) v1.0.0



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-aps-clinicalimpression",
  "url" : "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-clinicalimpression",
  "version" : "1.0.0",
  "name" : "AtApsClinicalImpression",
  "title" : "AT APS ClinicalImpression",
  "status" : "active",
  "date" : "2026-02-16T15:08:31+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [
    {
      "name" : "ELGA GmbH",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://elga.gv.at"
        }
      ]
    },
    {
      "name" : "ELGA GmbH",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://elga.gv.at",
          "use" : "work"
        }
      ]
    }
  ],
  "description" : "Das AT APS-Profil für die ClinicalImpression-Ressource berücksichtigt die österreichischen Vorgaben (z.B. Patient).",
  "jurisdiction" : [
    {
      "coding" : [
        {
          "system" : "urn:iso:std:iso:3166",
          "code" : "AT"
        }
      ]
    }
  ],
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
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
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "ClinicalImpression",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ClinicalImpression",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "ClinicalImpression",
        "path" : "ClinicalImpression",
        "short" : "AT APS ClinicalImpression"
      },
      {
        "id" : "ClinicalImpression.subject",
        "path" : "ClinicalImpression.subject",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-patient",
              "http://hl7.org/fhir/StructureDefinition/Group"
            ]
          }
        ]
      },
      {
        "id" : "ClinicalImpression.assessor",
        "path" : "ClinicalImpression.assessor",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-practitioner",
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-practitionerrole"
            ]
          }
        ]
      },
      {
        "id" : "ClinicalImpression.previous",
        "path" : "ClinicalImpression.previous",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-clinicalimpression"
            ]
          }
        ]
      },
      {
        "id" : "ClinicalImpression.problem",
        "path" : "ClinicalImpression.problem",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-condition",
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-allergyintolerance"
            ]
          }
        ]
      },
      {
        "id" : "ClinicalImpression.investigation.item",
        "path" : "ClinicalImpression.investigation.item",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observation",
              "http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse",
              "http://hl7.org/fhir/StructureDefinition/FamilyMemberHistory",
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-diagnosticreport",
              "http://hl7.org/fhir/StructureDefinition/RiskAssessment",
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-imagingstudy",
              "http://hl7.org/fhir/StructureDefinition/Media"
            ]
          }
        ]
      },
      {
        "id" : "ClinicalImpression.finding.itemReference",
        "path" : "ClinicalImpression.finding.itemReference",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-condition",
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observation",
              "http://hl7.org/fhir/StructureDefinition/Media"
            ]
          }
        ]
      }
    ]
  }
}

```
