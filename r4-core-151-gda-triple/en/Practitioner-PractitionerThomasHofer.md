# PractitionerThomasHofer - HL7® Austria FHIR® Core Implementation Guide v2.1.0

## Example Practitioner: PractitionerThomasHofer

Profile: [HL7® AT Core Practitioner Profile](StructureDefinition-at-core-practitioner.md)

Thomas Hofer (official) (OID:1.2.40.0.34.99.4613.9)

-------

| | | | |
| :--- | :--- | :--- | :--- |
| Active: | true | Gender: | Male |
| Qualification: | Doctor of Medicine (MD)* Valid Period: 1989-08-30 --> (ongoing)
* Issued By: Medizinische Universität Sonnenfeld
 | | |
| Qualification: | Fachärztin/Facharzt für Frauenheilkunde und Geburtshilfe* Valid Period: 1995-10-08 --> (ongoing)
* Issued By: Österreichische Ärztekammer
 | | |
| Qualification: | Fortbildungszertifikat Wechseljahresmedizin und hormonelle Gesundheit* Valid Period: 2025-03-21 --> (ongoing)
* Issued By: Fiktive Akademie für Frauengesundheit
 | | |



## Resource Content

```json
{
  "resourceType" : "Practitioner",
  "id" : "PractitionerThomasHofer",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/core/r4/StructureDefinition/at-core-practitioner"]
  },
  "identifier" : [{
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:1.2.40.0.34.99.4613.9"
  }],
  "active" : true,
  "name" : [{
    "use" : "official",
    "family" : "Hofer",
    "given" : ["Thomas"],
    "prefix" : ["Dr."]
  }],
  "gender" : "male",
  "qualification" : [{
    "code" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/v2-0360",
        "code" : "MD",
        "display" : "Doctor of Medicine"
      }],
      "text" : "Doctor of Medicine (MD)"
    },
    "period" : {
      "start" : "1989-08-30"
    },
    "issuer" : {
      "display" : "Medizinische Universität Sonnenfeld"
    }
  },
  {
    "code" : {
      "text" : "Fachärztin/Facharzt für Frauenheilkunde und Geburtshilfe"
    },
    "period" : {
      "start" : "1995-10-08"
    },
    "issuer" : {
      "display" : "Österreichische Ärztekammer"
    }
  },
  {
    "code" : {
      "text" : "Fortbildungszertifikat Wechseljahresmedizin und hormonelle Gesundheit"
    },
    "period" : {
      "start" : "2025-03-21"
    },
    "issuer" : {
      "display" : "Fiktive Akademie für Frauengesundheit"
    }
  }]
}

```
