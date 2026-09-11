# HL7.AT.FHIR.ELGA.EDIAG.R4\Beispiel Device - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel Device**

## Example Device: Beispiel Device

e-Diagnose Fachanwendung



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "DeviceExample",
  "deviceName" : [{
    "name" : "e-Diagnose Fachanwendung",
    "type" : "user-friendly-name"
  }],
  "type" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "49062001",
      "display" : "Gerät"
    }]
  }
}

```
