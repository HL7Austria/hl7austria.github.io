# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\PreNUDGE Glucometer Device Example - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PreNUDGE Glucometer Device Example**

## Example Device: PreNUDGE Glucometer Device Example

Profile: [AT APS Device](https://fhir.hl7.at/elga/aps/r4/1.0.0/StructureDefinition-at-aps-device.html)

**identifier**: `https://www.joanneum.at/devices`/dev-glucometer-001

**status**: Active

**manufacturer**: PreNUDGE Demo Devices GmbH

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | PreNUDGE Glucometer v1 | Manufacturer name |

**modelNumber**: PND-BG-001

**patient**: [James Pond Male, DoB: 1990-01-01 ( urn:oid:1.2.40.0.10.1.4.3.1#1234567890)](Patient-example.md)

IG © 2026+
[The PreNUDGE Consortium](https://prenudge.at). Package hl7.at.fhir.prenudge.appdata.r4#0.1.0 based on
[FHIR® 4.0.1](http://hl7.org/fhir/R4/). Generated
2026-11-23

Links:
[Table of Contents](toc.md)|
[QA Report](qa.md)

## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "device-glucometer-example",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-device"]
  },
  "identifier" : [{
    "system" : "https://www.joanneum.at/devices",
    "value" : "dev-glucometer-001"
  }],
  "status" : "active",
  "manufacturer" : "PreNUDGE Demo Devices GmbH",
  "deviceName" : [{
    "name" : "PreNUDGE Glucometer v1",
    "type" : "manufacturer-name"
  }],
  "modelNumber" : "PND-BG-001",
  "patient" : {
    "reference" : "Patient/example"
  }
}

```
