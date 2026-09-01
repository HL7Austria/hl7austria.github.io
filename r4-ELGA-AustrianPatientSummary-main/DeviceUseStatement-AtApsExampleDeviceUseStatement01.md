# AtApsDeviceUseStatement-Beispiel - Austrian Patient Summary (R4) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AtApsDeviceUseStatement-Beispiel**

## Example DeviceUseStatement: AtApsDeviceUseStatement-Beispiel

Profile: [AT APS DeviceUseStatement](StructureDefinition-at-aps-deviceusestatement.md)

**identifier**: 51ebb7a9-4e3a-4360-9a05-0cc2d869086f

**status**: Active

**subject**: [Maria Musterfrau](Patient-at-aps-example-patient-01.md)

**timing**: 2015-02-07

**device**: [Device: type = Gerät](Device-at-aps-example-device-01.md)



## Resource Content

```json
{
  "resourceType" : "DeviceUseStatement",
  "id" : "AtApsExampleDeviceUseStatement01",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-deviceusestatement"]
  },
  "identifier" : [{
    "value" : "51ebb7a9-4e3a-4360-9a05-0cc2d869086f"
  }],
  "status" : "active",
  "subject" : {
    "reference" : "Patient/at-aps-example-patient-01",
    "display" : "Maria Musterfrau"
  },
  "timingDateTime" : "2015-02-07",
  "device" : {
    "reference" : "Device/at-aps-example-device-01"
  }
}

```
