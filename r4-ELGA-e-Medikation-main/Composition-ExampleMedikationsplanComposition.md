# HL7.AT.FHIR.ELGA.EMED.R4\Medikationsplan - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Medikationsplan**

## Example Composition: Medikationsplan

Profile: [ELGA e-Medikation Composition Medikationsplan](StructureDefinition-at-emed-composition-medikationsplan.md)

**status**: Final

**type**: Medikationsplan

**date**: 2024-10-03 10:12:00+0200

**author**: [Practitioner Max Hausarzt ](Practitioner-ExampleArzt.md)

**title**: Medikationsplan



## Resource Content

```json
{
  "resourceType" : "Composition",
  "id" : "ExampleMedikationsplanComposition",
  "meta" : {
    "profile" : [
      "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-composition-medikationsplan"
    ]
  },
  "status" : "final",
  "type" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "736378000",
        "display" : "Medikationsplan"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/ExamplePatient"
  },
  "date" : "2024-10-03T10:12:00+02:00",
  "author" : [
    {
      "reference" : "Practitioner/ExampleArzt"
    }
  ],
  "title" : "Medikationsplan",
  "section" : [
    {
      "code" : {
        "coding" : [
          {
            "code" : "medikationsplan",
            "display" : "Medikationsplan"
          }
        ]
      },
      "entry" : [
        {
          "reference" : "MedicationRequest/med1"
        },
        {
          "reference" : "MedicationRequest/med2"
        },
        {
          "reference" : "List/planlist"
        }
      ]
    }
  ]
}

```
