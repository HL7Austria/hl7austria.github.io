# Beispiel PractitionerRole Apothekerin - ELGA e-Medikation (R4) DRAFT v0.1.0

## Example PractitionerRole: Beispiel PractitionerRole Apothekerin

Profile: [AT ELGA Core PractitionerRole Profil](https://build.fhir.org/ig/HL7Austria/ELGA-Core-R4/StructureDefinition-at-elga-core-practitionerRole.html)

Dr. Apothekerin: Apothekerin/Apotheker at Amadeus Apotheke

-------

| | |
| :--- | :--- |
| Practitioner: | [Dr. Apothekerin](Practitioner-At-Emed-Example-Practitioner-03.md) |
| Organization: | [Amadeus Apotheke](Organization-At-Emed-Example-Organization-03.md) |
| Role: | Apothekerin/Apotheker |



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "At-Emed-Example-PractitionerRole-02",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/core/r4/StructureDefinition/at-elga-core-practitionerRole"]
  },
  "practitioner" : {
    "reference" : "Practitioner/At-Emed-Example-Practitioner-03",
    "display" : "Dr. Apothekerin"
  },
  "organization" : {
    "reference" : "Organization/At-Emed-Example-Organization-03",
    "display" : "Amadeus Apotheke"
  },
  "code" : [{
    "coding" : [{
      "system" : "https://termgit.elga.gv.at/CodeSystem/elga-gtelvogdarollen",
      "code" : "222",
      "display" : "Apothekerin/Apotheker"
    }]
  }]
}

```
