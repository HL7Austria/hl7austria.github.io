# OrganizationStadtgemeindeSonnenfeld - HL7® Austria FHIR® Core Implementation Guide v2.1.0

## Example Organization: OrganizationStadtgemeindeSonnenfeld

Profile: [HL7® AT Core Organization Profile](StructureDefinition-at-core-organization.md)

Gemeindeamt Sonnenfeld (Gemeindeverwaltung) (urn:oid:1.2.40.0.10.2.1.1.71#123456)

-------

| | |
| :--- | :--- |
| Active: | true |
| Type: | Gemeindeverwaltung |
| Alias: | Gemeindeamt |
| Contact Detail | * [gemeindeamt@sonnenfeld.example](mailto:gemeindeamt@sonnenfeld.example)
* [+43 316 555 410](tel:+43316555410)
* Rathausplatz 1, 1. Stock Sonnenfeld Steiermark 8000 AUT (work)
 |
| Bürgerservice: | * [buergerservice@sonnenfeld.example](mailto:buergerservice@sonnenfeld.example)
* [+43 316 555 411](tel:+43316555411)
 |



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "OrganizationStadtgemeindeSonnenfeld",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/core/r4/StructureDefinition/at-core-organization"]
  },
  "identifier" : [{
    "system" : "urn:oid:1.2.40.0.10.2.1.1.71",
    "value" : "123456",
    "assigner" : {
      "display" : "Bundesministerium für Finanzen"
    }
  }],
  "active" : true,
  "type" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/organization-type",
      "code" : "govt",
      "display" : "Government or Public Sector"
    }],
    "text" : "Gemeindeverwaltung"
  }],
  "name" : "Gemeindeamt Sonnenfeld",
  "alias" : ["Gemeindeamt"],
  "telecom" : [{
    "system" : "email",
    "value" : "gemeindeamt@sonnenfeld.example",
    "use" : "work"
  },
  {
    "system" : "phone",
    "value" : "+43 316 555 410",
    "use" : "work"
  }],
  "address" : [{
    "use" : "work",
    "type" : "both",
    "line" : ["Rathausplatz 1, 1. Stock"],
    "_line" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName",
        "valueString" : "Rathausplatz"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber",
        "valueString" : "1"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-additionalLocator",
        "valueString" : "1. Stock"
      },
      {
        "url" : "https://fhir.hl7.at/core/r4/StructureDefinition/at-core-ext-address-additionalInformation",
        "valueString" : "Gemeindeamt"
      }]
    }],
    "city" : "Sonnenfeld",
    "state" : "Steiermark",
    "postalCode" : "8000",
    "country" : "AUT"
  }],
  "contact" : [{
    "purpose" : {
      "text" : "Bürgerservice"
    },
    "telecom" : [{
      "system" : "email",
      "value" : "buergerservice@sonnenfeld.example",
      "use" : "work"
    },
    {
      "system" : "phone",
      "value" : "+43 316 555 411",
      "use" : "work"
    }]
  }]
}

```
