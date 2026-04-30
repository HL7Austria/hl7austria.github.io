# HL7.AT.FHIR.CORE.R4\HL7ATCorePatientExample05-FullElga - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HL7ATCorePatientExample05-FullElga**

## Example Patient: HL7ATCorePatientExample05-FullElga

Profile: [HL7® AT Core Patient Profile](StructureDefinition-at-core-patient.md)

Alexander Robert Wolfesberger Male, DoB: 1961-12-24 ( Social Security number: 1111241261 (use: official, ))

-------

| | |
| :--- | :--- |
| Marital Status: | Married |
| Contact Detail | * [+43.2682.40400](tel:+43.2682.40400)
* [+43.664.1234567](tel:+43.664.1234567)
* [alexander.wolfesberger@provider.at](mailto:alexander.wolfesberger@provider.at)
* Beheimgasse 7 Stock 2 Tür 1 Wien Wien 1170 AUT (home)
 |
| Language: | German(preferred) |
| natural daughter: | * Julia Tochter 
* Heimstrasse 1 Wien 1220 AUT 
* [+43.664.12345678](tel:+43.664.12345678)
 |
| [Patient Religion](http://hl7.org/fhir/extensions/5.2.0/StructureDefinition-patient-religion.html) | Römisch-Katholisch |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "HL7ATCorePatientExample05-FullElga",
  "meta" : {
    "profile" : ["http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-patient"]
  },
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/patient-religion",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://termgit.elga.gv.at/CodeSystem/hl7-at-religionaustria",
        "code" : "101",
        "display" : "Römisch-Katholisch"
      }]
    }
  }],
  "identifier" : [{
    "use" : "official",
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
    "family" : "Wolfesberger",
    "given" : ["Alexander", "Robert"],
    "prefix" : ["Dipl.Ing.", "Dr."]
  }],
  "telecom" : [{
    "system" : "phone",
    "value" : "+43.2682.40400",
    "use" : "home"
  },
  {
    "system" : "phone",
    "value" : "+43.664.1234567",
    "use" : "mobile"
  },
  {
    "system" : "email",
    "value" : "alexander.wolfesberger@provider.at"
  }],
  "gender" : "male",
  "birthDate" : "1961-12-24",
  "address" : [{
    "use" : "home",
    "type" : "both",
    "line" : ["Beheimgasse 7 Stock 2 Tür 1"],
    "_line" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName",
        "valueString" : "Beheimgasse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber",
        "valueString" : "7"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-additionalLocator",
        "valueString" : "Stock 2 Tür 1"
      },
      {
        "url" : "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-ext-address-additionalInformation",
        "valueString" : "Lift vorhanden"
      }]
    }],
    "city" : "Wien",
    "state" : "Wien",
    "postalCode" : "1170",
    "country" : "AUT"
  }],
  "maritalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-MaritalStatus",
      "code" : "M",
      "display" : "Married"
    }]
  },
  "contact" : [{
    "relationship" : [{
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v3-RoleCode",
        "code" : "DAU",
        "display" : "natural daughter"
      }]
    }],
    "name" : {
      "family" : "Tochter",
      "given" : ["Julia"]
    },
    "telecom" : [{
      "system" : "phone",
      "value" : "+43.664.12345678",
      "use" : "mobile"
    }],
    "address" : {
      "line" : ["Heimstrasse 1"],
      "city" : "Wien",
      "postalCode" : "1220",
      "country" : "AUT"
    }
  }],
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
