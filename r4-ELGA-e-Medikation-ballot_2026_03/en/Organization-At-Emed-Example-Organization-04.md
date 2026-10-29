# Beispiel Organisation Urlaubsvertretung - ELGA e-Medikation (R4) DRAFT v0.1.0

## Example Organization: Beispiel Organisation Urlaubsvertretung

Profile: [AT ELGA e-Medikation Organization](StructureDefinition-at-elga-emed-organization.md)

Unnamed Organization (OID:1.2.40.0.34.99.4613.4)

-------

| | |
| :--- | :--- |
| Contact Detail | * Urlaubsvertreter-Straße 8 Stiege 2 St. Wolfgang Salzburg 5350 AUT (work)
 |



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "At-Emed-Example-Organization-04",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-organization"]
  },
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:1.2.40.0.34.99.4613.4",
    "assigner" : {
      "display" : "Bundesministerium für Gesundheit"
    }
  }],
  "contact" : [{
    "address" : {
      "use" : "work",
      "type" : "both",
      "line" : ["Urlaubsvertreter-Straße 8 Stiege 2"],
      "_line" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName",
          "valueString" : "Urlaubsvertreter-Straße"
        },
        {
          "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber",
          "valueString" : "8"
        },
        {
          "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-additionalLocator",
          "valueString" : "Stiege 2"
        },
        {
          "url" : "https://fhir.hl7.at/core/r4/StructureDefinition/at-core-ext-address-additionalInformation",
          "valueString" : "Barrierefreier Zugang"
        }]
      }],
      "city" : "St. Wolfgang",
      "state" : "Salzburg",
      "postalCode" : "5350",
      "country" : "AUT"
    }
  }]
}

```
