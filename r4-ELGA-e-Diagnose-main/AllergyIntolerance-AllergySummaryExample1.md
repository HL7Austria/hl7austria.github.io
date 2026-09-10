# HL7.AT.FHIR.ELGA.EDIAG.R4\Beispielinstanz einer Allergie für die Summary-Liste - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispielinstanz einer Allergie für die Summary-Liste**

## Example AllergyIntolerance: Beispielinstanz einer Allergie für die Summary-Liste

Profile: [AT ELGA e-Diagnose AllergyIntolerance](StructureDefinition-at-elga-ediag-allergyintolerance.md)

**AT ELGA Reported (Fremdangabe)**: true

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**code**: Amoxicillin

**patient**: [Max Mustermann Male, DoB: 1970-01-01 ( Social Security number: 1234010100)](Patient-PatientExample.md)

**recordedDate**: 2026-03-03 00:00:00+0000

**recorder**: [Practitioner Melanie Musterärztin ](Practitioner-PractitionerExample.md)

**asserter**: [Practitioner Melanie Musterärztin ](Practitioner-PractitionerExample.md)

> **reaction****AT ELGA Reaktionszeit**: <6 Stunden**manifestation**: Exanthem, Emesis**onset**: 1983-03-01**note**: 
> 

Hautausschlag und Erbrechen nach Penicillin-Einnahme





## Resource Content

```json
{
  "resourceType" : "AllergyIntolerance",
  "id" : "AllergySummaryExample1",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-allergyintolerance"]
  },
  "extension" : [{
    "url" : "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-reported",
    "valueBoolean" : true
  }],
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical",
      "code" : "active"
    }]
  },
  "verificationStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification",
      "code" : "confirmed"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "372687004",
      "display" : "Amoxicillin"
    }]
  },
  "patient" : {
    "reference" : "Patient/PatientExample"
  },
  "recordedDate" : "2026-03-03T00:00:00+00:00",
  "recorder" : {
    "reference" : "Practitioner/PractitionerExample"
  },
  "asserter" : {
    "reference" : "Practitioner/PractitionerExample"
  },
  "reaction" : [{
    "extension" : [{
      "url" : "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-reaction-time",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhir.hl7.at/elga/ediag/r4/CodeSystem/at-ediag-codesystem-reaction-time-cs",
          "code" : "lt6h",
          "display" : "<6 Stunden"
        }]
      }
    }],
    "manifestation" : [{
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "271807003",
        "display" : "Exanthem"
      }]
    },
    {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "422400008",
        "display" : "Emesis"
      }]
    }],
    "onset" : "1983-03-01",
    "note" : [{
      "text" : "Hautausschlag und Erbrechen nach Penicillin-Einnahme"
    }]
  }]
}

```
