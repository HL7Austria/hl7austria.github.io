# HL7.AT.FHIR.CORE.R5\HL7ATCorePatientExample02-deceasedTime - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HL7ATCorePatientExample02-deceasedTime**

## Example Patient: HL7ATCorePatientExample02-deceasedTime

Profile: [HL7® AT Core Patient Profile](StructureDefinition-at-core-patient.md)

Muster Andreas Bauer Male, DoB: 1990-12-24 ( Patient internal identifier: 0815 (use: official, ))

-------

| | | | |
| :--- | :--- | :--- | :--- |
| Deceased: | 2019-01-14 17:22:00+1000 | Marital Status: | Married |
| Other Ids: | * Social Security number/1111241261 (use: official, )
* National unique individual identifier/GH:oeLdSEb0l+8kSdJWjOYyYmnYki0 (use: official, )
 | | |
| Contact Detail | * [+43.2682.40400](tel:+43.2682.40400)
* Berggasse 13a Eisenstadt Burgenland 7000 AUT (home)
 | | |
| Language: | German(preferred) | | |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "HL7ATCorePatientExample02-deceasedTime",
  "meta" : {
    "profile" : [
      "http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-patient"
    ]
  },
  "identifier" : [
    {
      "use" : "official",
      "type" : {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "SS",
            "display" : "Social Security number"
          }
        ]
      },
      "system" : "urn:oid:1.2.40.0.10.1.4.3.1",
      "value" : "1111241261",
      "assigner" : {
        "display" : "Dachverband der österreichischen Sozialversicherungsträger"
      }
    },
    {
      "use" : "official",
      "type" : {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "NI",
            "display" : "National unique individual identifier"
          }
        ]
      },
      "system" : "urn:oid:1.2.40.0.10.2.1.1.149",
      "value" : "GH:oeLdSEb0l+8kSdJWjOYyYmnYki0",
      "assigner" : {
        "display" : "Bundesministerium für Inneres"
      }
    },
    {
      "use" : "official",
      "type" : {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
            "code" : "PI",
            "display" : "Patient internal identifier"
          }
        ]
      },
      "system" : "urn:oid:1.2.3.4.5",
      "value" : "0815",
      "assigner" : {
        "display" : "Ein GDA in Österreich"
      }
    }
  ],
  "name" : [
    {
      "family" : "Bauer",
      "given" : ["Muster", "Andreas"],
      "prefix" : ["Dipl.Ing.", "Dr."]
    }
  ],
  "telecom" : [
    {
      "system" : "phone",
      "value" : "+43.2682.40400",
      "use" : "home"
    }
  ],
  "gender" : "male",
  "birthDate" : "1990-12-24",
  "deceasedDateTime" : "2019-01-14T17:22:00+10:00",
  "address" : [
    {
      "use" : "home",
      "line" : ["Berggasse 13a"],
      "city" : "Eisenstadt",
      "state" : "Burgenland",
      "postalCode" : "7000",
      "country" : "AUT"
    }
  ],
  "maritalStatus" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-MaritalStatus",
        "code" : "M",
        "display" : "Married"
      }
    ]
  },
  "communication" : [
    {
      "language" : {
        "coding" : [
          {
            "system" : "urn:ietf:bcp:47",
            "code" : "de"
          }
        ]
      },
      "preferred" : true
    }
  ]
}

```
