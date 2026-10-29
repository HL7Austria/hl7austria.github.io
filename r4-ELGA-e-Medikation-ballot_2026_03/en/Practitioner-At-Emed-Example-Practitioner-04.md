# Beispiel Urlaubsvertreung - ELGA e-Medikation (R4) DRAFT v0.1.0

## Example Practitioner: Beispiel Urlaubsvertreung

Profile: [AT ELGA e-Medikation Practitioner](StructureDefinition-at-elga-emed-practitioner.md)

Erna Urlaubsvertretung (OID:1.2.40.0.34.99.4613.4)

-------

| | | | |
| :--- | :--- | :--- | :--- |
| Active: | true | Gender: | Female |
| Other Id: | `urn:oid:1.2.40.0.10.1.4.3.2`/987654321 | | |



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "At-Emed-Example-Practitioner-04",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-practitioner"]
  },
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:1.2.40.0.34.99.4613.4",
    "assigner" : {
      "display" : "Bundesministerium für Gesundheit"
    }
  },
  {
    "system" : "urn:oid:1.2.40.0.10.1.4.3.2",
    "value" : "987654321",
    "assigner" : {
      "display" : "Dachverband der österreichischen Sozialversicherungsträger"
    }
  }],
  "active" : true,
  "name" : [{
    "family" : "Urlaubsvertretung",
    "given" : ["Erna"],
    "prefix" : ["Prof. Dr."]
  }],
  "gender" : "female"
}

```
