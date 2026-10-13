# PatientFelixGruber - HL7® Austria FHIR® Core Implementation Guide v2.1.0

## Example Patient: PatientFelixGruber

Profile: [HL7® AT Core Patient Profile](StructureDefinition-at-core-patient.md)

Felix Gruber (official) Male, DoB: 2014-04-17

-------

| | |
| :--- | :--- |
| Active: | true |
| Contact Detail | Hütteldorfer Straße 86, Stiege 2, Tür 7 Wien Wien 1150 AUT (home) |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "PatientFelixGruber",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/core/r5/StructureDefinition/at-core-patient"]
  },
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
