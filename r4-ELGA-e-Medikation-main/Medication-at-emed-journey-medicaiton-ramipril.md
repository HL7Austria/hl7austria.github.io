# HL7.AT.FHIR.ELGA.EMED.R4\Beispiel Medikation Ramipril - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel Medikation Ramipril**

## Example Medication: Beispiel Medikation Ramipril

Profile: [AT ELGA e-Medikation Medication Medikation](StructureDefinition-at-elga-emed-medication-standard-medikation.md)

**code**: RAMIPRIL HEX TBL 5MG



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "at-emed-journey-medicaiton-ramipril",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medication-standard-medikation"]
  },
  "code" : {
    "coding" : [{
      "system" : "https://termgit.elga.gv.at/CodeSystem/asp-liste",
      "code" : "2450836",
      "display" : "RAMIPRIL HEX TBL 5MG"
    }]
  }
}

```
