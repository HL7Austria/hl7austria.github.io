# PractitionerRoleLukasSteinerOrdination - HL7® Austria FHIR® Core Implementation Guide v2.1.0

## Example PractitionerRole: PractitionerRoleLukasSteinerOrdination

Profile: [HL7® AT Core PractitionerRole Profile](StructureDefinition-at-core-practitionerRole.md)

Lukas Steiner (OID:1.2.40.0.34.99.4613.5): Fachärztin/Facharzt für Innere Medizin und Rheumatologie at Ordination Dr. Lukas Steiner (Fachärztliche Einzelordination für Innere Medizin) (OID:1.2.40.0.34.12.1234.7)

-------

| | |
| :--- | :--- |
| Active: | true |
| Practitioner: | [Lukas Steiner (OID:1.2.40.0.34.99.4613.5)](Practitioner-PractitionerLukasSteiner.md) |
| Organization: | [Ordination Dr. Lukas Steiner (Fachärztliche Einzelordination für Innere Medizin) (OID:1.2.40.0.34.12.1234.7)](Organization-OrganizationOrdinationLukasSteiner.md) |
| Role: | Fachärztin/Facharzt für Innere Medizin und Rheumatologie |
| Specialty: | Rheumatology |
| Location: | [Ordination Dr. Lukas Steiner – Salzburg](Location-LocationOrdinationLukasSteiner.md) |



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "PractitionerRoleLukasSteinerOrdination",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/core/r5/StructureDefinition/at-core-practitionerRole"]
  },
  "active" : true,
  "practitioner" : {
    "reference" : "Practitioner/PractitionerLukasSteiner"
  },
  "organization" : {
    "reference" : "Organization/OrganizationOrdinationLukasSteiner"
  },
  "code" : [{
    "coding" : [{
      "system" : "https://termgit.elga.gv.at/CodeSystem/elga-fachaerzte",
      "code" : "116",
      "display" : "Fachärztin/Facharzt für Innere Medizin und Rheumatologie"
    }]
  }],
  "specialty" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "394810000",
      "display" : "Rheumatology"
    }]
  }],
  "location" : [{
    "reference" : "Location/LocationOrdinationLukasSteiner"
  }]
}

```
