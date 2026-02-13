# AtApsBundle-Beispiel 1 - Austrian Patient Summary (R4) v0.2.0



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "AtApsExampleBundle01NoProblemsMedicationAllergies",
  "meta" : {
    "profile" : [
      "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-bundle"
    ]
  },
  "identifier" : {
    "system" : "http://system-to-be-defined.com",
    "value" : "63fef90a-be11-4ddf-aece-d77da15c4f20"
  },
  "type" : "document",
  "timestamp" : "2024-02-08T14:01:30+00:00",
  "entry" : [
    {
      "fullUrl" : "urn:uuid:212fdc76-ccc3-40bf-8cdd-82f2ef88bd7b",
      "resource" : {
        "resourceType" : "Composition",
        "id" : "AtApsExampleBundle01-composition",
        "meta" : {
          "profile" : [
            "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-composition"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Composition_AtApsExampleBundle01-composition\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Composition AtApsExampleBundle01-composition</b></p><a name=\"AtApsExampleBundle01-composition\"> </a><a name=\"hcAtApsExampleBundle01-composition\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-aps-composition.html\">AT APS Composition</a></p></div><p><b>status</b>: Preliminary</p><p><b>type</b>: <span title=\"Codes:{http://loinc.org 60591-5}\">Patient summary</span></p><p><b>date</b>: 2024-02-08 14:01:30+0000</p><p><b>author</b>: <a href=\"Bundle-AtApsExample03Diabetes.html#urn-uuid-75db30ee-7028-486c-929a-c5126837f472\">APS Generator</a></p><p><b>title</b>: Austrian Patient Summary</p><p><b>custodian</b>: <a href=\"Bundle-AtApsExampleBundle01NoProblemsMedicationAllergies.html#urn-uuid-6bcdcc96-1443-48bd-ab41-7692dc1baecd\">Muster-Organization</a></p></div>"
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
          "reference" : "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8",
          "display" : "Maria Musterfrau"
        },
        "date" : "2024-02-08T14:01:30+00:00",
        "author" : [
          {
            "reference" : "urn:uuid:75db30ee-7028-486c-929a-c5126837f472",
            "display" : "APS Generator"
          }
        ],
        "title" : "Austrian Patient Summary",
        "custodian" : {
          "reference" : "urn:uuid:6bcdcc96-1443-48bd-ab41-7692dc1baecd",
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
    },
    {
      "fullUrl" : "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8",
      "resource" : {
        "resourceType" : "Patient",
        "id" : "AtApsExampleBundle01-patient",
        "meta" : {
          "profile" : [
            "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-patient"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Patient_AtApsExampleBundle01-patient\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Patient AtApsExampleBundle01-patient</b></p><a name=\"AtApsExampleBundle01-patient\"> </a><a name=\"hcAtApsExampleBundle01-patient\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-aps-patient.html\">AT APS Patient</a></p></div><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">Maria Johanna Musterfrau  Female, DoB: 1961-12-24 ( Social Security number: 1111241261)</p><hr/><table class=\"grid\"><tr><td style=\"background-color: #f3f5da\" title=\"Known Marital status of Patient\">Marital Status:</td><td colspan=\"3\"><span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-MaritalStatus M}\">Verheiratet</span></td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Other Id (see the one above)\">Other Id:</td><td colspan=\"3\">Patient internal identifier/0001</td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Ways to contact the Patient\">Contact Detail</td><td colspan=\"3\"><ul><li><a href=\"tel:+43.2682.40400\">+43.2682.40400</a></li><li><a href=\"tel:+43.664.1234567\">+43.664.1234567</a></li><li><a href=\"mailto:musterfrau@provider.at\">musterfrau@provider.at</a></li><li>Musterstraße 13a Eisenstadt Burgenland 7000 AUT (home)</li></ul></td></tr></table></div>"
        },
        "identifier" : [
          {
            "type" : {
              "coding" : [
                {
                  "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
                  "code" : "SS",
                  "display" : "Social Security number"
                }
              ]
            },
            "system" : "urn:oid:1.2.40.0.10.1.4.3.1",
            "value" : "1111241261",
            "assigner" : {
              "display" : "Dachverband der österreichischen Sozialversicherungsträger"
            }
          },
          {
            "type" : {
              "coding" : [
                {
                  "system" : "http://terminology.hl7.org/CodeSystem/v2-0203",
                  "code" : "PI",
                  "display" : "Patient internal identifier"
                }
              ]
            },
            "system" : "urn:oid:1.2.3.4.5",
            "value" : "0001",
            "assigner" : {
              "display" : "Ein GDA in Österreich"
            }
          }
        ],
        "name" : [
          {
            "family" : "Musterfrau",
            "given" : ["Maria", "Johanna"],
            "prefix" : ["Dr."]
          }
        ],
        "telecom" : [
          {
            "system" : "phone",
            "value" : "+43.2682.40400",
            "use" : "home"
          },
          {
            "system" : "phone",
            "value" : "+43.664.1234567",
            "use" : "mobile"
          },
          {
            "system" : "email",
            "value" : "musterfrau@provider.at"
          }
        ],
        "gender" : "female",
        "birthDate" : "1961-12-24",
        "address" : [
          {
            "use" : "home",
            "line" : ["Musterstraße 13a"],
            "city" : "Eisenstadt",
            "state" : "Burgenland",
            "postalCode" : "7000",
            "country" : "AUT"
          }
        ],
        "maritalStatus" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/v3-MaritalStatus",
              "code" : "M",
              "display" : "Verheiratet"
            }
          ]
        }
      }
    },
    {
      "fullUrl" : "urn:uuid:75db30ee-7028-486c-929a-c5126837f472",
      "resource" : {
        "resourceType" : "Device",
        "id" : "AtApsExampleBundle01-author",
        "meta" : {
          "profile" : [
            "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-device"
          ]
        },
        "text" : {
          "status" : "additional",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Device_AtApsExampleBundle01-author\"> </a><p>Dieses Gerät erzeugt ein APS FHIR-Dokument.</p></div>"
        },
        "deviceName" : [
          {
            "name" : "APS Generator",
            "type" : "user-friendly-name"
          }
        ],
        "version" : [
          {
            "value" : "1.0.0"
          }
        ]
      }
    },
    {
      "fullUrl" : "urn:uuid:6bcdcc96-1443-48bd-ab41-7692dc1baecd",
      "resource" : {
        "resourceType" : "Organization",
        "id" : "AtApsExampleBundle01-custodian",
        "meta" : {
          "profile" : [
            "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-organization"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Organization_AtApsExampleBundle01-custodian\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Organization AtApsExampleBundle01-custodian</b></p><a name=\"AtApsExampleBundle01-custodian\"> </a><a name=\"hcAtApsExampleBundle01-custodian\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-aps-organization.html\">AT APS Organization</a></p></div><p><b>name</b>: Muster-Organization</p></div>"
        },
        "name" : "Muster-Organization"
      }
    }
  ]
}

```
