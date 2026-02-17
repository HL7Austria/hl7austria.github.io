# AtApsPatient-Beispiel - Austrian Patient Summary (R4) v1.1.0



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "at-aps-example-patient-01",
  "meta" : {
    "profile" : [
      "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-patient"
    ]
  },
  "identifier" : [
    {
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
      "value" : "0000121150",
      "assigner" : {
        "display" : "Dachverband der österreichischen Sozialversicherungsträger"
      }
    },
    {
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
      "value" : "0001",
      "assigner" : {
        "display" : "Ein GDA in Österreich"
      }
    }
  ],
  "name" : [
    {
      "family" : "Musterfrau",
      "given" : ["Maria"]
    }
  ],
  "gender" : "female",
  "birthDate" : "1998-04-17",
  "address" : [
    {
      "use" : "home",
      "line" : ["Am Schulweg 5"],
      "city" : "Hainfeld",
      "postalCode" : "3100",
      "country" : "AUT"
    }
  ]
}

```
