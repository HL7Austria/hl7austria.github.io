# ELGA.MOPED\PJ2Patient - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PJ2Patient**

## Example Patient: PJ2Patient

Profiles: [MOPED Patient](StructureDefinition-MopedPatient.md), [HL7® AT Core Patient Profile](https://build.fhir.org/ig/HL7Austria/HL7-AT-FHIR-Core-R5/StructureDefinition-at-core-patient.html)

Santiago Schnabeltier Test (official) Male, DoB: 1985-03-19 ( Social Security Number: 2873111374)

-------

| | |
| :--- | :--- |
| Contact Detail | Ernst-Melchior-Gasse 22/5/506 Wien Wien 1020 AUT (home) |
| Patient Citizenship: | * code: Österreich
 |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "PJ2Patient",
  "meta" : {
    "profile" : [
      "https://elga.moped.at/StructureDefinition/MopedPatient",
      "http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-patient"
    ]
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
  "identifier" : [
    {
      "type" : {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "SS",
            "display" : "Social Security Number"
          }
        ]
      },
      "system" : "urn:oid:1.2.40.0.10.1.4.3.1",
      "value" : "2873111374",
      "assigner" : {
        "display" : "Dachverband der österreichischen Sozialversicherungsträger"
      }
    }
  ],
  "name" : [
    {
      "use" : "official",
      "family" : "Schnabeltier Test",
      "given" : ["Santiago"]
    }
  ],
  "gender" : "male",
  "birthDate" : "1985-03-19",
  "address" : [
    {
      "extension" : [
        {
          "url" : "http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-ext-address-municipalityCode",
          "valueString" : "90201"
        }
      ],
      "use" : "home",
      "line" : ["Ernst-Melchior-Gasse 22/5/506"],
      "_line" : [
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName",
              "valueString" : "Ernst-Melchior-Gasse"
            },
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber",
              "valueString" : "22/5/506"
            }
          ]
        }
      ],
      "city" : "Wien",
      "state" : "Wien",
      "postalCode" : "1020",
      "country" : "AUT"
    }
  ]
}

```
