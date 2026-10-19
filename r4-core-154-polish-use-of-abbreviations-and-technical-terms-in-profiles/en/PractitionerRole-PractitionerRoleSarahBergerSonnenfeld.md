# PractitionerRoleSarahBergerSonnenfeld - HL7® Austria FHIR® Core Implementation Guide v2.1.0

## Example PractitionerRole: PractitionerRoleSarahBergerSonnenfeld

Profile: [HL7® AT Core PractitionerRole Profile](StructureDefinition-at-core-practitionerRole.md)

Sarah Berger (official) (https://hebammenregister.example#HB-EXAMPLE-001): Hebamme at Gruppenpraxis Frauenmedizin Sonnenfeld OG (Ärztliche Gruppenpraxis für Frauenheilkunde und Geburtshilfe (OG)) (urn:publicid:gv.at:baseid+XFN#999998x)

-------

| | |
| :--- | :--- |
| Active: | true |
| Practitioner: | [Sarah Berger (official) (https://hebammenregister.example#HB-EXAMPLE-001)](Practitioner-PractitionerSarahBerger.md) |
| Organization: | [Gruppenpraxis Frauenmedizin Sonnenfeld OG (Ärztliche Gruppenpraxis für Frauenheilkunde und Geburtshilfe (OG)) (urn:publicid:gv.at:baseid+XFN#999998x)](Organization-OrganizationGruppenpraxisFrauenmedizinSonnenfeld.md) |
| Role: | Hebamme |
| Specialty: | Obstetrics |



## Resource Content

```json
{
  "resourceType" : "PractitionerRole",
  "id" : "PractitionerRoleSarahBergerSonnenfeld",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/core/r4/StructureDefinition/at-core-practitionerRole"]
  },
  "active" : true,
  "practitioner" : {
    "reference" : "Practitioner/PractitionerSarahBerger"
  },
  "organization" : {
    "reference" : "Organization/OrganizationGruppenpraxisFrauenmedizinSonnenfeld"
  },
  "code" : [{
    "coding" : [{
      "system" : "https://termgit.elga.gv.at/CodeSystem/elga-gtelvogdarollen",
      "code" : "204",
      "display" : "Hebamme"
    }]
  }],
  "specialty" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "408470005",
      "display" : "Obstetrics"
    }]
  }]
}

```
