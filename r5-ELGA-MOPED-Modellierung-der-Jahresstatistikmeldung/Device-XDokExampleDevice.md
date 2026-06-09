# ELGA.MOPED\XDokExampleDevice - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **XDokExampleDevice**

## Example Device: XDokExampleDevice

Profile: [AT MOPED Device XDok Profil](StructureDefinition-at-moped-device-XDok.md)

**status**: Active

### Names

| | | |
| :--- | :--- | :--- |
| - | **Value** | **Type** |
| * | XDok | Registered name |

**category**: Software

**type**: XDok

### Versions

| | |
| :--- | :--- |
| - | **Value** |
| * | 1.0 |



## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "XDokExampleDevice",
  "meta" : {
    "profile" : ["https://elga.moped.at/StructureDefinition/at-moped-device-XDok"]
  },
  "status" : "active",
  "name" : [{
    "value" : "XDok",
    "type" : "registered-name"
  }],
  "category" : [{
    "coding" : [{
      "system" : "http://hl7.org/fhir/device-category",
      "code" : "software"
    }]
  }],
  "type" : [{
    "coding" : [{
      "system" : "https://elga.moped.at/CodeSystem/MopedDeviceTypesCS",
      "code" : "XDok"
    }]
  }],
  "version" : [{
    "value" : "1.0"
  }]
}

```
