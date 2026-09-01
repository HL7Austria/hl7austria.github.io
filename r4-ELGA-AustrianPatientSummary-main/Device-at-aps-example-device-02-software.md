# AtApsDevice-Beispiel 2 - Austrian Patient Summary (R4) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AtApsDevice-Beispiel 2**

## Example Device: AtApsDevice-Beispiel 2

Profile: [AT APS Device](StructureDefinition-at-aps-device.md)

> **deviceName****name**: Best Health Software Application**type**: Model name

> **deviceName****name**: Good Health System**type**: Manufacturer name

**type**: Software

### Versions

| | |
| :--- | :--- |
| - | **Value** |
| * | 1.0.5 |

**patient**: [Maria Musterfrau](Patient-at-aps-example-patient-01.md)

**parent**: [Best Health Device](Device-at-aps-example-device-01.md)



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "at-aps-example-device-02-software",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-device"]
  },
  "deviceName" : [{
    "name" : "Best Health Software Application",
    "type" : "model-name"
  },
  {
    "name" : "Good Health System",
    "type" : "manufacturer-name"
  }],
  "type" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "706687001",
      "display" : "Software"
    }]
  },
  "version" : [{
    "value" : "1.0.5"
  }],
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
