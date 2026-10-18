# PractitionerLukasSteiner - HL7® Austria FHIR® Core Implementation Guide v2.1.0

## Example Practitioner: PractitionerLukasSteiner

Profile: [HL7® AT Core Practitioner Profile](StructureDefinition-at-core-practitioner.md)

Lukas Steiner (OID:1.2.40.0.34.99.4613.5)

-------

| | | | |
| :--- | :--- | :--- | :--- |
| Active: | true | Gender: | Male |
| Other Id: | `urn:oid:1.2.40.0.34.4.22`/VBPK-GH-EXAMPLE-LUKAS-STEINER-001 | | |
| Qualification: | ÖÄK-Fortbildungsdiplom (DFP-Diplom)* Valid Period: 2024-01-01 --> 2029-01-01
* Issued By: Österreichische Ärztekammer
 | | |



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "PractitionerLukasSteiner",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/core/r4/StructureDefinition/at-core-practitioner"]
  },
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:1.2.40.0.34.99.4613.5",
    "assigner" : {
      "display" : "Bundesministerium für Gesundheit"
    }
  },
  {
    "system" : "urn:oid:1.2.40.0.34.4.22",
    "value" : "VBPK-GH-EXAMPLE-LUKAS-STEINER-001",
    "assigner" : {
      "display" : "Bundesministerium für Inneres"
    }
  }],
  "active" : true,
  "name" : [{
    "family" : "Steiner",
    "given" : ["Lukas"],
    "prefix" : ["Dr."]
  }],
  "gender" : "male",
  "qualification" : [{
    "code" : {
      "text" : "ÖÄK-Fortbildungsdiplom (DFP-Diplom)"
    },
    "period" : {
      "start" : "2024-01-01",
      "end" : "2029-01-01"
    },
    "issuer" : {
      "display" : "Österreichische Ärztekammer"
    }
  }]
}

```
