# AtApsObservationResultsLaboratoryPathology-Beispiel - Austrian Patient Summary (R4) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AtApsObservationResultsLaboratoryPathology-Beispiel**

## Example Observation: AtApsObservationResultsLaboratoryPathology-Beispiel

Profile: [AT APS Observation Results Laboratory Pathology](StructureDefinition-at-aps-observationresultslaboratorypathology.md)

**status**: Final

**category**: Laboratory, Allgemeiner Laborbefund

**code**: Pathologiebefund

**subject**: [Maria Musterfrau](Patient-at-aps-example-patient-01.md)

**effective**: 2025-06-20 14:00:00+0200

**performer**: [Hanna Hausärztin](Practitioner-at-aps-example-practitioner-01.md)

**value**: Karzinom — maligne epitheliale Neoplasie

**interpretation**: Pathologischer Befund

**specimen**: [Gewebeprobe Tumorbiopsie](Specimen-AtApsExampleSpecimen01.md)

**hasMember**: [Subobservation 1](Observation-AtApsExampleObservationResultsLaboratoryPathology01.md)

### Components

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Code** | **Value[x]** | **Interpretation** |
| * | Histologischer Typ | Karzinom | Pathologisch relevant |



## Resource Content

```json
{
  "resourceType" : "Observation",
  "id" : "AtApsExampleObservationResultsLaboratoryPathology01",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observationresultslaboratorypathology"]
  },
  "status" : "final",
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
      "code" : "laboratory",
      "display" : "Laboratory"
    }]
  },
  {
    "coding" : [{
      "system" : "https://termgit.elga.gv.at/CodeSystem/elga-laborparameterergaenzung",
      "code" : "1",
      "display" : "Allgemeiner Laborbefund"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "https://termgit.elga.gv.at/CodeSystem/elga-laborparameterergaenzung",
      "code" : "17880",
      "display" : "Zytologie"
    }],
    "text" : "Pathologiebefund"
  },
  "subject" : {
    "reference" : "Patient/at-aps-example-patient-01",
    "display" : "Maria Musterfrau"
  },
  "effectiveDateTime" : "2025-06-20T14:00:00+02:00",
  "performer" : [{
    "reference" : "Practitioner/at-aps-example-practitioner-01",
    "display" : "Hanna Hausärztin"
  }],
  "valueString" : "Karzinom — maligne epitheliale Neoplasie",
  "interpretation" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
      "code" : "H",
      "display" : "High"
    }],
    "text" : "Pathologischer Befund"
  }],
  "specimen" : {
    "reference" : "Specimen/AtApsExampleSpecimen01",
    "display" : "Gewebeprobe Tumorbiopsie"
  },
  "hasMember" : [{
    "reference" : "Observation/AtApsExampleObservationResultsLaboratoryPathology01",
    "display" : "Subobservation 1"
  }],
  "component" : [{
    "code" : {
      "coding" : [{
        "system" : "https://termgit.elga.gv.at/CodeSystem/elga-laborparameterergaenzung",
        "code" : "17881",
        "display" : "Histologischer Typ"
      }],
      "text" : "Histologischer Typ"
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "363406005",
        "display" : "Carcinoma"
      }],
      "text" : "Karzinom"
    },
    "interpretation" : [{
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
        "code" : "H",
        "display" : "High"
      }],
      "text" : "Pathologisch relevant"
    }]
  }]
}

```
