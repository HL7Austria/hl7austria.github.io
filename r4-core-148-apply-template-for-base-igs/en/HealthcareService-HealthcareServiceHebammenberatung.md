# HealthcareServiceHebammenberatung - HL7® Austria FHIR® Core Implementation Guide v2.1.0

## Example HealthcareService: HealthcareServiceHebammenberatung

Profile: [HL7® AT Core HealthcareService Profile](StructureDefinition-at-core-HealthcareService.md)

Hebammensprechstunde – Schwangerschaft und Wochenbett (Obstetrics) by Gruppenpraxis Frauenmedizin Sonnenfeld OG (Ärztliche Gruppenpraxis für Frauenheilkunde und Geburtshilfe (OG)) (urn:publicid:gv.at:baseid+XFN#999998x)

-------

| | |
| :--- | :--- |
| Active: | true |
| Provided By: | [Gruppenpraxis Frauenmedizin Sonnenfeld OG (Ärztliche Gruppenpraxis für Frauenheilkunde und Geburtshilfe (OG)) (urn:publicid:gv.at:baseid+XFN#999998x)](Organization-OrganizationGruppenpraxisFrauenmedizinSonnenfeld.md) |
| Category: | Counselling |
| Type: | Obstetrics |
| Specialty: | Obstetrics |
| Availability: | * Wednesday: 13:00:00 - 17:00:00
* Friday: 09:00:00 - 12:00:00
 |



## Resource Content

```json
{
  "resourceType" : "HealthcareService",
  "id" : "HealthcareServiceHebammenberatung",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/core/r4/StructureDefinition/at-core-HealthcareService"]
  },
  "active" : true,
  "providedBy" : {
    "reference" : "Organization/OrganizationGruppenpraxisFrauenmedizinSonnenfeld"
  },
  "category" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/service-category",
      "code" : "8",
      "display" : "Counselling"
    }]
  }],
  "type" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/service-type",
      "code" : "482",
      "display" : "Obstetrics"
    }]
  }],
  "specialty" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "408470005",
      "display" : "Obstetrics"
    }]
  }],
  "name" : "Hebammensprechstunde – Schwangerschaft und Wochenbett",
  "availableTime" : [{
    "daysOfWeek" : ["wed"],
    "availableStartTime" : "13:00:00",
    "availableEndTime" : "17:00:00"
  },
  {
    "daysOfWeek" : ["fri"],
    "availableStartTime" : "09:00:00",
    "availableEndTime" : "12:00:00"
  }]
}

```
