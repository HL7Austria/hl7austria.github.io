# AT APS Observation - Austrian Patient Summary (R4) v0.2.0



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-aps-observation",
  "url" : "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observation",
  "version" : "0.2.0",
  "name" : "AtApsObservation",
  "title" : "AT APS Observation",
  "status" : "active",
  "date" : "2026-02-05T08:33:30+00:00",
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
  "description" : "Das AT APS-Profil für die Observation-Ressource berücksichtigt die österreichischen Vorgaben (z.B. Patient).",
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
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Observation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Observation",
        "path" : "Observation",
        "short" : "AT APS Observation"
      },
      {
        "id" : "Observation.basedOn",
        "path" : "Observation.basedOn",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-careplan",
              "http://hl7.org/fhir/StructureDefinition/DeviceRequest",
              "http://hl7.org/fhir/StructureDefinition/ImmunizationRecommendation",
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-medicationrequest",
              "http://hl7.org/fhir/StructureDefinition/NutritionOrder",
              "http://hl7.org/fhir/StructureDefinition/ServiceRequest"
            ]
          }
        ]
      },
      {
        "id" : "Observation.partOf",
        "path" : "Observation.partOf",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-medicationadministration",
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-medicationdispense",
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-medicationstatement",
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-procedure",
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-immunization",
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-imagingstudy"
            ]
          }
        ]
      },
      {
        "id" : "Observation.subject",
        "path" : "Observation.subject",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-patient",
              "http://hl7.org/fhir/StructureDefinition/Group",
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-device",
              "http://hl7.org/fhir/StructureDefinition/Location"
            ]
          }
        ]
      },
      {
        "id" : "Observation.performer",
        "path" : "Observation.performer",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-practitioner",
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-practitionerrole",
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-organization",
              "http://hl7.org/fhir/StructureDefinition/CareTeam",
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-patient",
              "http://hl7.org/fhir/StructureDefinition/RelatedPerson"
            ]
          }
        ]
      },
      {
        "id" : "Observation.specimen",
        "path" : "Observation.specimen",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-specimen"
            ]
          }
        ]
      },
      {
        "id" : "Observation.device",
        "path" : "Observation.device",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-device",
              "http://hl7.org/fhir/StructureDefinition/DeviceMetric"
            ]
          }
        ]
      },
      {
        "id" : "Observation.hasMember",
        "path" : "Observation.hasMember",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observation",
              "http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse",
              "http://hl7.org/fhir/StructureDefinition/MolecularSequence"
            ]
          }
        ]
      },
      {
        "id" : "Observation.derivedFrom",
        "path" : "Observation.derivedFrom",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-documentreference",
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-imagingstudy",
              "http://hl7.org/fhir/StructureDefinition/Media",
              "http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse",
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observation",
              "http://hl7.org/fhir/StructureDefinition/MolecularSequence"
            ]
          }
        ]
      }
    ]
  }
}

```
