# Example HealthcareService with Specialty - HL7® Austria FHIR® Core Implementation Guide v2.1.0

## Example HealthcareService: Example HealthcareService with Specialty

Profile: [HL7® AT Core HealthcareService Profile](StructureDefinition-at-core-HealthcareService.md)

Rheumatology Service by Abteilung für Innere Medizin – Amadeus Spital (Abteilung für Innere Medizin)

-------

| | |
| :--- | :--- |
| Active: | true |
| Provided By: | [Abteilung für Innere Medizin – Amadeus Spital (Abteilung für Innere Medizin)](Organization-OrganizationAmadeusSpitalInnereMedizin.md) |
| Specialty: | Rheumatologie |
| Location: | [Campus Linz (urn:oid:1.2.40.0.34.4.10#K101.2)](Location-HL7ATCoreLocationLinz.md) |



## Resource Content

```json
{
  "resourceType" : "HealthcareService",
  "id" : "HealthcareServiceRheumatologyExample",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/core/r5/StructureDefinition/at-core-HealthcareService"]
  },
  "active" : true,
  "providedBy" : {
    "reference" : "Organization/OrganizationAmadeusSpitalInnereMedizin"
  },
  "specialty" : [{
    "coding" : [{
      "system" : "https://fhir.hl7.at/core/r5/CodeSystem/at-core-funktionscode",
      "code" : "11114",
      "display" : "Rheumatologie"
    }]
  }],
  "location" : [{
    "reference" : "Location/HL7ATCoreLocationLinz"
  }],
  "name" : "Rheumatology Service"
}

```
