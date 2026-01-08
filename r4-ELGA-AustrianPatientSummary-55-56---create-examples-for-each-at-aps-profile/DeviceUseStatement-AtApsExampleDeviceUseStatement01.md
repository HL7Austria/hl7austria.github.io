# AtApsDeviceUseStatement-Beispiel - Austrian Patient Summary (R4) v0.2.0



## Resource Content

```json
{
  "resourceType" : "DeviceUseStatement",
  "id" : "AtApsExampleDeviceUseStatement01",
  "meta" : {
    "profile" : [
      "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-deviceusestatement"
    ]
  },
  "identifier" : [
    {
      "value" : "51ebb7a9-4e3a-4360-9a05-0cc2d869086f"
    }
  ],
  "status" : "active",
  "subject" : {
    "reference" : "Patient/HL7ATCorePatientExample01",
    "display" : "Max Mustermann"
  },
  "timingDateTime" : "2015-02-07",
  "device" : {
    "reference" : "Device/at-aps-example-device-01"
  }
}

```
