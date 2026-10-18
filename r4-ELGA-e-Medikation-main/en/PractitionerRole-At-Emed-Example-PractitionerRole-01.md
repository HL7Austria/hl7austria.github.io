# Beispiel PractitionerRole Allgemeinmedizinerin 01 - ELGA e-Medikation (R4) DRAFT v0.1.0

## Example PractitionerRole: Beispiel PractitionerRole Allgemeinmedizinerin 01

Profile: [AT ELGA e-Medikation PractitionerRole](StructureDefinition-at-elga-emed-practitionerrole.md)

Dr. Hausärztin: Ärztin/Arzt at Ordination Dr. Hausärztin

-------

| | |
| :--- | :--- |
| Practitioner: | [Dr. Hausärztin](Practitioner-At-Emed-Example-Practitioner-01.md) |
| Organization: | [Ordination Dr. Hausärztin](Organization-At-Emed-Example-Organization-01.md) |
| Role: | Ärztin/Arzt |



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "At-Emed-Example-PractitionerRole-01",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-practitionerrole"]
  },
  "practitioner" : {
    "reference" : "Practitioner/At-Emed-Example-Practitioner-01",
    "display" : "Dr. Hausärztin"
  },
  "organization" : {
    "reference" : "Organization/At-Emed-Example-Organization-01",
    "display" : "Ordination Dr. Hausärztin"
  },
  "code" : [{
    "coding" : [{
      "system" : "https://termgit.elga.gv.at/CodeSystem/elga-gtelvogdarollen",
      "code" : "1000",
      "display" : "Ärztin/Arzt"
    }]
  }]
}

```
