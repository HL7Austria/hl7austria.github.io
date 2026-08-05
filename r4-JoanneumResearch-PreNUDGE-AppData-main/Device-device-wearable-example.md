# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\PreNUDGE Wearable Device Example - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PreNUDGE Wearable Device Example**

## Example Device: PreNUDGE Wearable Device Example

Profile: `https://build.fhir.org/ig/HL7Austria/ELGA-AustrianPatientSummary-R4/StructureDefinition-at-aps-device.html`

**identifier**: `https://www.joanneum.at/devices`/dev-wearable-001

**status**: Active

**manufacturer**: PreNUDGE Demo Devices GmbH

### DeviceNames

| | | |
| :--- | :--- | :--- |
| - | **Name** | **Type** |
| * | PreNUDGE Fitness Tracker v1 | Manufacturer name |

**modelNumber**: PND-FT-001

**patient**: [James Pond Male, DoB: 1990-01-01 ( urn:oid:1.2.40.0.10.1.4.3.1#1234567890)](Patient-example.md)

IG © 2026+
[The PreNUDGE Consortium](https://prenudge.at). Package hl7.at.fhir.prenudge.appdata.r4#0.1.0 based on
[FHIR® 4.0.1](http://hl7.org/fhir/R4/). Generated
2026-08-05

Links:
[Table of Contents](toc.md)|
[QA Report](qa.md)

## Resource Content

```json
{
  "resourceType" : "Device",
  "id" : "device-wearable-example",
  "meta" : {
    "profile" : ["https://build.fhir.org/ig/HL7Austria/ELGA-AustrianPatientSummary-R4/StructureDefinition-at-aps-device.html"]
  },
  "identifier" : [{
    "system" : "https://www.joanneum.at/devices",
    "value" : "dev-wearable-001"
  }],
  "status" : "active",
  "manufacturer" : "PreNUDGE Demo Devices GmbH",
  "deviceName" : [{
    "name" : "PreNUDGE Fitness Tracker v1",
    "type" : "manufacturer-name"
  }],
  "modelNumber" : "PND-FT-001",
  "patient" : {
    "reference" : "Patient/example"
  }
}

```
