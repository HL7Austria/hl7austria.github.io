# Beispiel Allgemeinmedizinerin 01 - ELGA e-Medikation (R4) DRAFT v0.1.0

## Example Practitioner: Beispiel Allgemeinmedizinerin 01

Profile: [AT ELGA e-Medikation Practitioner](StructureDefinition-at-elga-emed-practitioner.md)

Melanie Hausärztin (OID:1.2.40.0.34.99.4613.4)

-------

| | |
| :--- | :--- |
| Other Id: | `urn:oid:1.2.40.0.10.1.4.3.2`/987654321 |



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "At-Emed-Example-Practitioner-01",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-practitioner"]
  },
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:1.2.40.0.34.99.4613.4"
  },
  {
    "system" : "urn:oid:1.2.40.0.10.1.4.3.2",
    "value" : "987654321"
  }],
  "name" : [{
    "family" : "Hausärztin",
    "given" : ["Melanie"],
    "prefix" : ["Prof. Dr."]
  }]
}

```
