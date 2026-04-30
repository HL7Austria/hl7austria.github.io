# HL7.AT.FHIR.CORE.R4\HL7ATCorePatientExample04-Full - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HL7ATCorePatientExample04-Full**

## Example Patient: HL7ATCorePatientExample04-Full

Profile: [HL7® AT Core Patient Profile](StructureDefinition-at-core-patient.md)

Andreas Bucher Male, DoB: 1961-12-24 ( Patient internal identifier: 0815 (use: official, ))

-------

| | | | |
| :--- | :--- | :--- | :--- |
| Active: | true | Deceased: | false |
| Marital Status: | Married | Multiple Birth: | false |
| Other Ids: | * Social Security number/1111241261 (use: official, )
* National unique individual identifier/GH:oeLdSEb0l+8kSdJWjOYyYmnYki0 (use: official, )
 | | |
| Contact Detail | * [+43.2682.40400](tel:+43.2682.40400)
* [+43.664.1234567](tel:+43.664.1234567)
* [bucher.andreas@provider.at](mailto:bucher.andreas@provider.at)
* Landstrasse 5 Stock 3 Tür 5 Wien Wien 1030 AUT (home)
 | | |
| Language: | German(preferred) | | |
| Emergency Contact: | * Julia Tochter (Female)
* Heimstrasse 1 Wien 1220 AUT 
* [+43.664.12345678](tel:+43.664.12345678)
* Organization:[Organization Amadeus Spital](Organization-HL7ATCoreOrganizationExample01.md)
* Valid Period:2016-07-30 08:30:00+0100 --> 2019-07-30 08:35:00+0100
 | | |
| Links: | * General Practitioner: [Practitioner Melanie Musterärztin ](Practitioner-HL7ATCorePractitionerExample01.md)
* Managing Organization: [Organization Amadeus Spital](Organization-HL7ATCoreOrganizationExample01.md)
* Also see: [Muster Andreas Bucher Male, DoB: 1990-12-24 ( Social Security number: 1111241261 (use: usual, ))](Patient-HL7ATCorePatientExample03-deceasedBoolean.md)
 | | |
| [Patient Religion](http://hl7.org/fhir/extensions/5.2.0/StructureDefinition-patient-religion.html) | Römisch-Katholisch | | |
| Patient Citizenship: | * code: Österreich
* period: 2016-07-30 08:30:00+0100 --> 2022-07-30 08:35:00+0100
 | | |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "HL7ATCorePatientExample04-Full",
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
    },
    {
      "url" : "period",
      "valuePeriod" : {
        "start" : "2016-07-30T08:30:00+01:00",
        "end" : "2022-07-30T08:35:00+01:00"
      }
    }],
    "url" : "http://hl7.org/fhir/StructureDefinition/patient-citizenship"
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
  },
  {
    "use" : "official",
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "NI",
        "display" : "National unique individual identifier"
      }]
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
  "active" : true,
  "name" : [{
    "family" : "Bucher",
    "given" : ["Andreas"],
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
    "value" : "bucher.andreas@provider.at"
  }],
  "gender" : "male",
  "birthDate" : "1961-12-24",
  "_birthDate" : {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/patient-birthTime",
      "valueDateTime" : "1961-12-24T08:28:17+01:00"
    }]
  },
  "deceasedBoolean" : false,
  "address" : [{
    "use" : "home",
    "type" : "both",
    "line" : ["Landstrasse 5 Stock 3 Tür 5"],
    "_line" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName",
        "valueString" : "Landstrasse"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber",
        "valueString" : "5"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-additionalLocator",
        "valueString" : "Stock 3 Tür 5"
      },
      {
        "url" : "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-ext-address-additionalInformation",
        "valueString" : "Lift vorhanden"
      }]
    }],
    "city" : "Wien",
    "state" : "Wien",
    "postalCode" : "1030",
    "country" : "AUT"
  }],
  "maritalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-MaritalStatus",
      "code" : "M",
      "display" : "Married"
    }]
  },
  "multipleBirthBoolean" : false,
  "photo" : [{
    "contentType" : "image/jpeg",
    "url" : "https://image.k.at/images/facebook/3923126/78350011451694692_BLD_Online.jpg"
  }],
  "contact" : [{
    "relationship" : [{
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0131",
        "code" : "C",
        "display" : "Emergency Contact"
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
    },
    "gender" : "female",
    "organization" : {
      "reference" : "Organization/HL7ATCoreOrganizationExample01"
    },
    "period" : {
      "start" : "2016-07-30T08:30:00+01:00",
      "end" : "2019-07-30T08:35:00+01:00"
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
  }],
  "generalPractitioner" : [{
    "reference" : "Practitioner/HL7ATCorePractitionerExample01"
  }],
  "managingOrganization" : {
    "reference" : "Organization/HL7ATCoreOrganizationExample01"
  },
  "link" : [{
    "other" : {
      "reference" : "Patient/HL7ATCorePatientExample03-deceasedBoolean"
    },
    "type" : "seealso"
  }]
}

```
