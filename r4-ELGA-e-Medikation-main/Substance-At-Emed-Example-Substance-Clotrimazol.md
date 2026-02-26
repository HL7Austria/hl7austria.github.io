# HL7.AT.FHIR.ELGA.EMED.R4\Beispiel Example: Substance Clotrimazol - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel Example: Substance Clotrimazol**

## Example Substance: Beispiel Example: Substance Clotrimazol

Profile: [ELGA e-Med Substanz](StructureDefinition-at-emed-substance.md)

**status**: Active

**code**: Clotrimazol



## Resource Content

```json
{
  "resourceType" : "Substance",
  "id" : "At-Emed-Example-Substance-Clotrimazol",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-substance"]
  },
  "status" : "active",
  "code" : {
    "coding" : [{
      "system" : "https://termgit.elga.gv.at/CodeSystem/atc-deutsch-wido",
      "code" : "A01AB18",
      "display" : "Clotrimazol"
    }]
  }
}

```
