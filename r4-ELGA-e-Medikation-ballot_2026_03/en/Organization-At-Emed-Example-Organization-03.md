# Beispiel Organisation Krankenhaus - ELGA e-Medikation (R4) DRAFT v0.1.0

## Example Organization: Beispiel Organisation Krankenhaus

Profile: [AT ELGA e-Medikation Organization](StructureDefinition-at-elga-emed-organization.md)

Amadeus Apotheke (Öffentliche Apotheke) (OID:1.2.40.0.34.99.4613.3)

-------

| | |
| :--- | :--- |
| Type: | Öffentliche Apotheke |
| Other Ids: | * `urn:oid:1.2.40.0.34.4.10`/K101+
* `urn:oid:1.2.40.0.10.1.4.3.2`/123456789
 |
| Contact Detail | * Krankenhaus-Straße 1-7 Haupteingang St. Wolfgang Salzburg 5350 AUT (work)
 |



## Resource Content

```json
{
  "resourceType" : "Organization",
  "id" : "At-Emed-Example-Organization-03",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-organization"]
  },
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:1.2.40.0.34.99.4613.3",
    "assigner" : {
      "display" : "Bundesministerium für Gesundheit"
    }
  },
  {
    "system" : "urn:oid:1.2.40.0.34.4.10",
    "value" : "K101+",
    "assigner" : {
      "display" : "Österreichisches Bundesministerium für Gesundheit"
    }
  },
  {
    "system" : "urn:oid:1.2.40.0.10.1.4.3.2",
    "value" : "123456789",
    "assigner" : {
      "display" : "Dachverband der österreichischen Sozialversicherungsträger"
    }
  }],
  "type" : [{
    "coding" : [{
      "system" : "https://termgit.elga.gv.at/CodeSystem/elga-gtelvogdarollen",
      "code" : "311",
      "display" : "Öffentliche Apotheke"
    }]
  }],
  "name" : "Amadeus Apotheke",
  "contact" : [{
    "address" : {
      "use" : "work",
      "type" : "both",
      "line" : ["Krankenhaus-Straße 1-7 Haupteingang"],
      "_line" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName",
          "valueString" : "Krankenhaus-Straße"
        },
        {
          "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber",
          "valueString" : "1-7"
        },
        {
          "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-additionalLocator",
          "valueString" : "Haupteingang"
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
