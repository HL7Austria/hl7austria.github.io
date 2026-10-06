# HL7.AT.FHIR.ELGA.EMED.R4\Beispiel Journey 03-01: Durchgeführte Abgabe 1 - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel Journey 03-01: Durchgeführte Abgabe 1**

## Example MedicationDispense: Beispiel Journey 03-01: Durchgeführte Abgabe 1

Profile: [AT ELGA e-Medikation MedicationDispense Durchgeführte Abgabe](StructureDefinition-at-elga-emed-medicationdispense-durchgefuehrteabgabe.md)

**R5: Full representation of the dosage instructions (new)**: 

1-0-1-0 | Täglich 1-0-1-0

**R5: When the recording of the dispense started (new)**: 2026-03-01 15:15:00+0000

**AT ELGA e-Medikation Extension Group Identifier**: WYE82A2G8EEW

**status**: Completed

**medication**: `#contained-medication-journey-03-01-02-magistral`

**subject**: [Anton Mustermann](Patient-At-Emed-Example-Patient-01.md)

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [Amadeus Apotheke](Organization-At-Emed-Example-Organization-02.md) |

**authorizingPrescription**: 

* [Geplante Abgabe 2](MedicationRequest-At-Emed-Journey-01-03-Mr-Geplante-Abgabe-02.md)
* [Planeintrag 2](MedicationRequest-At-Emed-Journey-01-02-Mr-Planeintrag-02.md)

**type**: FFC

**quantity**: 1 1 (Details: UCUM code1 = '1')

**whenHandedOver**: 2026-03-01 15:15:00+0000

### DosageInstructions

| | | | | | |
| :--- | :--- | :--- | :--- | :--- | :--- |
| - | **Extension** | **Sequence** | **PatientInstruction** | **Timing** | **Route** |
| * |  | 1 | Dünn auftragen. | Morning, Evening, 2 per 1 day | Anwendung auf der Haut |



## Resource Content

```json
{
  "resourceType" : "MedicationDispense",
  "id" : "At-Emed-Journey-03-01-Md-Durchgefuehrte-Abgabe-02",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medicationdispense-durchgefuehrteabgabe"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationDispense.renderedDosageInstruction",
    "valueMarkdown" : "1-0-1-0 | Täglich 1-0-1-0"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationDispense.recorded",
    "valueDateTime" : "2026-03-01T15:15:00+00:00"
  },
  {
    "url" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-extension-group-identifier",
    "valueIdentifier" : {
      "value" : "WYE82A2G8EEW"
    }
  }],
  "status" : "completed",
  "medicationReference" : {
    "reference" : "#contained-medication-journey-03-01-02-magistral"
  },
  "subject" : {
    "reference" : "Patient/At-Emed-Example-Patient-01",
    "display" : "Anton Mustermann"
  },
  "performer" : [{
    "actor" : {
      "reference" : "Organization/At-Emed-Example-Organization-02",
      "display" : "Amadeus Apotheke"
    }
  }],
  "authorizingPrescription" : [{
    "reference" : "MedicationRequest/At-Emed-Journey-01-03-Mr-Geplante-Abgabe-02",
    "display" : "Geplante Abgabe 2"
  },
  {
    "reference" : "MedicationRequest/At-Emed-Journey-01-02-Mr-Planeintrag-02",
    "display" : "Planeintrag 2"
  }],
  "type" : {
    "coding" : [{
      "code" : "FFC"
    }]
  },
  "quantity" : {
    "value" : 1,
    "system" : "http://unitsofmeasure.org",
    "code" : "1"
  },
  "whenHandedOver" : "2026-03-01T15:15:00+00:00",
  "dosageInstruction" : [{
    "extension" : [{
      "url" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-extension-dosage-category",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhir.hl7.at/elga/emed/r4/CodeSystem/AtElgaEmedCodeSystemDosageCategory",
          "code" : "standard"
        }]
      }
    }],
    "sequence" : 1,
    "patientInstruction" : "Dünn auftragen.",
    "timing" : {
      "repeat" : {
        "boundsDuration" : {
          "value" : 3,
          "unit" : "wk"
        },
        "frequency" : 2,
        "period" : 1,
        "periodUnit" : "d",
        "when" : ["MORN", "EVE"]
      }
    },
    "route" : {
      "coding" : [{
        "system" : "https://termgit.elga.gv.at/CodeSystem-medikationartanwendung.html",
        "code" : "100000073566",
        "display" : "Anwendung auf der Haut"
      }]
    }
  }]
}

```
