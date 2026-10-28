# Parameters der Antwort auf $delete einer Diagnose - ELGA e-Diagnose R4 v0.1.1

## Example Parameters: Parameters der Antwort auf $delete einer Diagnose



## Resource Content

```json
{
  "resourceType" : "Parameters",
  "id" : "ConditionDeleteResponse01",
  "parameter" : [{
    "name" : "entry",
    "resource" : {
      "resourceType" : "Condition",
      "id" : "ConditionEntry05",
      "meta" : {
        "profile" : ["https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-condition"]
      },
      "extension" : [{
        "url" : "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-ext-reported",
        "valueBoolean" : false
      }],
      "identifier" : [{
        "system" : "https://fhir.hl7.at/elga/ediag/r4/CodeSystem/at-ediag-business-identifier",
        "value" : "1238"
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
          "code" : "52643007",
          "display" : "Candidal balanitis"
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
      "recordedDate" : "2026-03-09T09:52:00+00:00",
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
        "text" : "Juckreiz im Genitalbereich bei bestehender AB-Therapie"
      }]
    }
  }]
}

```
