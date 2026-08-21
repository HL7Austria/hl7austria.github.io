# HL7.AT.FHIR.CORE.R4\PatientExample01 - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PatientExample01**

## Example Patient: PatientExample01

Profile: [HL7® AT Core Patient Profile](StructureDefinition-at-core-patient-enhanced.md)

James Pond Male, DoB: 1968-07-07 ( Anonymous identifier)

-------

| | |
| :--- | :--- |
| Other Id: | Anonymous identifier/12345qX4/Mf2bMeop0/8tjHqS+OWox03/TViPmP6DoB+Z/h2gDtMQE99xuBhfzyCy6jXgVEbuFGIqYSU1qxMeReQd4bbJzhekXvcrFAAn6mO1ZClokZnmRekidHI6bHnmR0cQjUywgHjnpbGJIzqBOOXmdFEi2mZ59yKKdMW7yfwQviAsWWx |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "PatientExample01",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/core/r4/StructureDefinition/at-core-patient-enhanced"]
  },
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "ANON"
      }]
    },
    "system" : "urn:oid:1.2.40.0.34.4.22.1",
    "value" : "qX4/Mf2bMeop0/8tjHqS+OWox03/TViPmP6DoB+Z/h2gDtMQE99xuBhfzyCy6jXgVEbuFGIqYSU1qxMeReQd4bbJzhekXvcrFAAn6mO1ZClokZnmRekidHI6bHnmR0cQjUywgHjnpbGJIzqBOOXmdFEi2mZ59yKKdMW7yfwQviAsWWx"
  },
  {
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "ANON"
      }]
    },
    "system" : "urn:oid:1.2.40.0.34.4.22.2",
    "value" : "12345qX4/Mf2bMeop0/8tjHqS+OWox03/TViPmP6DoB+Z/h2gDtMQE99xuBhfzyCy6jXgVEbuFGIqYSU1qxMeReQd4bbJzhekXvcrFAAn6mO1ZClokZnmRekidHI6bHnmR0cQjUywgHjnpbGJIzqBOOXmdFEi2mZ59yKKdMW7yfwQviAsWWx"
  }],
  "name" : [{
    "family" : "Pond",
    "given" : ["James"]
  }],
  "gender" : "male",
  "birthDate" : "1968-07-07"
}

```
