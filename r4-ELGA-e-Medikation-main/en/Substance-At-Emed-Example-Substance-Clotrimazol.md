# Beispiel Example: Substance Clotrimazol - ELGA e-Medikation (R4) DRAFT v0.1.0

## Example Substance: Beispiel Example: Substance Clotrimazol

Profile: [At ELGA e-Medikation Substance Wirkstoff](StructureDefinition-at-elga-emed-substance-wirkstoff.md)

**status**: Active

**code**: Clotrimazol



## Resource Content

```json
{
  "resourceType" : "Substance",
  "id" : "At-Emed-Example-Substance-Clotrimazol",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-substance-wirkstoff"]
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
