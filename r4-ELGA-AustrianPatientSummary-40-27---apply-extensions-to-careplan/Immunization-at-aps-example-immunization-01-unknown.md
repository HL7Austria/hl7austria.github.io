# AtApsImmunization-Beispiel - Austrian Patient Summary (R4) v0.2.0



## Resource Content

```json
{
  "resourceType" : "Immunization",
  "id" : "at-aps-example-immunization-01-unknown",
  "meta" : {
    "profile" : [
      "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-immunization"
    ]
  },
  "language" : "de-AT",
  "status" : "completed",
  "vaccineCode" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "787482006",
        "display" : "Unbekannte Immunisierungen"
      }
    ]
  },
  "patient" : {
    "reference" : "Patient/at-aps-example-patient-01",
    "display" : "Maria Musterfrau"
  },
  "occurrenceDateTime" : "1998-06-04T00:00:00+02:00",
  "protocolApplied" : [
    {
      "targetDisease" : [
        {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "836499004",
              "display" : "Masern-Mumps Impfstoffkombination"
            }
          ]
        }
      ],
      "doseNumberString" : "unknown"
    }
  ]
}

```
