# AT APS Bundle - Austrian Patient Summary (R4) v0.2.0



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-aps-bundle",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile",
      "valueCanonical" : "http://hl7.org/fhir/uv/ips/StructureDefinition/Bundle-uv-ips"
    }
  ],
  "url" : "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-bundle",
  "version" : "0.2.0",
  "name" : "AtApsBundle",
  "title" : "AT APS Bundle",
  "status" : "active",
  "date" : "2025-10-10T07:10:15+00:00",
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
  "description" : "Das AT APS-Profil für die Bundle-Ressource berücksichtigt zum einen die österreichischen Vorgaben (z.B. Patient und zu verwendende Value-Sets) und stellt andererseits die Konformität gegenüber dem IPS-Profil sicher, indem die so genannte [`imposeProfile`](http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile)-Erweiterung verwendet wird.",
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
      "identity" : "cda",
      "uri" : "http://hl7.org/v3/cda",
      "name" : "CDA (R2)"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Bundle",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Bundle",
        "path" : "Bundle",
        "short" : "AT APS Bundle"
      },
      {
        "id" : "Bundle.entry",
        "path" : "Bundle.entry",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "profile",
              "path" : "resource"
            },
            {
              "type" : "type",
              "path" : "resource"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 2
      },
      {
        "id" : "Bundle.entry:Composition",
        "path" : "Bundle.entry",
        "sliceName" : "Composition",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:Composition.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Composition",
            "profile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-composition"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:Patient",
        "path" : "Bundle.entry",
        "sliceName" : "Patient",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "Bundle.entry:Patient.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Patient",
            "profile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-patient"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:AllergyIntolerance",
        "path" : "Bundle.entry",
        "sliceName" : "AllergyIntolerance",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:AllergyIntolerance.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "AllergyIntolerance",
            "profile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-allergyintolerance"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:Condition",
        "path" : "Bundle.entry",
        "sliceName" : "Condition",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:Condition.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Condition",
            "profile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-condition"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:Device",
        "path" : "Bundle.entry",
        "sliceName" : "Device",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:Device.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Device"
          }
        ]
      },
      {
        "id" : "Bundle.entry:DeviceUseStatement",
        "path" : "Bundle.entry",
        "sliceName" : "DeviceUseStatement",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:DeviceUseStatement.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "DeviceUseStatement",
            "profile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-deviceusestatement"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:DiagnosticReport",
        "path" : "Bundle.entry",
        "sliceName" : "DiagnosticReport",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:DiagnosticReport.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "DiagnosticReport",
            "profile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-diagnosticreport"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:ImagingStudy",
        "path" : "Bundle.entry",
        "sliceName" : "ImagingStudy",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:ImagingStudy.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "ImagingStudy",
            "profile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-imagingstudy"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:Immunization",
        "path" : "Bundle.entry",
        "sliceName" : "Immunization",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:Immunization.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Immunization",
            "profile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-immunization"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:Medication",
        "path" : "Bundle.entry",
        "sliceName" : "Medication",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:Medication.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Medication",
            "profile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-medication"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:MedicationRequest",
        "path" : "Bundle.entry",
        "sliceName" : "MedicationRequest",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:MedicationRequest.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "MedicationRequest",
            "profile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-medicationrequest"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:MedicationStatement",
        "path" : "Bundle.entry",
        "sliceName" : "MedicationStatement",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:MedicationStatement.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "MedicationStatement",
            "profile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-medicationstatement"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:Practitioner",
        "path" : "Bundle.entry",
        "sliceName" : "Practitioner",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:Practitioner.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Practitioner",
            "profile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-practitioner"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:PractitionerRole",
        "path" : "Bundle.entry",
        "sliceName" : "PractitionerRole",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:PractitionerRole.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "PractitionerRole",
            "profile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-practitionerrole"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:Procedure",
        "path" : "Bundle.entry",
        "sliceName" : "Procedure",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:Procedure.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Procedure",
            "profile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-procedure"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:Organization",
        "path" : "Bundle.entry",
        "sliceName" : "Organization",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:Organization.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Organization",
            "profile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-organization"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:ObservationPregnancyEdd",
        "path" : "Bundle.entry",
        "sliceName" : "ObservationPregnancyEdd",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:ObservationPregnancyEdd.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observationpregnancyedd"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:ObservationPregnancyOutcome",
        "path" : "Bundle.entry",
        "sliceName" : "ObservationPregnancyOutcome",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:ObservationPregnancyOutcome.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observationpregnancyoutcome"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:ObservationPregnancyStatus",
        "path" : "Bundle.entry",
        "sliceName" : "ObservationPregnancyStatus",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:ObservationPregnancyStatus.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observationpregnancystatus"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:ObservationAlcoholUse",
        "path" : "Bundle.entry",
        "sliceName" : "ObservationAlcoholUse",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:ObservationAlcoholUse.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observationalcoholuse"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:ObservationTobaccoUse",
        "path" : "Bundle.entry",
        "sliceName" : "ObservationTobaccoUse",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:ObservationTobaccoUse.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observationtobaccouse"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:ObservationResultsLaboratoryPathology",
        "path" : "Bundle.entry",
        "sliceName" : "ObservationResultsLaboratoryPathology",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:ObservationResultsLaboratoryPathology.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observationresultslaboratorypathology"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:ObservationResultsRadiology",
        "path" : "Bundle.entry",
        "sliceName" : "ObservationResultsRadiology",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:ObservationResultsRadiology.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observationresultsradiology"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:ObservationVitalSigns",
        "path" : "Bundle.entry",
        "sliceName" : "ObservationVitalSigns",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:ObservationVitalSigns.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Observation",
            "profile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observationvitalsigns"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:Specimen",
        "path" : "Bundle.entry",
        "sliceName" : "Specimen",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:Specimen.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Specimen",
            "profile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-specimen"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:Flag",
        "path" : "Bundle.entry",
        "sliceName" : "Flag",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:Flag.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Flag",
            "profile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-flagalert"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:ClinicalImpression",
        "path" : "Bundle.entry",
        "sliceName" : "ClinicalImpression",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:ClinicalImpression.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "ClinicalImpression",
            "profile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-clinicalimpression"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:CarePlan",
        "path" : "Bundle.entry",
        "sliceName" : "CarePlan",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:CarePlan.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "CarePlan",
            "profile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-careplan"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:Consent",
        "path" : "Bundle.entry",
        "sliceName" : "Consent",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:Consent.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "Consent",
            "profile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-consent"
            ]
          }
        ]
      },
      {
        "id" : "Bundle.entry:DocumentReference",
        "path" : "Bundle.entry",
        "sliceName" : "DocumentReference",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Bundle.entry:DocumentReference.resource",
        "path" : "Bundle.entry.resource",
        "min" : 1,
        "type" : [
          {
            "code" : "DocumentReference",
            "profile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-documentreference"
            ]
          }
        ]
      }
    ]
  }
}

```
