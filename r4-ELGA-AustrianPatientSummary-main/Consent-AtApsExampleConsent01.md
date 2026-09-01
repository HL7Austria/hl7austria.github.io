# AtApsConsent-Beispiel - Austrian Patient Summary (R4) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AtApsConsent-Beispiel**

## Example Consent: AtApsConsent-Beispiel

Profile: [AT APS Consent](StructureDefinition-at-aps-consent.md)

## Participants

* **Role**: Patient
  * **Details**: [Maria Musterfrau](Patient-at-aps-example-patient-01.md)

This consent is made under the regulation Common Rule Informed Consent .

The subject has given their consent.



## Resource Content

```json
{
  "resourceType" : "Consent",
  "id" : "AtApsExampleConsent01",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-consent"]
  },
  "status" : "active",
  "scope" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/consentscope",
      "code" : "treatment",
      "display" : "Treatment"
    }]
  },
  "category" : [{
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "59284-0",
      "display" : "Einwilligung - Dokument"
    }]
  }],
  "patient" : {
    "reference" : "Patient/at-aps-example-patient-01",
    "display" : "Maria Musterfrau"
  },
  "policyRule" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/consentpolicycodes",
      "code" : "cric",
      "display" : "Common Rule Informed Consent"
    }]
  }
}

```
