# AtApsObservationVitalSigns-Beispiel - Austrian Patient Summary (R4) v0.2.0



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "AtApsExampleObservationVitalSigns01",
  "meta" : {
    "profile" : [
      "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observationvitalsigns",
      "https://fhir.hl7.at/r4-ELGA-AustrianPatientSummary-ballot_2025_stu1/StructureDefinition-at-aps-observationvitalsigns"
    ]
  },
  "status" : "final",
  "category" : [
    {
      "coding" : [
        {
          "system" : "https://termgit.elga.gv.at/CodeSystem/elga-vitalsigns",
          "code" : "VITALS",
          "display" : "Vitalzeichen"
        }
      ]
    },
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
          "code" : "vital-signs"
        }
      ]
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "85354-9",
        "display" : "Vital signs panel"
      }
    ],
    "text" : "Vitalzeichen"
  },
  "subject" : {
    "reference" : "Patient/HL7ATCorePatientExample01",
    "display" : "Max Mustermann"
  },
  "effectiveDateTime" : "2025-10-17T08:15:00+02:00",
  "performer" : [
    {
      "reference" : "Practitioner/HL7ATCorePractitionerExample01",
      "display" : "Dr. Melanie Musterärztin"
    }
  ],
  "component" : [
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://loinc.org",
            "code" : "8867-4",
            "display" : "Heart rate"
          }
        ],
        "text" : "Herzfrequenz"
      },
      "valueQuantity" : {
        "value" : 72,
        "unit" : "beats/min",
        "system" : "http://unitsofmeasure.org",
        "code" : "/min"
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://loinc.org",
            "code" : "8480-6",
            "display" : "Systolic blood pressure"
          }
        ],
        "text" : "Systolischer Blutdruck"
      },
      "valueQuantity" : {
        "value" : 120,
        "unit" : "mmHg",
        "system" : "http://unitsofmeasure.org",
        "code" : "mm[Hg]"
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://loinc.org",
            "code" : "8462-4",
            "display" : "Diastolic blood pressure"
          }
        ],
        "text" : "Diastolischer Blutdruck"
      },
      "valueQuantity" : {
        "value" : 80,
        "unit" : "mmHg",
        "system" : "http://unitsofmeasure.org",
        "code" : "mm[Hg]"
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://loinc.org",
            "code" : "8310-5",
            "display" : "Body temperature"
          }
        ],
        "text" : "Körpertemperatur"
      },
      "valueQuantity" : {
        "value" : 36.8,
        "unit" : "°C",
        "system" : "http://unitsofmeasure.org",
        "code" : "Cel"
      }
    },
    {
      "code" : {
        "coding" : [
          {
            "system" : "http://loinc.org",
            "code" : "59408-5",
            "display" : "Oxygen saturation in Arterial blood by Pulse oximetry"
          }
        ],
        "text" : "Sauerstoffsättigung"
      },
      "valueQuantity" : {
        "value" : 98,
        "unit" : "%",
        "system" : "http://unitsofmeasure.org",
        "code" : "%"
      }
    }
  ]
}

```
