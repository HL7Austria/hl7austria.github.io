# Beispiel Medikation Ramipril - ELGA e-Medikation (R4) DRAFT v0.1.0

## Example Medication: Beispiel Medikation Ramipril

Profile: [AT ELGA e-Medikation Medication Medikation](StructureDefinition-at-elga-emed-medication-standard-medikation.md)

**code**: RAMIPRIL HEX TBL 5MG

### Ingredients

| | |
| :--- | :--- |
| - | **Item[x]** |
| * | 100000092240 |



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "at-emed-journey-medication-ramipril",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medication-standard-medikation"]
  },
  "code" : {
    "coding" : [{
      "system" : "https://termgit.elga.gv.at/CodeSystem/asp-liste",
      "code" : "2450836",
      "display" : "RAMIPRIL HEX TBL 5MG"
    }]
  },
  "ingredient" : [{
    "itemCodeableConcept" : {
      "coding" : [{
        "system" : "https://termgit.elga.gv.at/CodeSystem/medikation-ages-wirkstoffe",
        "code" : "100000092240"
      }]
    }
  }]
}

```
