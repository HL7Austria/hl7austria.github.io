# Beispielinstanz einer Diagnose für die Gesamtansicht (Diarrhö) - ELGA e-Diagnose R4 v0.1.1

## Example Condition: Beispielinstanz einer Diagnose für die Gesamtansicht (Diarrhö)

Profile: [AT e-Diagnose Condition](StructureDefinition-at-elga-ediag-condition.md)

**AT e-Diagnose Reported (Fremdangabe)**: false

**identifier**: `https://fhir.hl7.at/elga/ediag/r4/CodeSystem/at-ediag-business-identifier`/1237

**clinicalStatus**: Active

**code**: Diarrhea caused by drug

**subject**: [Max Mustermann Male, DoB: 1970-01-01 ( Social Security number: 1234010100)](Patient-PatientExample.md)

**onset**: 2026-03-09

**recordedDate**: 2026-03-09 09:51:00+0000

**recorder**: [Melanie Musterärztin (OID:1.2.40.0.34.99.4613.4)](Practitioner-PractitionerExample.md)

**asserter**: [Melanie Musterärztin (OID:1.2.40.0.34.99.4613.4)](Practitioner-PractitionerExample.md)

**note**: 

> 

Wässrige Durchfälle bei bestehender AB-Therapie




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "ConditionEntry04",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-condition"]
  },
  "extension" : [{
    "url" : "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-ext-reported",
    "valueBoolean" : false
  }],
  "identifier" : [{
    "system" : "https://fhir.hl7.at/elga/ediag/r4/CodeSystem/at-ediag-business-identifier",
    "value" : "1237"
  }],
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
      "version" : "3.0.0",
      "code" : "active"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "428867008",
      "display" : "Diarrhea caused by drug"
    }]
  },
  "subject" : {
    "reference" : "Patient/PatientExample",
    "identifier" : {
      "system" : "urn:oid:1.2.40.0.10.2.1.1.149",
      "value" : "GH:oeLdSEb0l+8kSdJWjOYyYmnYki0="
    }
  },
  "onsetDateTime" : "2026-03-09",
  "recordedDate" : "2026-03-09T09:51:00+00:00",
  "recorder" : {
    "reference" : "Practitioner/PractitionerExample",
    "identifier" : {
      "system" : "urn:ietf:rfc:3986",
      "value" : "urn:oid:1.2.40.0.34.99.4613.4"
    }
  },
  "asserter" : {
    "reference" : "Practitioner/PractitionerExample",
    "identifier" : {
      "system" : "urn:ietf:rfc:3986",
      "value" : "urn:oid:1.2.40.0.34.99.4613.4"
    }
  },
  "note" : [{
    "text" : "Wässrige Durchfälle bei bestehender AB-Therapie"
  }]
}

```
