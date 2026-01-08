# AtApsDevice-Beispiel 1 - Austrian Patient Summary (R4) v0.2.0



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "at-aps-example-device-01",
  "meta" : {
    "profile" : [
      "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-device"
    ]
  },
  "deviceName" : [
    {
      "name" : "Best Health Device",
      "type" : "model-name"
    }
  ],
  "type" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "49062001",
        "display" : "Gerät"
      }
    ]
  },
  "version" : [
    {
      "value" : "1"
    }
  ],
  "patient" : {
    "reference" : "Patient/at-aps-example-patient-01",
    "display" : "Maria Mustermann"
  }
}

```
