# AtApsSpecimen-Beispiel - Austrian Patient Summary (R4) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AtApsSpecimen-Beispiel**

## Example Specimen: AtApsSpecimen-Beispiel

Profile: [AT APS Specimen](StructureDefinition-at-aps-specimen.md)

**identifier**: `https://elga.gv.at/specimen-id`/SPC-2025-0001

**status**: Available

**type**: Gewebeprobe

**subject**: [Maria Musterfrau](Patient-at-aps-example-patient-01.md)

**receivedTime**: 2025-06-20 10:00:00+0200

### Collections

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| - | **Collector** | **Collected[x]** | **Quantity** | **Method** | **BodySite** |
| * | [Hanna Hausärztin](Practitioner-at-aps-example-practitioner-01.md) | 2025-06-19 15:00:00+0200 | 2 pieces (Details: UCUM code{pieces} = '{pieces}') | Biopsie | Brustgewebe |

**condition**: Unzureichende Probe für Analyse



## Resource Content

```json
{
  "resourceType" : "Specimen",
  "id" : "AtApsExampleSpecimen01",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-specimen"]
  },
  "identifier" : [{
    "system" : "https://elga.gv.at/specimen-id",
    "value" : "SPC-2025-0001"
  }],
  "status" : "available",
  "type" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "119376003",
      "display" : "Tissue specimen"
    }],
    "text" : "Gewebeprobe"
  },
  "subject" : {
    "reference" : "Patient/at-aps-example-patient-01",
    "display" : "Maria Musterfrau"
  },
  "receivedTime" : "2025-06-20T10:00:00+02:00",
  "collection" : {
    "collector" : {
      "reference" : "Practitioner/at-aps-example-practitioner-01",
      "display" : "Hanna Hausärztin"
    },
    "collectedDateTime" : "2025-06-19T15:00:00+02:00",
    "quantity" : {
      "value" : 2,
      "unit" : "pieces",
      "system" : "http://unitsofmeasure.org",
      "code" : "{pieces}"
    },
    "method" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "104210008",
        "display" : "Biopsy - action"
      }],
      "text" : "Biopsie"
    },
    "bodySite" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "76752008",
        "display" : "Breast structure (body structure)"
      }],
      "text" : "Brustgewebe"
    }
  },
  "condition" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "281268007",
      "display" : "Insufficient sample (finding)"
    }],
    "text" : "Unzureichende Probe für Analyse"
  }]
}

```
