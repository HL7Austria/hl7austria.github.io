# Beispielinstanz einer Diagnose mit eingebetteter Bezugsperson - ELGA e-Diagnose R4 v0.1.1

## Example Condition: Beispielinstanz einer Diagnose mit eingebetteter Bezugsperson



## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "ConditionEntryContainedRelatedPerson",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-condition"]
  },
  "contained" : [{
    "resourceType" : "RelatedPerson",
    "id" : "mutter",
    "meta" : {
      "profile" : ["https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-relatedperson"]
    },
    "active" : true,
    "patient" : {
      "reference" : "Patient/PatientExample"
    },
    "relationship" : [{
      "text" : "Mutter"
    }],
    "name" : [{
      "text" : "Maria Musterfrau"
    }]
  }],
  "extension" : [{
    "url" : "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-ext-reported",
    "valueBoolean" : true
  }],
  "identifier" : [{
    "system" : "https://fhir.hl7.at/elga/ediag/r4/CodeSystem/at-ediag-business-identifier",
    "value" : "1240"
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
      "code" : "10351008",
      "display" : "Suppurative tonsillitis"
    }]
  },
  "subject" : {
    "reference" : "Patient/PatientExample",
    "identifier" : {
      "system" : "urn:oid:1.2.40.0.10.2.1.1.149",
      "value" : "GH:oeLdSEb0l+8kSdJWjOYyYmnYki0="
    }
  },
  "onsetDateTime" : "2026-02-28",
  "recordedDate" : "2026-03-03T08:08:00+00:00",
  "recorder" : {
    "reference" : "Practitioner/PractitionerExample",
    "identifier" : {
      "system" : "urn:ietf:rfc:3986",
      "value" : "urn:oid:1.2.40.0.34.99.4613.4"
    }
  },
  "asserter" : {
    "reference" : "#mutter"
  }
}

```
