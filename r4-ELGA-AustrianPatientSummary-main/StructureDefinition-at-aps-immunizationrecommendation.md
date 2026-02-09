# AT APS Immunization - Austrian Patient Summary (R4) v0.2.0



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-aps-immunizationrecommendation",
  "url" : "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-immunizationrecommendation",
  "version" : "0.2.0",
  "name" : "AtApsImmunizationRecommendation",
  "title" : "AT APS Immunization",
  "status" : "active",
  "date" : "2026-02-09T07:50:08+00:00",
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
  "description" : "Das AT APS-Profil für die ImmunizationRecommendation-Ressource berücksichtigt die österreichischen Vorgaben (z.B. Patient und zu verwendende Value-Sets).",
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
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "ImmunizationRecommendation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ImmunizationRecommendation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "ImmunizationRecommendation",
        "path" : "ImmunizationRecommendation",
        "short" : "AT APS Immunization"
      },
      {
        "id" : "ImmunizationRecommendation.patient",
        "path" : "ImmunizationRecommendation.patient",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-patient"
            ]
          }
        ]
      },
      {
        "id" : "ImmunizationRecommendation.authority",
        "path" : "ImmunizationRecommendation.authority",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-organization"
            ]
          }
        ]
      },
      {
        "id" : "ImmunizationRecommendation.recommendation.forecastStatus",
        "path" : "ImmunizationRecommendation.recommendation.forecastStatus",
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://termgit.elga.gv.at/ValueSet/eimpf-specialcasevaccination"
        }
      },
      {
        "id" : "ImmunizationRecommendation.recommendation.supportingImmunization",
        "path" : "ImmunizationRecommendation.recommendation.supportingImmunization",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-immunization",
              "http://hl7.org/fhir/StructureDefinition/ImmunizationEvaluation"
            ]
          }
        ]
      }
    ]
  }
}

```
