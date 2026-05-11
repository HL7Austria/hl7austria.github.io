# HL7.AT.FHIR.ELGA.EMED.R4\Beispiel Example: Substance Hydrocortison - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel Example: Substance Hydrocortison**

## Example Substance: Beispiel Example: Substance Hydrocortison

Profile: [At ELGA e-Medikation Substance Substanz](StructureDefinition-at-elga-emed-substance-substanz.md)

**status**: Active

**code**: Hydrocortison



## Resource Content

```json
{
  "resourceType" : "Substance",
  "id" : "At-Emed-Example-Substance-Hydrocortison",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-substance-substanz"]
  },
  "status" : "active",
  "code" : {
    "coding" : [{
      "system" : "https://termgit.elga.gv.at/CodeSystem/atc-deutsch-wido",
      "code" : "A01AC03",
      "display" : "Hydrocortison"
    }]
  }
}

```
