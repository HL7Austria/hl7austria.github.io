# HL7.AT.FHIR.ELGA.EMED.R4\Beispiel Durchgeführte Abgabe 1 - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel Durchgeführte Abgabe 1**

## Example MedicationDispense: Beispiel Durchgeführte Abgabe 1

Profile: [AT ELGA e-Medikation MedicationDispense Durchgeführte Abgabe](StructureDefinition-at-elga-emed-medikationdispense-durchgefuehrteabgabe.md)

**R5: When the recording of the dispense started (new)**: 2026-02-27 10:20:00+0000

**status**: Completed

**medication**: [Cefuroxime MIP 1500 mg, powder for solution for injection/infusion. N10.](http://hl7.eu/fhir/mpd/0.1.0-ballot/Medication-01C-Cefuroxime1500Branded.html)

**subject**: [Max Mustermann Male, DoB: 1900-01-01 ( Social Security number: 1234010100)](Patient-At-Emed-Example-Patient-01.md)

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [PractitionerRole Pharmacist](http://hl7.eu/fhir/mpd/0.1.0-ballot/PractitionerRole-pharmacist1.html) |

**authorizingPrescription**: [MedicationRequest: identifier = 10-123EP; status = active; intent = order; authoredOn = 2024-12-06](http://hl7.eu/fhir/mpd/0.1.0-ballot/MedicationRequest-400C-prescription-cefuroxime-singleline.html)

**type**: FF

**quantity**: 1 1 (Details: UCUM code1 = '1')

**whenHandedOver**: 2026-02-27 10:20:00+0000



## Resource Content

```json
{
  "resourceType" : "MedicationDispense",
  "id" : "At-Emed-Example-Durchgefuehrte-Abgabe-01",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medikationdispense-durchgefuehrteabgabe"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationDispense.recorded",
    "valueDateTime" : "2026-02-27T10:20:00+00:00"
  }],
  "status" : "completed",
  "medicationReference" : {
    "reference" : "Medication/01C-Cefuroxime1500Branded",
    "display" : "Cefuroxime MIP 1500 mg, powder for solution for injection/infusion. N10."
  },
  "subject" : {
    "reference" : "Patient/At-Emed-Example-Patient-01"
  },
  "performer" : [{
    "actor" : {
      "reference" : "PractitionerRole/pharmacist1"
    }
  }],
  "authorizingPrescription" : [{
    "reference" : "MedicationRequest/400C-prescription-cefuroxime-singleline"
  }],
  "type" : {
    "coding" : [{
      "code" : "FF"
    }]
  },
  "quantity" : {
    "value" : 1,
    "system" : "http://unitsofmeasure.org",
    "code" : "1"
  },
  "whenHandedOver" : "2026-02-27T10:20:00+00:00"
}

```
