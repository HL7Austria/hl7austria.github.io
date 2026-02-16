# AtApsFlagAlert-Beispiel - Austrian Patient Summary (R4) v1.0.0



## Resource Content

```json
{
  "resourceType" : "Flag",
  "id" : "AtApsExampleFlagAlert01",
  "meta" : {
    "profile" : [
      "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-flagalert"
    ]
  },
  "identifier" : [
    {
      "value" : "12345"
    }
  ],
  "status" : "active",
  "category" : [
    {
      "coding" : [
        {
          "system" : "http://terminology.hl7.org/CodeSystem/flag-category",
          "code" : "safety",
          "display" : "Safety"
        }
      ],
      "text" : "Sicherheit"
    }
  ],
  "code" : {
    "coding" : [
      {
        "system" : "http://snomed.info/sct",
        "code" : "165002",
        "display" : "Accident-prone"
      }
    ],
    "text" : "Der Patient zeigt eine erhöhte Sturzgefährdung."
  },
  "subject" : {
    "reference" : "Patient/at-aps-example-patient-01",
    "display" : "Maria Musterfrau"
  },
  "author" : {
    "reference" : "Practitioner/at-aps-example-practitioner-01",
    "display" : "Hanna Hausärztin"
  }
}

```
