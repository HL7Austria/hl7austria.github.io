# ELGA.MOPED\Test1PatientBund - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Test1PatientBund**

## Example Patient: Test1PatientBund

Profile: [MOPED Patient mit Klarname Bund](StructureDefinition-at-moped-patient-klarname-bund.md)

 Female, DoB Unknown

-------

| | |
| :--- | :--- |
| Contact Detail | 1030 AUT |
| Patient Citizenship: | * code: Österreich
 |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "Test1PatientBund",
  "meta" : {
    "profile" : ["https://elga.moped.at/StructureDefinition/at-moped-patient-klarname-bund"]
  },
  "extension" : [{
    "extension" : [{
      "url" : "code",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://termgit.elga.gv.at/CodeSystem/iso-3166-1-alpha-3",
          "code" : "AUT",
          "display" : "Österreich"
        }]
      }
    }],
    "url" : "http://hl7.org/fhir/StructureDefinition/patient-citizenship"
  }],
  "name" : [{
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
      "valueCode" : "masked"
    }]
  }],
  "gender" : "female",
  "address" : [{
    "extension" : [{
      "url" : "http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-ext-address-municipalityCode",
      "valueString" : "90301"
    }],
    "postalCode" : "1030",
    "country" : "AUT"
  }]
}

```
