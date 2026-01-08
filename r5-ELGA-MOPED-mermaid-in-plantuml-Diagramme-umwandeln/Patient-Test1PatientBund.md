# ELGA.MOPED\Test1PatientBund - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Test1PatientBund**

## Example Patient: Test1PatientBund

Profile: [MOPED Patient Bund](StructureDefinition-MopedPatientBund.md)

MSK MSK (official) Female, DoB Unknown

-------

| | |
| :--- | :--- |
| Contact Detail | 1030 AUT (home) |
| Patient Citizenship: | * code: Österreich
 |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "Test1PatientBund",
  "meta" : {
    "profile" : ["https://elga.moped.at/StructureDefinition/MopedPatientBund"]
  },
  "extension" : [
    {
      "extension" : [
        {
          "url" : "code",
          "valueCodeableConcept" : {
            "coding" : [
              {
                "system" : "https://termgit.elga.gv.at/CodeSystem/iso-3166-1-alpha-3",
                "code" : "AUT",
                "display" : "Österreich"
              }
            ]
          }
        }
      ],
      "url" : "http://hl7.org/fhir/StructureDefinition/patient-citizenship"
    }
  ],
  "name" : [
    {
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/StructureDefinition/data-absent-reason",
          "valueCode" : "masked"
        }
      ],
      "use" : "official",
      "family" : "MSK",
      "given" : ["MSK"]
    }
  ],
  "gender" : "female",
  "address" : [
    {
      "extension" : [
        {
          "url" : "http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-ext-address-municipalityCode",
          "valueString" : "90301"
        }
      ],
      "use" : "home",
      "postalCode" : "1030",
      "country" : "AUT"
    }
  ]
}

```
