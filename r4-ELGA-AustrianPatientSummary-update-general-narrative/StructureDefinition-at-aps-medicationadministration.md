# AT APS MedicationAdministration - Austrian Patient Summary (R4) v0.2.0



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-aps-medicationadministration",
  "url" : "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-medicationadministration",
  "version" : "0.2.0",
  "name" : "AtApsMedicationAdministration",
  "title" : "AT APS MedicationAdministration",
  "status" : "active",
  "date" : "2026-02-05T09:58:07+00:00",
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
  "description" : "Das AT APS-Profil für die MedicationAdministration-Ressource berücksichtigt die österreichischen Vorgaben (z.B. Patient).",
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
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    },
    {
      "identity" : "w3c.prov",
      "uri" : "http://www.w3.org/ns/prov",
      "name" : "W3C PROV"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "MedicationAdministration",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MedicationAdministration",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "MedicationAdministration",
        "path" : "MedicationAdministration",
        "short" : "At APS MedicationAdministration"
      },
      {
        "id" : "MedicationAdministration.partOf",
        "path" : "MedicationAdministration.partOf",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-medicationadministration",
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-procedure"
            ]
          }
        ]
      },
      {
        "id" : "MedicationAdministration.medication[x]",
        "path" : "MedicationAdministration.medication[x]",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-medication"
            ]
          }
        ]
      },
      {
        "id" : "MedicationAdministration.subject",
        "path" : "MedicationAdministration.subject",
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
        "id" : "MedicationAdministration.performer.actor",
        "path" : "MedicationAdministration.performer.actor",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-practitioner",
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-practitionerrole",
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-patient",
              "http://hl7.org/fhir/StructureDefinition/RelatedPerson",
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-device"
            ]
          }
        ]
      },
      {
        "id" : "MedicationAdministration.reasonReference",
        "path" : "MedicationAdministration.reasonReference",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-condition",
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observation",
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-diagnosticreport"
            ]
          }
        ]
      },
      {
        "id" : "MedicationAdministration.request",
        "path" : "MedicationAdministration.request",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-medicationrequest"
            ]
          }
        ]
      },
      {
        "id" : "MedicationAdministration.device",
        "path" : "MedicationAdministration.device",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-device"
            ]
          }
        ]
      }
    ]
  }
}

```
