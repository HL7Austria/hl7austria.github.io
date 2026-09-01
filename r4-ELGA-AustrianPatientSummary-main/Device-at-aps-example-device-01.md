# AtApsDevice-Beispiel 1 - Austrian Patient Summary (R4) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AtApsDevice-Beispiel 1**

## Example Device: AtApsDevice-Beispiel 1

Profile: [AT APS Device](StructureDefinition-at-aps-device.md)

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | Best Health Device | Model name |

**type**: Gerät

### Versions

| | |
| :--- | :--- |
| - | **Value** |
| * | 1 |

**patient**: [Maria Musterfrau](Patient-at-aps-example-patient-01.md)



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "at-aps-example-device-01",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-device"]
  },
  "deviceName" : [{
    "name" : "Best Health Device",
    "type" : "model-name"
  }],
  "type" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "49062001",
      "display" : "Gerät"
    }]
  },
  "version" : [{
    "value" : "1"
  }],
  "patient" : {
    "reference" : "Patient/at-aps-example-patient-01",
    "display" : "Maria Musterfrau"
  }
}

```
