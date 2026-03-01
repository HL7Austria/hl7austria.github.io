# ELGA.MOPED\PJ1Patient - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PJ1Patient**

## Example Patient: PJ1Patient

Profiles: [MOPED Patient](StructureDefinition-MopedPatient.md), [HL7® AT Core Patient Profile](https://build.fhir.org/ig/HL7Austria/HL7-AT-FHIR-Core-R5/StructureDefinition-at-core-patient.html)

Sonnenschein Susi (official) Female, DoB: 1969-04-21 ( Social Security Number: 9994210469)

-------

| | |
| :--- | :--- |
| Contact Detail | Baumgasse 20a Wien Wien 1030 AUT (home) |
| Patient Citizenship: | * code: Österreich
 |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "PJ1Patient",
  "meta" : {
    "profile" : ["https://elga.moped.at/StructureDefinition/MopedPatient",
    "http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-patient"]
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
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "SS",
        "display" : "Social Security Number"
      }]
    },
    "system" : "urn:oid:1.2.40.0.10.1.4.3.1",
    "value" : "9994210469",
    "assigner" : {
      "display" : "Dachverband der österreichischen Sozialversicherungsträger"
    }
  }],
  "name" : [{
    "use" : "official",
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
    "use" : "home",
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
    "state" : "Wien",
    "postalCode" : "1030",
    "country" : "AUT"
  }]
}

```
