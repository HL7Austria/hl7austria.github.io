# Austrian Patient Summary - Austrian Patient Summary (R4) v1.1.0



## Resource Content

```json
{
  "resourceType" : "Composition",
  "id" : "AtApsComposition01",
  "meta" : {
    "profile" : [
      "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-composition"
    ]
  },
  "status" : "preliminary",
  "type" : {
    "coding" : [
      {
        "system" : "http://loinc.org",
        "code" : "60591-5",
        "display" : "Patient summary"
      }
    ]
  },
  "subject" : {
    "reference" : "Patient/at-aps-example-patient-01",
    "display" : "Maria Musterfrau"
  },
  "date" : "2024-02-08T14:01:30+00:00",
  "author" : [
    {
      "reference" : "Device/AtApsExampleDevice04",
      "display" : "APS Generator"
    }
  ],
  "title" : "Austrian Patient Summary",
  "custodian" : {
    "reference" : "Organization/AtApsExampleOrganization01",
    "display" : "Muster-Organization"
  },
  "section" : [
    {
      "title" : "Medikationsliste",
      "code" : {
        "coding" : [
          {
            "system" : "http://loinc.org",
            "code" : "10160-0",
            "display" : "Medikationsanamnese"
          }
        ]
      },
      "text" : {
        "status" : "empty",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Narrativer Text muss generiert werden.</p></div>"
      },
      "emptyReason" : {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/list-empty-reason",
            "code" : "nilknown"
          }
        ]
      }
    },
    {
      "title" : "Allergien und Intoleranzen",
      "code" : {
        "coding" : [
          {
            "system" : "http://loinc.org",
            "code" : "48765-2",
            "display" : "Allergien und unerwünschte Wirkungen"
          }
        ]
      },
      "text" : {
        "status" : "empty",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Narrativer Text muss generiert werden.</p></div>"
      },
      "emptyReason" : {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/list-empty-reason",
            "code" : "nilknown"
          }
        ]
      }
    },
    {
      "title" : "Gesundheitsprobleme und Risiken",
      "code" : {
        "coding" : [
          {
            "system" : "http://loinc.org",
            "code" : "11450-4",
            "display" : "Problemliste"
          }
        ]
      },
      "text" : {
        "status" : "empty",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Narrativer Text muss generiert werden.</p></div>"
      },
      "emptyReason" : {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/list-empty-reason",
            "code" : "nilknown"
          }
        ]
      }
    },
    {
      "title" : "Eingriffe und Therapien",
      "code" : {
        "coding" : [
          {
            "system" : "http://loinc.org",
            "code" : "47519-4",
            "display" : "Anamnese der Prozeduren oder Maßnahmen"
          }
        ]
      },
      "text" : {
        "status" : "empty",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Narrativer Text muss generiert werden.</p></div>"
      },
      "emptyReason" : {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/list-empty-reason",
            "code" : "nilknown"
          }
        ]
      }
    },
    {
      "title" : "Implantate, medizinische Geräte und Heilbehelfe",
      "code" : {
        "coding" : [
          {
            "system" : "http://loinc.org",
            "code" : "46264-8",
            "display" : "Anamnese zum Einsatz von Medizinprodukten"
          }
        ]
      },
      "text" : {
        "status" : "empty",
        "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Narrativer Text muss generiert werden.</p></div>"
      },
      "emptyReason" : {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/list-empty-reason",
            "code" : "nilknown"
          }
        ]
      }
    }
  ]
}

```
