# Beispielinstanz einer Allergie für die Summary-Liste - ELGA e-Diagnose R4 v0.1.0

## Example AllergyIntolerance: Beispielinstanz einer Allergie für die Summary-Liste

Profile: [AT e-Diagnose AllergyIntolerance](StructureDefinition-at-elga-ediag-allergyintolerance.md)

**AT e-Diagnose Reported (Fremdangabe)**: true

**identifier**: `https://fhir.hl7.at/elga/ediag/r4/CodeSystem/at-ediag-business-identifier`/4711

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**code**: AMOXICILLIN

**patient**: [Max Mustermann Male, DoB: 1970-01-01 ( Social Security number: 1234010100)](Patient-PatientExample.md)

**recordedDate**: 2026-03-03 08:07:00+0000

**recorder**: [Melanie Musterärztin (OID:1.2.40.0.34.99.4613.4)](Practitioner-PractitionerExample.md)

**asserter**: [Max Mustermann Male, DoB: 1970-01-01 ( Social Security number: 1234010100)](Patient-PatientExample.md)

> **reaction****AT e-Diagnose Reaktionszeit**: <6 Stunden**manifestation**: Exanthem, Emesis**onset**: 1983-03-01**note**: 
> 

Hautausschlag und Erbrechen nach Penicillin-Einnahme





## Resource Content

```json
{
  "resourceType" : "AllergyIntolerance",
  "id" : "AllergyEntry01",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-allergyintolerance"]
  },
  "extension" : [{
    "url" : "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-ext-reported",
    "valueBoolean" : true
  }],
  "identifier" : [{
    "system" : "https://fhir.hl7.at/elga/ediag/r4/CodeSystem/at-ediag-business-identifier",
    "value" : "4711"
  }],
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical",
      "version" : "1.0.1",
      "code" : "active"
    }]
  },
  "verificationStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-verification",
      "version" : "1.0.1",
      "code" : "confirmed"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "https://termgit.elga.gv.at/CodeSystem/medikation-ages-wirkstoffe",
      "code" : "1708923",
      "display" : "AMOXICILLIN"
    }]
  },
  "patient" : {
    "reference" : "Patient/PatientExample",
    "identifier" : {
      "system" : "urn:oid:1.2.40.0.10.2.1.1.149",
      "value" : "GH:oeLdSEb0l+8kSdJWjOYyYmnYki0="
    }
  },
  "recordedDate" : "2026-03-03T08:07:00+00:00",
  "recorder" : {
    "reference" : "Practitioner/PractitionerExample",
    "identifier" : {
      "system" : "urn:ietf:rfc:3986",
      "value" : "urn:oid:1.2.40.0.34.99.4613.4"
    }
  },
  "asserter" : {
    "reference" : "Patient/PatientExample",
    "identifier" : {
      "system" : "urn:oid:1.2.40.0.10.2.1.1.149",
      "value" : "GH:oeLdSEb0l+8kSdJWjOYyYmnYki0="
    }
  },
  "reaction" : [{
    "extension" : [{
      "url" : "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-ext-reaction-time",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhir.hl7.at/elga/ediag/r4/CodeSystem/at-ediag-reaction-time",
          "code" : "lt6h",
          "display" : "<6 Stunden"
        }]
      }
    }],
    "manifestation" : [{
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "271807003",
        "display" : "Exanthem"
      }]
    },
    {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "422400008",
        "display" : "Emesis"
      }]
    }],
    "onset" : "1983-03-01",
    "note" : [{
      "text" : "Hautausschlag und Erbrechen nach Penicillin-Einnahme"
    }]
  }]
}

```
