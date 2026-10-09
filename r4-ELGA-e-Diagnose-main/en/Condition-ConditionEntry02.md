# Beispielinstanz einer Diagnose für die Gesamtliste - ELGA e-Diagnose R4 (Draft) v0.1.0

## Example Condition: Beispielinstanz einer Diagnose für die Gesamtliste

Profile: [AT ELGA e-Diagnose Condition](StructureDefinition-at-elga-ediag-condition.md)

**AT ELGA Reported (Fremdangabe)**: false

**identifier**: `https://fhir.hl7.at/elga/ediag/r4/CodeSystem/at-ediag-codesystem-business-identifier`/1235

**clinicalStatus**: Active

**code**: Suppurative tonsillitis

**subject**: [Max Mustermann Male, DoB: 1970-01-01 ( Social Security number: 1234010100)](Patient-PatientExample.md)

**onset**: 2026-02-28

**recordedDate**: 2026-03-03 00:00:00+0000

**recorder**: [Melanie Musterärztin (OID:1.2.40.0.34.99.4613.4)](Practitioner-PractitionerExample.md)

**asserter**: [Melanie Musterärztin (OID:1.2.40.0.34.99.4613.4)](Practitioner-PractitionerExample.md)

**note**: 

> 

Temperatur >38.5, Schmerzen beim Schlucken




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "ConditionEntry02",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-condition"]
  },
  "extension" : [{
    "url" : "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-reported",
    "valueBoolean" : false
  }],
  "identifier" : [{
    "system" : "https://fhir.hl7.at/elga/ediag/r4/CodeSystem/at-ediag-codesystem-business-identifier",
    "value" : "1235"
  }],
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
      "code" : "active"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "10351008",
      "display" : "Suppurative tonsillitis"
    }]
  },
  "subject" : {
    "reference" : "Patient/PatientExample"
  },
  "onsetDateTime" : "2026-02-28",
  "recordedDate" : "2026-03-03T00:00:00+00:00",
  "recorder" : {
    "reference" : "Practitioner/PractitionerExample"
  },
  "asserter" : {
    "reference" : "Practitioner/PractitionerExample"
  },
  "note" : [{
    "text" : "Temperatur >38.5, Schmerzen beim Schlucken"
  }]
}

```
