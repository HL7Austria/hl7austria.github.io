# AtApsObservationResultsRadiology-Beispiel - Austrian Patient Summary (R4) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AtApsObservationResultsRadiology-Beispiel**

## Example Observation: AtApsObservationResultsRadiology-Beispiel

Profile: [AT APS Observation Results Radiology](StructureDefinition-at-aps-observationresultsradiology.md)

**partOf**: [ImagingStudy: identifier = urn:dicom:uid#DICOM Unique Id#urn:oid:2.16.124.113543.6003.1154777499.30246.19789.3503430045; status = available; started = 2011-01-01 11:01:20+0300; numberOfSeries = 1; numberOfInstances = 1](ImagingStudy-AtApsExampleImagingStudy01.md)

**status**: Final

**category**: Imaging

**code**: CT Thorax

**subject**: [Maria Musterfrau](Patient-at-aps-example-patient-01.md)

**effective**: 2025-08-15 09:30:00+0200

**performer**: [Hanna Hausärztin](Practitioner-at-aps-example-practitioner-01.md)

**value**: Keine pathologischen Befunde im Thoraxbereich. Lunge belüftet, keine Infiltrate.

**interpretation**: Normalbefund

### Components

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Code** | **Value[x]** | **Interpretation** |
| * | Lungenbefund | Keine Auffälligkeiten | Normalbefund |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "AtApsExampleObservationResultsRadiology01",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observationresultsradiology"]
  },
  "partOf" : [{
    "reference" : "ImagingStudy/AtApsExampleImagingStudy01"
  }],
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "imaging",
      "display" : "Imaging"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "24627-2",
      "display" : "CT Chest"
    }],
    "text" : "CT Thorax"
  },
  "subject" : {
    "reference" : "Patient/at-aps-example-patient-01",
    "display" : "Maria Musterfrau"
  },
  "effectiveDateTime" : "2025-08-15T09:30:00+02:00",
  "performer" : [{
    "reference" : "Practitioner/at-aps-example-practitioner-01",
    "display" : "Hanna Hausärztin"
  }],
  "valueString" : "Keine pathologischen Befunde im Thoraxbereich. Lunge belüftet, keine Infiltrate.",
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "N",
      "display" : "Normal"
    }],
    "text" : "Normalbefund"
  }],
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "http://loinc.org",
        "code" : "18748-4",
        "display" : "Lung opacity"
      }],
      "text" : "Lungenbefund"
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "260373001",
        "display" : "No abnormality detected"
      }],
      "text" : "Keine Auffälligkeiten"
    },
    "interpretation" : [{
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
        "code" : "N",
        "display" : "Normal"
      }],
      "text" : "Normalbefund"
    }]
  }]
}

```
