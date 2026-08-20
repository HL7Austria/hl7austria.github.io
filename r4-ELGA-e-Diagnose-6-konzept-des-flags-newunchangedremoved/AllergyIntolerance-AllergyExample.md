# HL7.AT.FHIR.ELGA.EDIAG.R4\Beispiel Allergie - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel Allergie**

## Example AllergyIntolerance: Beispiel Allergie

Profile: [AT ELGA e-Diagnose AllergyIntolerance](StructureDefinition-at-elga-ediag-allergyintolerance.md)

Tag: [currently relevant (Details: AT e-Diagnose Diagnose Typ code relevant = 'currently relevant')](CodeSystem-at-ediag-codesystem-diagnose-type.md)

**AT ELGA Reported (Fremdangabe)**: false

**clinicalStatus**: Active

**verificationStatus**: Refuted

**code**:  Amoxicillin-Allergie

**patient**: [Max Mustermann Male, DoB: 1900-01-01 ( Social Security number: 1234010100)](Patient-PatientExample.md)

**recordedDate**: 2026-04-20 10:00:00+0200

**recorder**: [Practitioner Melanie Musterärztin ](Practitioner-PractitionerExample.md)

**asserter**: [Practitioner Melanie Musterärztin ](Practitioner-PractitionerExample.md)

> **reaction****AT ELGA Reaktionszeit**: <6 Stunden**manifestation**: Exanthem, Emesis**onset**: 2025-03-15**note**: 
> 

Hautausschlag und Erbrechen nach Penicillin-Einnahme





## Resource Content

```json
{
  "resourceType" : "AllergyIntolerance",
  "id" : "AllergyExample",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-allergyintolerance"],
    "tag" : [{
      "system" : "https://fhir.hl7.at/elga/ediag/r4/CodeSystem/at-ediag-codesystem-diagnose-type",
      "code" : "relevant",
      "display" : "currently relevant"
    }]
  },
  "extension" : [{
    "url" : "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-reported",
    "valueBoolean" : false
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
      "code" : "refuted"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "294505008",
      "display" : " Amoxicillin-Allergie"
    }]
  },
  "patient" : {
    "reference" : "Patient/PatientExample"
  },
  "recordedDate" : "2026-04-20T10:00:00+02:00",
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
          "system" : "https://fhir.hl7.at/elga/ediag/r4/CodeSystem/at-ediag-reaction-time-cs",
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
    "onset" : "2025-03-15",
    "note" : [{
      "text" : "Hautausschlag und Erbrechen nach Penicillin-Einnahme"
    }]
  }]
}

```
