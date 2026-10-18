# PractitionerAnjaLeitner - HL7® Austria FHIR® Core Implementation Guide v2.1.0

## Example Practitioner: PractitionerAnjaLeitner

Profile: [HL7® AT Core Practitioner Profile](StructureDefinition-at-core-practitioner.md)

Anja Leitner (official) (OID:1.2.40.0.34.99.4613.8)

-------

| | | | |
| :--- | :--- | :--- | :--- |
| Active: | true | Gender: | Female |
| Other Id: | `urn:oid:1.2.40.0.34.4.22`/VBPK-GH-EXAMPLE-Anja-Leitner-001 | | |
| Qualification: | Fortbildungszertifikat Gynäkologische Ultraschalldiagnostik* Valid Period: 2024-09-20 --> (ongoing)
* Issued By: Fiktive Akademie für Medizinische Ultraschalldiagnostik
 | | |



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "PractitionerAnjaLeitner",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/core/r4/StructureDefinition/at-core-practitioner"]
  },
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:1.2.40.0.34.99.4613.8"
  },
  {
    "system" : "urn:oid:1.2.40.0.34.4.22",
    "value" : "VBPK-GH-EXAMPLE-Anja-Leitner-001",
    "assigner" : {
      "display" : "Bundesministerium für Inneres"
    }
  }],
  "active" : true,
  "name" : [{
    "use" : "official",
    "family" : "Leitner",
    "given" : ["Anja"],
    "prefix" : ["Dr."]
  }],
  "gender" : "female",
  "qualification" : [{
    "code" : {
      "text" : "Fortbildungszertifikat Gynäkologische Ultraschalldiagnostik"
    },
    "period" : {
      "start" : "2024-09-20"
    },
    "issuer" : {
      "display" : "Fiktive Akademie für Medizinische Ultraschalldiagnostik"
    }
  }]
}

```
