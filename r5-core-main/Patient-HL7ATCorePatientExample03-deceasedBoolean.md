# HL7.AT.FHIR.CORE.R5\HL7ATCorePatientExample03-deceasedBoolean - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HL7ATCorePatientExample03-deceasedBoolean**

## Example Patient: HL7ATCorePatientExample03-deceasedBoolean

Profile: [HL7® AT Core Patient Profile](StructureDefinition-at-core-patient.md)

Muster Andreas Bucher Male, DoB: 1990-12-24 ( Social Security number: 1111241261 (use: usual, ))

-------

| | | | |
| :--- | :--- | :--- | :--- |
| Deceased: | true | Marital Status: | Married |
| Contact Detail | * [+43.2682.40400](tel:+43.2682.40400)
* Berggasse 13a Eisenstadt Burgenland 7000 AUT (home)
 | | |
| Language: | German(preferred) | | |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "HL7ATCorePatientExample03-deceasedBoolean",
  "meta" : {
    "profile" : ["http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-patient"]
  },
  "identifier" : [{
    "use" : "usual",
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "SS",
        "display" : "Social Security number"
      }]
    },
    "system" : "urn:oid:1.2.40.0.10.1.4.3.1",
    "value" : "1111241261",
    "assigner" : {
      "display" : "Dachverband der österreichischen Sozialversicherungsträger"
    }
  }],
  "name" : [{
    "family" : "Bucher",
    "given" : ["Muster", "Andreas"],
    "prefix" : ["Dipl.Ing.", "Dr."]
  }],
  "telecom" : [{
    "system" : "phone",
    "value" : "+43.2682.40400",
    "use" : "home"
  }],
  "gender" : "male",
  "birthDate" : "1990-12-24",
  "deceasedBoolean" : true,
  "address" : [{
    "use" : "home",
    "line" : ["Berggasse 13a"],
    "city" : "Eisenstadt",
    "state" : "Burgenland",
    "postalCode" : "7000",
    "country" : "AUT"
  }],
  "maritalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-MaritalStatus",
      "code" : "M",
      "display" : "Married"
    }]
  },
  "communication" : [{
    "language" : {
      "coding" : [{
        "system" : "urn:ietf:bcp:47",
        "code" : "de"
      }]
    },
    "preferred" : true
  }]
}

```
