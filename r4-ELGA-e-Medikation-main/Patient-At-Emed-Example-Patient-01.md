# HL7.AT.FHIR.ELGA.EMED.R4\Beispiel Patient 01 - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel Patient 01**

## Example Patient: Beispiel Patient 01

Profiles: [HL7® AT Core Patient Profile](http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/2.0.0/StructureDefinition-at-core-patient.html), `http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-patient`

Max Mustermann Male, DoB: 1900-01-01 ( Social Security number: 1234010100)

-------

| | |
| :--- | :--- |
| Other Ids: | * National unique individual identifier/GH:oeLdSEb0l+8kSdJWjOYyYmnYki0=
* Patient internal identifier/0815
 |
| Contact Detail | * [office@hl7.at](mailto:office@hl7.at)
* [+436501234567890](tel:+436501234567890)
* Landstrasse 1 Stock 9 Tür 42 Linz Oberösterreich 4020 AUT (home)
 |
| Patient Citizenship: | * code: Österreich
 |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "At-Emed-Example-Patient-01",
  "meta" : {
    "profile" : ["http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-patient",
    "http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-patient"]
  },
  "extension" : [{
    "extension" : [{
      "url" : "code",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://termgit.elga.gv.at/CodeSystem/hl7-at-religionaustria",
          "code" : "162",
          "display" : "Pastafarianismus"
        }]
      }
    }],
    "url" : "http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-ext-patient-religion"
  },
  {
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
        "display" : "Social Security number"
      }]
    },
    "system" : "urn:oid:1.2.40.0.10.1.4.3.1",
    "value" : "1234010100",
    "assigner" : {
      "display" : "Dachverband der österreichischen Sozialversicherungsträger"
    }
  },
  {
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "NI",
        "display" : "National unique individual identifier"
      }]
    },
    "system" : "urn:oid:1.2.40.0.10.2.1.1.149",
    "value" : "GH:oeLdSEb0l+8kSdJWjOYyYmnYki0=",
    "assigner" : {
      "display" : "Bundesministerium für Inneres"
    }
  },
  {
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "PI",
        "display" : "Patient internal identifier"
      }]
    },
    "system" : "urn:oid:1.2.3.4.5",
    "value" : "0815",
    "assigner" : {
      "display" : "Ein GDA in Österreich"
    }
  }],
  "name" : [{
    "family" : "Mustermann",
    "given" : ["Max"],
    "prefix" : ["DI"]
  }],
  "telecom" : [{
    "system" : "email",
    "value" : "office@hl7.at",
    "use" : "work"
  },
  {
    "system" : "phone",
    "value" : "+436501234567890",
    "use" : "home"
  }],
  "gender" : "male",
  "birthDate" : "1900-01-01",
  "address" : [{
    "use" : "home",
    "type" : "both",
    "line" : ["Landstrasse 1 Stock 9 Tür 42"],
    "_line" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName",
        "valueString" : "Landstrasse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber",
        "valueString" : "1"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-additionalLocator",
        "valueString" : "Stock 9 Tür 42"
      },
      {
        "url" : "http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-ext-address-additionalInformation",
        "valueString" : "Lift vorhanden"
      }]
    }],
    "city" : "Linz",
    "state" : "Oberösterreich",
    "postalCode" : "4020",
    "country" : "AUT"
  }]
}

```
