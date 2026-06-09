# ELGA.MOPED\Test1PatientOhneMaskierung - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Test1PatientOhneMaskierung**

## Example Patient: Test1PatientOhneMaskierung

Profile: [AT MOPED Patient Klarname Basis Profil](StructureDefinition-at-moped-patient-klarname-basis.md)

Sonnenschein Susi Female, DoB: 1969-04-21

-------

| | |
| :--- | :--- |
| Contact Detail | Baumgasse 20a Wien 1030 AUT |
| Patient Citizenship: | * code: Österreich
 |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "Test1PatientOhneMaskierung",
  "meta" : {
    "profile" : ["https://elga.moped.at/StructureDefinition/at-moped-patient-klarname-basis"]
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
    "family" : "Susi",
    "given" : ["Sonnenschein"]
  }],
  "gender" : "female",
  "birthDate" : "1969-04-21",
  "address" : [{
    "extension" : [{
      "url" : "http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-ext-address-municipalityCode",
      "valueString" : "90301"
    }],
    "line" : ["Baumgasse 20a"],
    "_line" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName",
        "valueString" : "Baumgasse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber",
        "valueString" : "20a"
      }]
    }],
    "city" : "Wien",
    "postalCode" : "1030",
    "country" : "AUT"
  }]
}

```
