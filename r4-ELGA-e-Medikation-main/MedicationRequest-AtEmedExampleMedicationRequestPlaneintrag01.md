# HL7.AT.FHIR.ELGA.EMED.R4\AtEmedMedicationRequestPlaneintrag-Beispiel - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AtEmedMedicationRequestPlaneintrag-Beispiel**

## Example MedicationRequest: AtEmedMedicationRequestPlaneintrag-Beispiel

Profiles: [ELGA e-Medikation Planeintrag](StructureDefinition-at-emed-medicationrequest-planeintrag.md), [MedicationRequest: MPD](http://hl7.eu/fhir/mpd/0.1.0-ballot/StructureDefinition-MedicationRequest-eu-mpd.html)

**identifier**: 100-1/3

**status**: Active

**intent**: Option

**medication**: Thalidomide 50 mg oral capsule

**subject**: [Max Mustermann Male, DoB: 1900-01-01 ( Social Security number: 1234010100)](Patient-AtEmedExamplePatient01.md)

**authoredOn**: 2024-10-03

**requester**: [PractitionerRole Clinical oncologist](http://hl7.eu/fhir/mpd/0.1.0-ballot/PractitionerRole-doctor1.html)

**reasonCode**: Multiple myeloma

**groupIdentifier**: 100

> **dosageInstruction****timing**: Late Evening, Once per 1 day

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 4 Tablet (Details: SNOMED CT code732936001 = 'Tablet (unit of presentation)') |


### DispenseRequests

| | | | |
| :--- | :--- | :--- | :--- |
| - | **ValidityPeriod** | **NumberOfRepeatsAllowed** | **Quantity** |
| * | 2024-10-03 --> 2024-12-03 | 1 | 168 Tablet (Details: SNOMED CT code732936001 = 'Tablet (unit of presentation)') |



## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "AtEmedExampleMedicationRequestPlaneintrag01",
  "meta" : {
    "profile" : [
      "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-medicationrequest-planeintrag",
      "http://hl7.eu/fhir/mpd/StructureDefinition/MedicationRequest-eu-mpd"
    ]
  },
  "identifier" : [
    {
      "value" : "100-1/3"
    }
  ],
  "status" : "active",
  "intent" : "option",
  "medicationCodeableConcept" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "376255008",
        "display" : "Thalidomide 50 mg oral capsule"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/AtEmedExamplePatient01"
  },
  "authoredOn" : "2024-10-03",
  "requester" : {
    "reference" : "PractitionerRole/doctor1"
  },
  "reasonCode" : [
    {
      "coding" : [
        {
          "system" : "http://snomed.info/sct",
          "code" : "109989006",
          "display" : "Multiple myeloma"
        }
      ]
    }
  ],
  "groupIdentifier" : {
    "value" : "100"
  },
  "dosageInstruction" : [
    {
      "timing" : {
        "repeat" : {
          "boundsDuration" : {
            "value" : 42,
            "unit" : "day",
            "system" : "http://unitsofmeasure.org",
            "code" : "d"
          },
          "frequency" : 1,
          "period" : 1,
          "periodUnit" : "d",
          "when" : ["EVE.late"]
        }
      },
      "doseAndRate" : [
        {
          "doseQuantity" : {
            "value" : 4,
            "unit" : "Tablet",
            "system" : "http://snomed.info/sct",
            "code" : "732936001"
          }
        }
      ]
    }
  ],
  "dispenseRequest" : {
    "validityPeriod" : {
      "start" : "2024-10-03",
      "end" : "2024-12-03"
    },
    "numberOfRepeatsAllowed" : 1,
    "quantity" : {
      "value" : 168,
      "unit" : "Tablet",
      "system" : "http://snomed.info/sct",
      "code" : "732936001"
    }
  }
}

```
