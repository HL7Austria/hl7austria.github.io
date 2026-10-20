# PractitionerRoleAnjaLeitnerSonnenfeld - HL7® Austria FHIR® Core Implementation Guide v2.1.0

## Example PractitionerRole: PractitionerRoleAnjaLeitnerSonnenfeld

Profile: [HL7® AT Core PractitionerRole Profile](StructureDefinition-at-core-practitionerRole.md)

Anja Leitner (official) (OID:1.2.40.0.34.99.4613.8): Fachärztin/Facharzt für Frauenheilkunde und Geburtshilfe at Gruppenpraxis Frauenmedizin Sonnenfeld OG (Ärztliche Gruppenpraxis für Frauenheilkunde und Geburtshilfe (OG)) (urn:publicid:gv.at:baseid+XFN#999998x)

-------

| | |
| :--- | :--- |
| Active: | true |
| Practitioner: | [Anja Leitner (official) (OID:1.2.40.0.34.99.4613.8)](Practitioner-PractitionerAnjaLeitner.md) |
| Organization: | [Gruppenpraxis Frauenmedizin Sonnenfeld OG (Ärztliche Gruppenpraxis für Frauenheilkunde und Geburtshilfe (OG)) (urn:publicid:gv.at:baseid+XFN#999998x)](Organization-OrganizationGruppenpraxisFrauenmedizinSonnenfeld.md) |
| Role: | Fachärztin/Facharzt für Frauenheilkunde und Geburtshilfe |
| Specialty: | Obstetrics and gynecology |



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "PractitionerRoleAnjaLeitnerSonnenfeld",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/core/r5/StructureDefinition/at-core-practitionerRole"]
  },
  "active" : true,
  "practitioner" : {
    "reference" : "Practitioner/PractitionerAnjaLeitner"
  },
  "organization" : {
    "reference" : "Organization/OrganizationGruppenpraxisFrauenmedizinSonnenfeld"
  },
  "code" : [{
    "coding" : [{
      "system" : "https://termgit.elga.gv.at/CodeSystem/elga-fachaerzte",
      "code" : "108",
      "display" : "Fachärztin/Facharzt für Frauenheilkunde und Geburtshilfe"
    }]
  }],
  "specialty" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "394585009",
      "display" : "Obstetrics and gynecology"
    }]
  }]
}

```
