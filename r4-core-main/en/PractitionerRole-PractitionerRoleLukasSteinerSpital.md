# PractitionerRoleLukasSteinerSpital - HL7® Austria FHIR® Core Implementation Guide v2.1.0

## Example PractitionerRole: PractitionerRoleLukasSteinerSpital

Profile: [HL7® AT Core PractitionerRole Profile](StructureDefinition-at-core-practitionerRole.md)

Lukas Steiner (OID:1.2.40.0.34.99.4613.5): Fachärztin/Facharzt für Innere Medizin und Rheumatologie, Primar / Abteilungsvorstand Innere Medizin at Abteilung für Innere Medizin – Amadeus Spital (Abteilung für Innere Medizin)

-------

| | |
| :--- | :--- |
| Active: | true |
| Practitioner: | [Lukas Steiner (OID:1.2.40.0.34.99.4613.5)](Practitioner-PractitionerLukasSteiner.md) |
| Organization: | [Abteilung für Innere Medizin – Amadeus Spital (Abteilung für Innere Medizin)](Organization-OrganizationAmadeusSpitalInnereMedizin.md) |
| Role: | * Fachärztin/Facharzt für Innere Medizin und Rheumatologie
* Primar / Abteilungsvorstand Innere Medizin
 |
| Specialty: | Rheumatology |



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "PractitionerRoleLukasSteinerSpital",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/core/r4/StructureDefinition/at-core-practitionerRole"]
  },
  "active" : true,
  "practitioner" : {
    "reference" : "Practitioner/PractitionerLukasSteiner"
  },
  "organization" : {
    "reference" : "Organization/OrganizationAmadeusSpitalInnereMedizin"
  },
  "code" : [{
    "coding" : [{
      "system" : "https://termgit.elga.gv.at/CodeSystem/elga-fachaerzte",
      "code" : "166",
      "display" : "Fachärztin/Facharzt für Innere Medizin und Rheumatologie"
    }]
  },
  {
    "text" : "Primar / Abteilungsvorstand Innere Medizin"
  }],
  "specialty" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "394810000",
      "display" : "Rheumatology"
    }]
  }]
}

```
