# LocationOrdinationLukasSteiner - HL7® Austria FHIR® Core Implementation Guide v2.1.0

## Example Location: LocationOrdinationLukasSteiner

Profile: [HL7® AT Core Location Profile](StructureDefinition-at-core-location.md)

Ordination Dr. Lukas Steiner – Salzburg

-------

| | | | |
| :--- | :--- | :--- | :--- |
| Status: | Active | Mode: | Instance |
| Address: | Ärztehausgasse 6, 2. Stock, Top 5 Salzburg Salzburg 5020 AUT (work) | | |
| Position: | 47.8095, 13.055 | | |
| Managed By: | [Ordination Dr. Lukas Steiner (Fachärztliche Einzelordination für Innere Medizin) (OID:1.2.40.0.34.12.1234.7)](Organization-OrganizationOrdinationLukasSteiner.md) | | |



## Resource Content

```json
{
  "resourceType" : "Location",
  "id" : "LocationOrdinationLukasSteiner",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/core/r5/StructureDefinition/at-core-location"]
  },
  "status" : "active",
  "name" : "Ordination Dr. Lukas Steiner – Salzburg",
  "mode" : "instance",
  "address" : {
    "use" : "work",
    "type" : "both",
    "line" : ["Ärztehausgasse 6, 2. Stock, Top 5"],
    "_line" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName",
        "valueString" : "Ärztehausgasse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber",
        "valueString" : "6"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-additionalLocator",
        "valueString" : "2. Stock, Top 5"
      },
      {
        "url" : "https://fhir.hl7.at/core/r5/StructureDefinition/at-core-ext-address-additionalInformation",
        "valueString" : "Ordination Dr. Lukas Steiner"
      }]
    }],
    "city" : "Salzburg",
    "state" : "Salzburg",
    "postalCode" : "5020",
    "country" : "AUT"
  },
  "position" : {
    "longitude" : 13.055,
    "latitude" : 47.8095
  },
  "managingOrganization" : {
    "reference" : "Organization/OrganizationOrdinationLukasSteiner"
  }
}

```
