# HL7.AT.FHIR.ELGA.EMED.R4\Beispiel Journey 02: Substance Hydrocortison - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel Journey 02: Substance Hydrocortison**

## Example Substance: Beispiel Journey 02: Substance Hydrocortison

Profile: [ELGA e-Med Substanz](StructureDefinition-at-emed-substance.md)

**status**: Active

**code**: Hydrocortison



## Resource Content

```json
{
  "resourceType" : "Substance",
  "id" : "AtEmedJourneySubstanceHydrocortison",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-substance"]
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
