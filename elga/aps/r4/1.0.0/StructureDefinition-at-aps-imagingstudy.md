# AT APS ImagingStudy - Austrian Patient Summary (R4) v1.0.0



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-aps-imagingstudy",
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile",
      "valueCanonical" : "http://hl7.org/fhir/uv/ips/StructureDefinition/ImagingStudy-uv-ips"
    }
  ],
  "url" : "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-imagingstudy",
  "version" : "1.0.0",
  "name" : "AtApsImagingStudy",
  "title" : "AT APS ImagingStudy",
  "status" : "active",
  "date" : "2026-02-16T13:36:35+00:00",
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
  "description" : "Das AT APS-Profil für die ImagingStudy-Ressource berücksichtigt zum einen die österreichischen Vorgaben (z.B. Patient und zu verwendende Value-Sets) und stellt andererseits die Konformität gegenüber dem IPS-Profil sicher, indem die so genannte [`imposeProfile`](http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile)-Erweiterung verwendet wird.",
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
      "identity" : "dicom",
      "uri" : "http://nema.org/dicom",
      "name" : "DICOM Tag Mapping"
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
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "ImagingStudy",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/ImagingStudy",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "ImagingStudy",
        "path" : "ImagingStudy",
        "short" : "AT APS ImagingStudy"
      },
      {
        "id" : "ImagingStudy.subject",
        "path" : "ImagingStudy.subject",
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
        "id" : "ImagingStudy.basedOn",
        "path" : "ImagingStudy.basedOn",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-careplan",
              "http://hl7.org/fhir/StructureDefinition/ServiceRequest",
              "http://hl7.org/fhir/StructureDefinition/Appointment",
              "http://hl7.org/fhir/StructureDefinition/AppointmentResponse",
              "http://hl7.org/fhir/StructureDefinition/Task"
            ]
          }
        ]
      },
      {
        "id" : "ImagingStudy.referrer",
        "path" : "ImagingStudy.referrer",
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
        "id" : "ImagingStudy.interpreter",
        "path" : "ImagingStudy.interpreter",
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
        "id" : "ImagingStudy.procedureReference",
        "path" : "ImagingStudy.procedureReference",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-procedure"
            ]
          }
        ]
      },
      {
        "id" : "ImagingStudy.reasonReference",
        "path" : "ImagingStudy.reasonReference",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-condition",
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observation",
              "http://hl7.org/fhir/StructureDefinition/Media",
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-diagnosticreport",
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-documentreference"
            ]
          }
        ]
      },
      {
        "id" : "ImagingStudy.series.specimen",
        "path" : "ImagingStudy.series.specimen",
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
        "id" : "ImagingStudy.series.performer.actor",
        "path" : "ImagingStudy.series.performer.actor",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-practitioner",
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-practitionerrole",
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-organization",
              "http://hl7.org/fhir/StructureDefinition/CareTeam",
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-patient",
              "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-device",
              "http://hl7.org/fhir/StructureDefinition/RelatedPerson"
            ]
          }
        ]
      }
    ]
  }
}

```
