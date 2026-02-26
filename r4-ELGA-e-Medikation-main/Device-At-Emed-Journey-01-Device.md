# HL7.AT.FHIR.ELGA.EMED.R4\Beispiel Journey 01: e-Med Fachanwendung - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel Journey 01: e-Med Fachanwendung**

## Example Device: Beispiel Journey 01: e-Med Fachanwendung

e-Medikation Fachanwendung.



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "At-Emed-Journey-01-Device",
  "deviceName" : [{
    "name" : "e-Med Fachanwendung",
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
