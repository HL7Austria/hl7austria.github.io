# PractitionerSarahBerger - HL7® Austria FHIR® Core Implementation Guide v2.1.0

## Example Practitioner: PractitionerSarahBerger

Profile: [HL7® AT Core Practitioner Profile](StructureDefinition-at-core-practitioner.md)

Sarah Berger (official) (https://hebammenregister.example#HB-EXAMPLE-001)

-------

| | | | |
| :--- | :--- | :--- | :--- |
| Active: | true | Gender: | Female |
| Other Id: | `urn:oid:1.2.40.0.34.4.22`/VBPK-GH-EXAMPLE-Sarah-Berger-001 | | |
| Qualification: | Hebamme (Bachelor of Science in Health Studies)* Valid Period: 2020-07-01 --> (ongoing)
* Issued By: Fiktive Fachhochschule für Gesundheitsberufe
 | | |



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "PractitionerSarahBerger",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/core/r4/StructureDefinition/at-core-practitioner"]
  },
  "identifier" : [{
    "system" : "https://hebammenregister.example",
    "value" : "HB-EXAMPLE-001",
    "assigner" : {
      "display" : "Österreichisches Hebammengremium"
    }
  },
  {
    "system" : "urn:oid:1.2.40.0.34.4.22",
    "value" : "VBPK-GH-EXAMPLE-Sarah-Berger-001",
    "assigner" : {
      "display" : "Bundesministerium für Inneres"
    }
  }],
  "active" : true,
  "name" : [{
    "use" : "official",
    "family" : "Berger",
    "given" : ["Sarah"],
    "suffix" : ["BSc"]
  }],
  "gender" : "female",
  "qualification" : [{
    "code" : {
      "text" : "Hebamme (Bachelor of Science in Health Studies)"
    },
    "period" : {
      "start" : "2020-07-01"
    },
    "issuer" : {
      "display" : "Fiktive Fachhochschule für Gesundheitsberufe"
    }
  }]
}

```
