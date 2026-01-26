# HL7.AT.FHIR.ELGA.EMED.R4\ExamplePlaneintragMed1 - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ExamplePlaneintragMed1**

## Example MedicationRequest: ExamplePlaneintragMed1

Profile: [ELGA e-Medikation Planeintrag](StructureDefinition-at-emed-medicationrequest-planeintrag.md)

**status**: Active

**intent**: Order

**category**: Medikationsplaneintrag

**medication**: EBETREXAT TBL 10MG

**subject**: [Erika Test Female, DoB: 1970-02-14](Patient-ExamplePatient.md)

**authoredOn**: 2024-10-03

**requester**: [Practitioner Max Hausarzt ](Practitioner-ExampleArzt.md)

### DosageInstructions

| | |
| :--- | :--- |
| - | **Text** |
| * | 1x morgens |



## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "ExamplePlaneintragMed1",
  "meta" : {
    "profile" : [
      "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-medicationrequest-planeintrag"
    ]
  },
  "status" : "active",
  "intent" : "order",
  "category" : [
    {
      "coding" : [
        {
          "code" : "1",
          "display" : "Medikationsplaneintrag"
        }
      ]
    }
  ],
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
    "reference" : "Patient/ExamplePatient"
  },
  "authoredOn" : "2024-10-03",
  "requester" : {
    "reference" : "Practitioner/ExampleArzt"
  },
  "dosageInstruction" : [
    {
      "text" : "1x morgens"
    }
  ]
}

```
