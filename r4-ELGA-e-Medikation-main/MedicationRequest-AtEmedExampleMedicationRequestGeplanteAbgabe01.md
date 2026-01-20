# HL7.AT.FHIR.ELGA.EMED.R4\AtEmedMedicationRequestGeplanteAbgabe-Beispiel - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AtEmedMedicationRequestGeplanteAbgabe-Beispiel**

## Example MedicationRequest: AtEmedMedicationRequestGeplanteAbgabe-Beispiel

Profile: [ELGA e-Medikation Geplante Abgabe](StructureDefinition-at-emed-medicationrequest-geplanteAbgabe.md)

**identifier**: WYE82A2G8EEW-4711

**status**: Active

**intent**: Order

**medication**: EBETREXAT TBL 10MG

**subject**: [Max Mustermann Male, DoB: 1900-01-01 ( Social Security number: 1234010100)](Patient-AtEmedExamplePatient01.md)

**authoredOn**: 2024-10-03

**requester**: [Practitioner/AtEmedExamplePractitioner01](Practitioner/AtEmedExamplePractitioner01)

**reasonCode**: Multiple myeloma

**basedOn**: [Planeintrag](Medication/AtEmedExampleMedicationRequestPlaneintrag01)

**groupIdentifier**: WYE82A2G8EE1

**note**: 

> 

Zusätzliche Informationen zur geplanten Abgabe.


> **dosageInstruction****timing**: Late Evening, Once per 1 day

### DoseAndRates

| | |
| :--- | :--- |
| - | **Dose[x]** |
| * | 4 Tablet(Details: SNOMED CT code732936001 = 'Tablet (unit of presentation)') |


### DispenseRequests

| | | | |
| :--- | :--- | :--- | :--- |
| - | **ValidityPeriod** | **NumberOfRepeatsAllowed** | **Quantity** |
| * | 2024-10-03 --> 2024-12-03 | 1 | 168 Tablet(Details: SNOMED CT code732936001 = 'Tablet (unit of presentation)') |



## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "AtEmedExampleMedicationRequestGeplanteAbgabe01",
  "meta" : {
    "profile" : [
      "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-medicationrequest-geplanteAbgabe"
    ]
  },
  "identifier" : [
    {
      "value" : "WYE82A2G8EEW-4711"
    }
  ],
  "status" : "active",
  "intent" : "order",
  "medicationCodeableConcept" : {
    "coding" : [
      {
        "system" : "https://termgit.elga.gv.at/CodeSystem/asp-liste",
        "code" : "2443061",
        "display" : "EBETREXAT TBL 10MG"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/AtEmedExamplePatient01"
  },
  "authoredOn" : "2024-10-03",
  "requester" : {
    "reference" : "Practitioner/AtEmedExamplePractitioner01"
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
  "basedOn" : [
    {
      "reference" : "Medication/AtEmedExampleMedicationRequestPlaneintrag01",
      "display" : "Planeintrag"
    }
  ],
  "groupIdentifier" : {
    "value" : "WYE82A2G8EE1"
  },
  "note" : [
    {
      "text" : "Zusätzliche Informationen zur geplanten Abgabe."
    }
  ],
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
