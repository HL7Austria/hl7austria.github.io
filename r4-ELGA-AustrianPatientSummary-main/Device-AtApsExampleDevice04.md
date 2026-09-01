# AtApsExampleDevice04 - Austrian Patient Summary (R4) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AtApsExampleDevice04**

## Example Device: AtApsExampleDevice04

Dieses Gerät erzeugt ein APS FHIR-Dokument.



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "AtApsExampleDevice04",
  "deviceName" : [{
    "name" : "APS Generator",
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
