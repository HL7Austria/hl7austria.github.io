# PatientFelixGruber - HL7® Austria FHIR® Core Implementation Guide v2.1.0

## Example Patient: PatientFelixGruber

Profile: [HL7® AT Core Patient Profile](StructureDefinition-at-core-patient.md)

Felix Gruber (official) Male, DoB: 2014-04-17 ( Social Security number: 1234170414)

-------

| | |
| :--- | :--- |
| Active: | true |
| Other Id: | National unique individual identifier/BPK-TEST-XY654321 |
| Contact Detail | Hütteldorfer Straße 86, Stiege 2, Tür 7 Wien Wien 1150 AUT (home) |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "PatientFelixGruber",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/core/r5/StructureDefinition/at-core-patient"]
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
    "value" : "1234170414",
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
    "value" : "BPK-TEST-XY654321",
    "assigner" : {
      "display" : "Bundesministerium für Inneres"
    }
  }],
  "active" : true,
  "name" : [{
    "use" : "official",
    "family" : "Gruber",
    "given" : ["Felix"]
  }],
  "gender" : "male",
  "birthDate" : "2014-04-17",
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
