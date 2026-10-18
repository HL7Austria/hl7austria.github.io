# Beispiel PractitionerRole Ärztin im Krankenhaus - ELGA e-Medikation (R4) DRAFT v0.1.0

## Example PractitionerRole: Beispiel PractitionerRole Ärztin im Krankenhaus

Profile: [AT ELGA e-Medikation PractitionerRole](StructureDefinition-at-elga-emed-practitionerrole.md)

Dr. Krankenhaus: Fachärztin/Facharzt für Chirurgie at Krankenhaus

-------

| | |
| :--- | :--- |
| Practitioner: | [Dr. Krankenhaus](Practitioner-At-Emed-Example-Practitioner-03.md) |
| Organization: | [Krankenhaus](Organization-At-Emed-Example-Organization-03.md) |
| Role: | Fachärztin/Facharzt für Chirurgie |
| Specialty: | Internal medicine |



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "At-Emed-Example-PractitionerRole-03",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-practitionerrole"]
  },
  "practitioner" : {
    "reference" : "Practitioner/At-Emed-Example-Practitioner-03",
    "display" : "Dr. Krankenhaus"
  },
  "organization" : {
    "reference" : "Organization/At-Emed-Example-Organization-03",
    "display" : "Krankenhaus"
  },
  "code" : [{
    "coding" : [{
      "system" : "https://termgit.elga.gv.at/CodeSystem/elga-gtelvogdarollen",
      "code" : "107",
      "display" : "Fachärztin/Facharzt für Chirurgie"
    }]
  }],
  "specialty" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "419192003",
      "display" : "Internal medicine"
    }]
  }]
}

```
