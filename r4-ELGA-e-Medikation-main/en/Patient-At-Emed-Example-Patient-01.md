# Beispiel Patient 01 - ELGA e-Medikation (R4) DRAFT v0.1.0

## Example Patient: Beispiel Patient 01

Profile: [AT ELGA e-Medikation Patient](StructureDefinition-at-elga-emed-patient.md)

Anton Mustermann Male, DoB: 1900-01-01 ( Social Security number: 1234010100)

-------

| | |
| :--- | :--- |
| Other Ids: | * National unique individual identifier/GH:oeLdSEb0l+8kSdJWjOYyYmnYki0=
* Patient internal identifier/0815
 |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "At-Emed-Example-Patient-01",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-patient"]
  },
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "SS",
        "display" : "Social Security number"
      }]
    },
    "system" : "urn:oid:1.2.40.0.10.1.4.3.1",
    "value" : "1234010100"
  },
  {
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "NI",
        "display" : "National unique individual identifier"
      }]
    },
    "system" : "urn:oid:1.2.40.0.10.2.1.1.149",
    "value" : "GH:oeLdSEb0l+8kSdJWjOYyYmnYki0="
  },
  {
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "PI",
        "display" : "Patient internal identifier"
      }]
    },
    "system" : "urn:oid:1.2.3.4.5",
    "value" : "0815"
  }],
  "name" : [{
    "family" : "Mustermann",
    "given" : ["Anton"],
    "prefix" : ["DI"]
  }],
  "gender" : "male",
  "birthDate" : "1900-01-01"
}

```
