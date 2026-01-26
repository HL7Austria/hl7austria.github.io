# HL7.AT.FHIR.ELGA.EMED.R4\ExamplePatient - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ExamplePatient**

## Example Patient: ExamplePatient

Profile: [HL7® AT Core Patient Profile](http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/2.0.0/StructureDefinition-at-core-patient.html)

Erika Test Female, DoB: 1970-02-14

-------



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "ExamplePatient",
  "meta" : {
    "profile" : [
      "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-patient"
    ]
  },
  "name" : [
    {
      "family" : "Test",
      "given" : ["Erika"]
    }
  ],
  "gender" : "female",
  "birthDate" : "1970-02-14"
}

```
