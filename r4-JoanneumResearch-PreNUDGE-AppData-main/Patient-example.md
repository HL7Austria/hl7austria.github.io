# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\AtApsPatient-example - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AtApsPatient-example**

## Example Patient: AtApsPatient-example

Profile: [AT APS Patient](https://fhir.hl7.at/elga/aps/r4/1.0.0/StructureDefinition-at-aps-patient.html)

James Pond Male, DoB: 1990-01-01 ( urn:oid:1.2.40.0.10.1.4.3.1#1234567890)

-------

| | |
| :--- | :--- |
| Other Id: | Patient internal identifier/123123123 |

IG © 2026+
[The PreNUDGE Consortium](https://prenudge.at). Package hl7.at.fhir.prenudge.appdata.r4#0.1.0 based on
[FHIR® 4.0.1](http://hl7.org/fhir/R4/). Generated
2026-06-16

Links:
[Table of Contents](toc.md)|
[QA Report](qa.md)

## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "example",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-patient"]
  },
  "identifier" : [{
    "system" : "urn:oid:1.2.40.0.10.1.4.3.1",
    "value" : "1234567890"
  },
  {
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "PI"
      }]
    },
    "system" : "https://www.joanneum.at",
    "value" : "123123123"
  }],
  "name" : [{
    "family" : "Pond",
    "given" : ["James"]
  }],
  "gender" : "male",
  "birthDate" : "1990-01-01"
}

```
