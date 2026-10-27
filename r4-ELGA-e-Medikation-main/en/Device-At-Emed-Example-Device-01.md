# Beispiel Journey 01: e-Med Fachanwendung - ELGA e-Medikation (R4) DRAFT v0.1.0

## Example Device: Beispiel Journey 01: e-Med Fachanwendung

e-Medikation Fachanwendung.



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "At-Emed-Example-Device-01",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-device-fachanwendung"]
  },
  "deviceName" : [{
    "name" : "e-Med Fachanwendung",
    "type" : "user-friendly-name"
  }],
  "type" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "49062001",
      "display" : "Device"
    }]
  }
}

```
