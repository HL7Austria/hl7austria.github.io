# HL7.AT.FHIR.CORE.R4\HL7ATCorePatientExample06-GenderExtension - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HL7ATCorePatientExample06-GenderExtension**

## Example Patient: HL7ATCorePatientExample06-GenderExtension

Profile: [HL7® AT Core Patient Profile for Primary Use](StructureDefinition-at-core-patient-primary.md)

Max Musterperson Other, DoB: 1960-01-01 ( Social Security number: 6789010160)

-------

| | |
| :--- | :--- |
| Other Ids: | * National unique individual identifier/GH:oeLdSEb0l+8kSdJWjOYyYmnYki0=
* Patient internal identifier/4711
 |
| Contact Detail | * [office@hl7.at](mailto:office@hl7.at)
* [+436500987654321](tel:+436500987654321)
* Eine Strasse 15 Tür 42 Linz Oberösterreich 4020 AUT (home)
 |
| [Patient Religion](http://hl7.org/fhir/extensions/5.3.0/StructureDefinition-patient-religion.html) | Konfessionslos |
| Patient Citizenship: | * code: Österreich
 |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "HL7ATCorePatientExample06-GenderExtension",
  "meta" : {
    "profile" : ["http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-patient-primary"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/patient-religion",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://termgit.elga.gv.at/CodeSystem/hl7-at-religionaustria",
        "code" : "160",
        "display" : "Konfessionslos"
      }]
    }
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
    "value" : "6789010160",
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
    "value" : "4711",
    "assigner" : {
      "display" : "Ein GDA in Österreich"
    }
  }],
  "name" : [{
    "family" : "Musterperson",
    "given" : ["Max"],
    "prefix" : ["Mag."]
  }],
  "telecom" : [{
    "system" : "email",
    "value" : "office@hl7.at",
    "use" : "work"
  },
  {
    "system" : "phone",
    "value" : "+436500987654321",
    "use" : "home"
  }],
  "gender" : "other",
  "_gender" : {
    "extension" : [{
      "url" : "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-ext-gender-administrativeGenderAddition",
      "valueCoding" : {
        "system" : "https://termgit.elga.gv.at/CodeSystem/hl7-at-administrativegender-ergaenzung",
        "code" : "D",
        "display" : "Divers"
      }
    }]
  },
  "birthDate" : "1960-01-01",
  "address" : [{
    "use" : "home",
    "type" : "both",
    "line" : ["Eine Strasse 15 Tür 42"],
    "_line" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName",
        "valueString" : "Eine Strasse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber",
        "valueString" : "15"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-additionalLocator",
        "valueString" : "Stock 9 Tür 42"
      },
      {
        "url" : "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-ext-address-additionalInformation",
        "valueString" : "Kein Lift vorhanden"
      }]
    }],
    "city" : "Linz",
    "state" : "Oberösterreich",
    "postalCode" : "4020",
    "country" : "AUT"
  }]
}

```
