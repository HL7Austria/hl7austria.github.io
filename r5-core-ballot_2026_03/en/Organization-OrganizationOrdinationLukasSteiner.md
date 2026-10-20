# OrganizationOrdinationLukasSteiner - HL7® Austria FHIR® Core Implementation Guide v2.1.0

## Example Organization: OrganizationOrdinationLukasSteiner

Profile: [HL7® AT Core Organization Profile](StructureDefinition-at-core-organization.md)

Ordination Dr. Lukas Steiner (Fachärztliche Einzelordination für Innere Medizin) (OID:1.2.40.0.34.12.1234.7)

-------

| | |
| :--- | :--- |
| Active: | true |
| Type: | Fachärztliche Einzelordination für Innere Medizin |
| Alias: | Ordination Steiner |
| Other Id: | `urn:oid:1.2.40.0.10.1.4.3.2`/123456 |
| Administrative: | * [ordination@steiner.example](mailto:ordination@steiner.example)
* [+43 662 555 320](tel:+43662555320)
* Ärztehausgasse 6, 2. Stock, Top 5 Salzburg Salzburg 5020 AUT (work)
 |



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "OrganizationOrdinationLukasSteiner",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/core/r5/StructureDefinition/at-core-organization"]
  },
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:1.2.40.0.34.12.1234.7",
    "assigner" : {
      "display" : "Bundesministerium für Gesundheit"
    }
  },
  {
    "system" : "urn:oid:1.2.40.0.10.1.4.3.2",
    "value" : "123456",
    "assigner" : {
      "display" : "Dachverband der österreichischen Sozialversicherungsträger"
    }
  }],
  "active" : true,
  "type" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/organization-type",
      "code" : "prov",
      "display" : "Healthcare Provider"
    }],
    "text" : "Fachärztliche Einzelordination für Innere Medizin"
  }],
  "name" : "Ordination Dr. Lukas Steiner",
  "alias" : ["Ordination Steiner"],
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
      "value" : "ordination@steiner.example",
      "use" : "work"
    },
    {
      "system" : "phone",
      "value" : "+43 662 555 320",
      "use" : "work"
    }],
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
    }
  }]
}

```
