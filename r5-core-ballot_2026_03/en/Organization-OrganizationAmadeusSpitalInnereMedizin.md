# OrganizationAmadeusSpitalInnereMedizin - HL7® Austria FHIR® Core Implementation Guide v2.1.0

## Example Organization: OrganizationAmadeusSpitalInnereMedizin

Profile: [HL7® AT Core Organization Profile](StructureDefinition-at-core-organization.md)

Abteilung für Innere Medizin – Amadeus Spital (Abteilung für Innere Medizin)

-------

| | |
| :--- | :--- |
| Active: | true |
| Type: | Abteilung für Innere Medizin |
| Alias: | Innere Medizin |
| Part Of: | [Amadeus Spital (Allgemeine Krankenanstalt) (OID:1.2.40.0.34.99.4613.3)](Organization-HL7ATCoreOrganizationExample01.md) |
| Administrative: | * [innere-medizin@amadeus-spital.example](mailto:innere-medizin@amadeus-spital.example)
* [+43 662 555 120](tel:+43662555120)
 |



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "OrganizationAmadeusSpitalInnereMedizin",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/core/r5/StructureDefinition/at-core-organization"]
  },
  "active" : true,
  "type" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/organization-type",
      "code" : "dept",
      "display" : "Hospital Department"
    }],
    "text" : "Abteilung für Innere Medizin"
  }],
  "name" : "Abteilung für Innere Medizin – Amadeus Spital",
  "alias" : ["Innere Medizin"],
  "contact" : [{
    "purpose" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/contactentity-type",
        "code" : "ADMIN",
        "display" : "Administrative"
      }]
    },
    "telecom" : [{
      "system" : "email",
      "value" : "innere-medizin@amadeus-spital.example",
      "use" : "work"
    },
    {
      "system" : "phone",
      "value" : "+43 662 555 120",
      "use" : "work"
    }]
  }],
  "partOf" : {
    "reference" : "Organization/HL7ATCoreOrganizationExample01"
  }
}

```
