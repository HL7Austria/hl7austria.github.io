# Immunization-Beispiel 1 - Austrian Patient Summary (R4) v1.1.0



## Resource Content

```json
{
  "resourceType" : "Immunization",
  "id" : "at-aps-example-immunization-01",
  "meta" : {
    "profile" : [
      "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-immunization"
    ]
  },
  "contained" : [
    {
      "resourceType" : "ServiceRequest",
      "id" : "ExampleServiceRequest01",
      "status" : "active",
      "intent" : "order",
      "code" : {
        "coding" : [
          {
            "system" : "http://snomed.info/sct",
            "code" : "390865008"
          }
        ]
      },
      "subject" : {
        "reference" : "Patient/at-aps-example-patient-01",
        "display" : "Max Mustermann"
      },
      "occurrenceDateTime" : "2021-10-01",
      "note" : [
        {
          "text" : "Patient hat Angst vor Spritzen."
        }
      ]
    }
  ],
  "extension" : [
    {
      "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-Immunization.basedOn",
      "valueReference" : {
        "reference" : "#ExampleServiceRequest01"
      }
    }
  ],
  "status" : "completed",
  "vaccineCode" : {
    "coding" : [
      {
        "system" : "https://termgit.elga.gv.at/CodeSystem/eimpf-impfstoffe",
        "code" : "2457324",
        "display" : "BOOSTRIX POLIO FSPR 0,5ML"
      }
    ],
    "text" : "Diphtherie-Pertussis-Poliomyelitis-Tetanus"
  },
  "patient" : {
    "reference" : "Patient/at-aps-example-patient-01",
    "display" : "Maria Musterfrau"
  },
  "occurrenceDateTime" : "2021-10-01",
  "route" : {
    "coding" : [
      {
        "system" : "https://termgit.elga.gv.at/CodeSystem/medikationartanwendung",
        "code" : "100000073600",
        "display" : "intramuskuläre Anwendung"
      }
    ]
  },
  "performer" : [
    {
      "actor" : {
        "reference" : "Practitioner/at-aps-example-practitioner-01",
        "display" : "Hanna Hausärztin"
      }
    }
  ],
  "protocolApplied" : [
    {
      "targetDisease" : [
        {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "397430003",
              "display" : "Diphtheria"
            }
          ]
        },
        {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "27836007",
              "display" : "Pertussis"
            }
          ]
        },
        {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "398102009",
              "display" : "Poliomyelitis"
            }
          ]
        },
        {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "76902006",
              "display" : "Tetanus"
            }
          ]
        }
      ],
      "doseNumberPositiveInt" : 1
    }
  ]
}

```
