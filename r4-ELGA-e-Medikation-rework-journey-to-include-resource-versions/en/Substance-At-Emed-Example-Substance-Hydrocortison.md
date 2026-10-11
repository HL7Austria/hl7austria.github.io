# Beispiel Example: Substance Hydrocortison - ELGA e-Medikation (R4) DRAFT v0.1.0

## Example Substance: Beispiel Example: Substance Hydrocortison

Profile: [At ELGA e-Medikation Substance Wirkstoff](StructureDefinition-at-elga-emed-substance-wirkstoff.md)

**status**: Active

**code**: Hydrocortison



## Resource Content

```json
{
  "resourceType" : "Substance",
  "id" : "At-Emed-Example-Substance-Hydrocortison",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-substance-wirkstoff"]
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
