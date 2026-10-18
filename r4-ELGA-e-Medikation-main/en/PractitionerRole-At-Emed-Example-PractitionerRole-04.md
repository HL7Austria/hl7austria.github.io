# Beispiel PractitionerRole Urlaubsvertretung - ELGA e-Medikation (R4) DRAFT v0.1.0

## Example PractitionerRole: Beispiel PractitionerRole Urlaubsvertretung

Profile: [AT ELGA e-Medikation PractitionerRole](StructureDefinition-at-elga-emed-practitionerrole.md)

Dr. Urlaubsvertretung: Ärztin/Arzt at Ordination Dr. Urlaubsvertretung

-------

| | |
| :--- | :--- |
| Practitioner: | [Dr. Urlaubsvertretung](Practitioner-At-Emed-Example-Practitioner-04.md) |
| Organization: | [Ordination Dr. Urlaubsvertretung](Organization-At-Emed-Example-Organization-04.md) |
| Role: | Ärztin/Arzt |



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "At-Emed-Example-PractitionerRole-04",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-practitionerrole"]
  },
  "practitioner" : {
    "reference" : "Practitioner/At-Emed-Example-Practitioner-04",
    "display" : "Dr. Urlaubsvertretung"
  },
  "organization" : {
    "reference" : "Organization/At-Emed-Example-Organization-04",
    "display" : "Ordination Dr. Urlaubsvertretung"
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
