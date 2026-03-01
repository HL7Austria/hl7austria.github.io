# ELGA.MOPED\Patient42 - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Patient42**

## Example Patient: Patient42

Profile: [HL7® AT Core Patient Profile](https://build.fhir.org/ig/HL7Austria/HL7-AT-FHIR-Core-R5/StructureDefinition-at-core-patient.html)

Patient42 Patient42FamilienName Male, DoB: 1937-12-31 ( Social Security Number: 123456)

-------

| | |
| :--- | :--- |
| Patient Citizenship: | * code: AUT
 |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "Patient42",
  "meta" : {
    "profile" : ["http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-patient"]
  },
  "extension" : [{
    "extension" : [{
      "url" : "code",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://termgit.elga.gv.at/CodeSystem/iso-3166-1-alpha-3",
          "code" : "AUT"
        }]
      }
    }],
    "url" : "http://hl7.org/fhir/StructureDefinition/patient-citizenship"
  }],
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "SS",
        "display" : "Social Security Number"
      }]
    },
    "system" : "urn:oid:1.2.40.0.10.1.4.3.1",
    "value" : "123456",
    "assigner" : {
      "display" : "Dachverband der österreichischen Sozialversicherungsträger"
    }
  }],
  "name" : [{
    "family" : "Patient42FamilienName",
    "given" : ["Patient42"]
  }],
  "gender" : "male",
  "birthDate" : "1937-12-31"
}

```
