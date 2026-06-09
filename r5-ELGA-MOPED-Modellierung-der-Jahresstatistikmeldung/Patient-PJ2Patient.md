# ELGA.MOPED\PJ2Patient - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PJ2Patient**

## Example Patient: PJ2Patient

Profiles: [AT MOPED Patient Klarname Basis Profil](StructureDefinition-at-moped-patient-klarname-basis.md), [HL7® AT Core Patient Profile](https://build.fhir.org/ig/HL7Austria/HL7-AT-FHIR-Core-R5/StructureDefinition-at-core-patient.html)

Santiago Schnabeltier Test Male, DoB: 1985-03-19

-------

| | |
| :--- | :--- |
| Contact Detail | Ernst-Melchior-Gasse 22/5/506 Wien 1020 AUT |
| Patient Citizenship: | * code: Österreich
 |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "PJ2Patient",
  "meta" : {
    "profile" : ["https://elga.moped.at/StructureDefinition/at-moped-patient-klarname-basis",
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
  "name" : [{
    "family" : "Schnabeltier Test",
    "given" : ["Santiago"]
  }],
  "gender" : "male",
  "birthDate" : "1985-03-19",
  "address" : [{
    "extension" : [{
      "url" : "http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-ext-address-municipalityCode",
      "valueString" : "90201"
    }],
    "line" : ["Ernst-Melchior-Gasse 22/5/506"],
    "_line" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName",
        "valueString" : "Ernst-Melchior-Gasse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber",
        "valueString" : "22/5/506"
      }]
    }],
    "city" : "Wien",
    "postalCode" : "1020",
    "country" : "AUT"
  }]
}

```
