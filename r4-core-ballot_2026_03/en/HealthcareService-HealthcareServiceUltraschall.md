# HealthcareServiceUltraschall - HL7® Austria FHIR® Core Implementation Guide v2.1.0

## Example HealthcareService: HealthcareServiceUltraschall

Profile: [HL7® AT Core HealthcareService Profile](StructureDefinition-at-core-HealthcareService.md)

Gynäkologische Ultraschalldiagnostik (Gynäkologische Ultraschalldiagnostik) by Gruppenpraxis Frauenmedizin Sonnenfeld OG (Ärztliche Gruppenpraxis für Frauenheilkunde und Geburtshilfe (OG)) (urn:publicid:gv.at:baseid+XFN#999998x)

-------

| | |
| :--- | :--- |
| Active: | true |
| Provided By: | [Gruppenpraxis Frauenmedizin Sonnenfeld OG (Ärztliche Gruppenpraxis für Frauenheilkunde und Geburtshilfe (OG)) (urn:publicid:gv.at:baseid+XFN#999998x)](Organization-OrganizationGruppenpraxisFrauenmedizinSonnenfeld.md) |
| Category: | Specialist Obstetrics & Gynecology |
| Type: | Gynäkologische Ultraschalldiagnostik |
| Specialty: | Obstetrics and gynecology |
| Availability: | * Monday, Wednesday: 08:00:00 - 12:00:00
* Thursday: 14:00:00 - 17:00:00
 |



## Resource Content

```json
{
  "resourceType" : "HealthcareService",
  "id" : "HealthcareServiceUltraschall",
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
      "code" : "28",
      "display" : "Specialist Obstetrics & Gynecology"
    }]
  }],
  "type" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/service-type",
      "code" : "213",
      "display" : "Obstetric/Gynaecological Ultrasound"
    }],
    "text" : "Gynäkologische Ultraschalldiagnostik"
  }],
  "specialty" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "394585009",
      "display" : "Obstetrics and gynecology"
    }]
  }],
  "name" : "Gynäkologische Ultraschalldiagnostik",
  "availableTime" : [{
    "daysOfWeek" : ["mon", "wed"],
    "availableStartTime" : "08:00:00",
    "availableEndTime" : "12:00:00"
  },
  {
    "daysOfWeek" : ["thu"],
    "availableStartTime" : "14:00:00",
    "availableEndTime" : "17:00:00"
  }]
}

```
