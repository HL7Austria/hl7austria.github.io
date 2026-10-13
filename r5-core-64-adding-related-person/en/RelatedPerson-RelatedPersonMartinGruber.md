# RelatedPersonMartinGruber - HL7® Austria FHIR® Core Implementation Guide v2.1.0

## Example RelatedPerson: RelatedPersonMartinGruber

Profile: [HL7® AT Core RelatedPerson Profile](StructureDefinition-at-core-related-person.md)

Martin Gruber (official) - next of kin (Social Security number: 1234120983)

-------

| | | | |
| :--- | :--- | :--- | :--- |
| Active: | true | Gender: | Male |
| Date of Birth: | 1983-09-12 | | |
| Patient: | [Felix Gruber (official) Male, DoB: 2014-04-17](Patient-PatientFelixGruber.md) | | |
| Relationship: | next of kin | | |
| Contact Detail | * [+43 660 284 73 19](tel:+436602847319)
* Hütteldorfer Straße 86, Stiege 2, Tür 7 Wien Wien 1150 AUT (home)
 | | |



## Resource Content

```json
{
  "resourceType" : "RelatedPerson",
  "id" : "RelatedPersonMartinGruber",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/core/r5/StructureDefinition/at-core-related-person"]
  },
  "identifier" : [{
    "type" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
        "code" : "SS",
        "display" : "Social Security number"
      }]
    },
    "system" : "urn:oid:1.2.40.0.10.1.4.3.1",
    "value" : "1234120983",
    "assigner" : {
      "display" : "Dachverband der österreichischen Sozialversicherungsträger"
    }
  }],
  "active" : true,
  "patient" : {
    "reference" : "Patient/PatientFelixGruber"
  },
  "relationship" : [{
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/v3-RoleClass",
      "code" : "NOK",
      "display" : "next of kin"
    }]
  }],
  "name" : [{
    "use" : "official",
    "family" : "Gruber",
    "given" : ["Martin"]
  }],
  "telecom" : [{
    "system" : "phone",
    "value" : "+43 660 284 73 19",
    "use" : "mobile"
  }],
  "gender" : "male",
  "birthDate" : "1983-09-12",
  "address" : [{
    "use" : "home",
    "type" : "both",
    "line" : ["Hütteldorfer Straße 86, Stiege 2, Tür 7"],
    "_line" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-streetName",
        "valueString" : "Hütteldorfer Straße"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-houseNumber",
        "valueString" : "86"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/iso21090-ADXP-additionalLocator",
        "valueString" : "Stiege 2, Tür 7"
      }]
    }],
    "city" : "Wien",
    "state" : "Wien",
    "postalCode" : "1150",
    "country" : "AUT"
  }]
}

```
