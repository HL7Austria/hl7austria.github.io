# AtApsConsent-Beispiel - Austrian Patient Summary (R4) v0.2.0



## Resource Content

```json
{
  "resourceType" : "Consent",
  "id" : "AtApsExampleConsent01",
  "meta" : {
    "profile" : [
      "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-consent"
    ]
  },
  "status" : "active",
  "scope" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/consentscope",
        "code" : "treatment",
        "display" : "Treatment"
      }
    ]
  },
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://loinc.org",
          "code" : "59284-0",
          "display" : "Einwilligung - Dokument"
        }
      ]
    }
  ],
  "patient" : {
    "reference" : "Patient/HL7ATCorePatientExample01",
    "display" : "Max Mustermann"
  },
  "policyRule" : {
    "coding" : [
      {
        "system" : "http://terminology.hl7.org/CodeSystem/consentpolicycodes",
        "code" : "cric",
        "display" : "Common Rule Informed Consent"
      }
    ]
  }
}

```
