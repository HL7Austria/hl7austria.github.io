# AtApsExampleDevice03 - Austrian Patient Summary (R4) v1.1.0



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "at-aps-example-device-03",
  "deviceName" : [
    {
      "name" : "APS Generator",
      "type" : "user-friendly-name"
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
  "patient" : {
    "reference" : "Patient/at-aps-example-patient-01",
    "display" : "Maria Musterfrau"
  }
}

```
