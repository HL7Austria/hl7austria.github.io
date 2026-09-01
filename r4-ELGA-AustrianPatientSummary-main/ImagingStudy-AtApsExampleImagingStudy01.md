# AtApsImagingStudy-Beispiel - Austrian Patient Summary (R4) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AtApsImagingStudy-Beispiel**

## Example ImagingStudy: AtApsImagingStudy-Beispiel

Profile: [AT APS ImagingStudy](StructureDefinition-at-aps-imagingstudy.md)

**identifier**: [DICOM Unique Id](http://terminology.hl7.org/7.3.0/NamingSystem-dui.html)/urn:oid:2.16.124.113543.6003.1154777499.30246.19789.3503430045

**status**: Available

**subject**: [Maria Musterfrau](Patient-at-aps-example-patient-01.md)

**started**: 2011-01-01 11:01:20+0300

**numberOfSeries**: 1

**numberOfInstances**: 1

> **series****uid**: 2.16.124.113543.6003.2588828330.45298.17418.2723805630**number**: 3**modality**: [DICOM: CT](http://hl7.org/fhir/R4/codesystem-dicom-dcim.html#dicom-dcim-CT) (Computed Tomography)**description**: CT-Überblick 180**numberOfInstances**: 1**bodySite**: [SNOMED CT: 67734004](http://snomed.info/id/67734004) (Upper Trunk Structure)

### Instances

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Uid** | **SopClass** | **Number** |
| * | 2.16.124.113543.6003.189642796.63084.16748.2599092903 | unknown: urn:oid:1.2.840.10008.5.1.4.1.1.2 (urn:oid:1.2.840.10008.5.1.4.1.1.2) | 1 |




## Resource Content

```json
{
  "resourceType" : "ImagingStudy",
  "id" : "AtApsExampleImagingStudy01",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-imagingstudy"]
  },
  "identifier" : [{
    "system" : "urn:dicom:uid",
    "value" : "urn:oid:2.16.124.113543.6003.1154777499.30246.19789.3503430045"
  }],
  "status" : "available",
  "subject" : {
    "reference" : "Patient/at-aps-example-patient-01",
    "display" : "Maria Musterfrau"
  },
  "started" : "2011-01-01T11:01:20+03:00",
  "numberOfSeries" : 1,
  "numberOfInstances" : 1,
  "series" : [{
    "uid" : "2.16.124.113543.6003.2588828330.45298.17418.2723805630",
    "number" : 3,
    "modality" : {
      "system" : "http://dicom.nema.org/resources/ontology/DCM",
      "code" : "CT"
    },
    "description" : "CT-Überblick 180",
    "numberOfInstances" : 1,
    "bodySite" : {
      "system" : "http://snomed.info/sct",
      "code" : "67734004",
      "display" : "Upper Trunk Structure"
    },
    "instance" : [{
      "uid" : "2.16.124.113543.6003.189642796.63084.16748.2599092903",
      "sopClass" : {
        "system" : "urn:ietf:rfc:3986",
        "code" : "urn:oid:1.2.840.10008.5.1.4.1.1.2"
      },
      "number" : 1
    }]
  }]
}

```
