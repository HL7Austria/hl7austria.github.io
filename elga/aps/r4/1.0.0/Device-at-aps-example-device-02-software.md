# AtApsDevice-Beispiel 2 - Austrian Patient Summary (R4) v1.0.0



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "at-aps-example-device-02-software",
  "meta" : {
    "profile" : [
      "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-device"
    ]
  },
  "deviceName" : [
    {
      "name" : "Best Health Software Application",
      "type" : "model-name"
    },
    {
      "name" : "Good Health System",
      "type" : "manufacturer-name"
    }
  ],
  "type" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "706687001",
        "display" : "Software"
      }
    ]
  },
  "version" : [
    {
      "value" : "1.0.5"
    }
  ],
  "patient" : {
    "reference" : "Patient/at-aps-example-patient-01",
    "display" : "Maria Musterfrau"
  },
  "parent" : {
    "reference" : "Device/at-aps-example-device-01",
    "display" : "Best Health Device"
  }
}

```
