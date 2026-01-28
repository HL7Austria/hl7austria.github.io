# AtApsBundle-Beispiel 2 - Austrian Patient Summary (R4) v0.2.0



## Resource Content

```json
{
  "resourceType" : "Bundle",
  "id" : "AtApsExampleBundle02PreventiveMedicalCheckup",
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
        "id" : "AtApsExampleBundle02-composition",
        "meta" : {
          "profile" : [
            "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-composition"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Composition_AtApsExampleBundle02-composition\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Composition AtApsExampleBundle02-composition</b></p><a name=\"AtApsExampleBundle02-composition\"> </a><a name=\"hcAtApsExampleBundle02-composition\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-aps-composition.html\">AT APS Composition</a></p></div><p><b>status</b>: Final</p><p><b>type</b>: <span title=\"Codes:{http://loinc.org 60591-5}\">Patient summary</span></p><p><b>date</b>: 2024-02-08 14:01:30+0000</p><p><b>author</b>: <a href=\"Bundle-AtApsExample03Diabetes.html#urn-uuid-75db30ee-7028-486c-929a-c5126837f472\">Dr. Hannes Hausarzt</a></p><p><b>title</b>: International Patient Summary - Preventive Medical Checkup</p><p><b>custodian</b>: <a href=\"Bundle-AtApsExample03Diabetes.html#urn-uuid-f6266e6a-f63d-4673-b2de-3dff11e619d6\">Muster-Organisation</a></p></div>"
        },
        "status" : "final",
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
          "display" : "Test Arnold"
        },
        "date" : "2024-02-08T14:01:30+00:00",
        "author" : [
          {
            "reference" : "urn:uuid:75db30ee-7028-486c-929a-c5126837f472",
            "display" : "Dr. Hannes Hausarzt"
          }
        ],
        "title" : "International Patient Summary - Preventive Medical Checkup",
        "custodian" : {
          "reference" : "urn:uuid:f6266e6a-f63d-4673-b2de-3dff11e619d6",
          "display" : "Muster-Organisation"
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
            "entry" : [
              {
                "reference" : "urn:uuid:acac4c94-a752-4cf5-9a6b-0d84237d5076",
                "display" : "AtApsExampleBundle02-medication-summary-1"
              },
              {
                "reference" : "urn:uuid:98285578-0bb6-42b2-908c-5bcc5e3992e0",
                "display" : "AtApsExampleBundle02-medication-summary-2"
              },
              {
                "reference" : "urn:uuid:769a289d-a518-469a-8100-7943550e359f",
                "display" : "AtApsExampleBundle02-medication-summary-3"
              },
              {
                "reference" : "urn:uuid:9cb3b3df-7b15-4270-af39-5f2f819e692e",
                "display" : "AtApsExampleBundle02-medication-summary-4"
              },
              {
                "reference" : "urn:uuid:da89fd22-0d4f-4220-a625-b9ddf5eb330d",
                "display" : "AtApsExampleBundle02-medication-summary-5"
              },
              {
                "reference" : "urn:uuid:e526f7e5-2f76-484e-acde-d6f2365f0859",
                "display" : "AtApsExampleBundle02-medication-summary-6"
              },
              {
                "reference" : "urn:uuid:6d15d84f-2faf-4141-ac0c-fb9cf8496abe",
                "display" : "AtApsExampleBundle02-medication-summary-7"
              },
              {
                "reference" : "urn:uuid:ecf9728f-fa50-4b46-b8f7-7768174df72a",
                "display" : "AtApsExampleBundle02-medication-summary-8"
              },
              {
                "reference" : "urn:uuid:cf4b2e92-51e6-44de-9406-5406e66e9d45",
                "display" : "AtApsExampleBundle02-medication-summary-9"
              }
            ]
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
            "entry" : [
              {
                "reference" : "urn:uuid:768eb9cb-00f3-4ab1-bfc2-ff835cb3b89b",
                "display" : "AtApsExampleBundle02-allergy-1"
              }
            ]
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
            "entry" : [
              {
                "reference" : "urn:uuid:72e85b9d-004d-4104-b166-86d129948bae",
                "display" : "AtApsExampleBundle02-problem-1"
              },
              {
                "reference" : "urn:uuid:82fa32f6-39d6-4fc9-9624-90a48fd3d3a5",
                "display" : "AtApsExampleBundle02-problem-2"
              },
              {
                "reference" : "urn:uuid:61db6213-22ab-405a-825a-0ae6905fad1e",
                "display" : "AtApsExampleBundle02-problem-3"
              },
              {
                "reference" : "urn:uuid:194cac84-0ee2-40b4-8dda-1866318d234c",
                "display" : "AtApsExampleBundle02-problem-4"
              },
              {
                "reference" : "urn:uuid:9d1c0b74-20c1-4603-a95a-71e6a1dc8fde",
                "display" : "AtApsExampleBundle02-problem-5"
              },
              {
                "reference" : "urn:uuid:b62c11b1-c478-4d04-ae6f-5f73543f2bb1",
                "display" : "AtApsExampleBundle02-problem-6"
              },
              {
                "reference" : "urn:uuid:8d3a18fb-3610-4bfb-9aa4-1169cc6dd2dd",
                "display" : "AtApsExampleBundle02-problem-7"
              },
              {
                "reference" : "urn:uuid:c5d400b1-b58b-41ed-9776-cfcdaf48f2e6",
                "display" : "AtApsExampleBundle02-problem-8"
              },
              {
                "reference" : "urn:uuid:32d90aaa-6577-4c5d-9771-d8f606ebf0b9",
                "display" : "AtApsExampleBundle02-problem-9"
              },
              {
                "reference" : "urn:uuid:2040058f-9537-4b26-9367-5ca5ac0ddb58",
                "display" : "AtApsExampleBundle02-problem-10"
              },
              {
                "reference" : "urn:uuid:b7b2a10d-7295-4fd1-ad21-81bca78dc45a",
                "display" : "AtApsExampleBundle02-problem-11"
              },
              {
                "reference" : "urn:uuid:ebfb60a8-a753-459d-a796-a191a4dbd91d",
                "display" : "AtApsExampleBundle02-problem-12"
              },
              {
                "reference" : "urn:uuid:3f3140b1-9478-4491-b7bf-10560f38da0e",
                "display" : "AtApsExampleBundle02-problem-13"
              },
              {
                "reference" : "urn:uuid:caa77334-fbfc-4129-a101-1b01c595dd91",
                "display" : "AtApsExampleBundle02-problem-14"
              },
              {
                "reference" : "urn:uuid:e66d8ac1-a124-4e94-be22-969c9b117ce5",
                "display" : "AtApsExampleBundle02-problem-15"
              },
              {
                "reference" : "urn:uuid:5ab717ff-c0a0-409e-83db-0fa6f8619f68",
                "display" : "AtApsExampleBundle02-problem-16"
              },
              {
                "reference" : "urn:uuid:fa46fccb-5c24-4a40-a478-d6da4902ff33",
                "display" : "AtApsExampleBundle02-problem-17"
              }
            ]
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
            "entry" : [
              {
                "reference" : "urn:uuid:75c46c35-8f4e-4232-b026-5672c60d076a",
                "display" : "AtApsExampleBundle02-procedure-history-1"
              },
              {
                "reference" : "urn:uuid:8103f99c-64f0-4dd5-b92e-5c9680c91e47",
                "display" : "AtApsExampleBundle02-procedure-history-2"
              },
              {
                "reference" : "urn:uuid:8a825f17-1599-4928-b384-0ca4a62daba8",
                "display" : "AtApsExampleBundle02-procedure-history-3"
              }
            ]
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
          },
          {
            "title" : "Diagnostische Resultate",
            "code" : {
              "coding" : [
                {
                  "system" : "http://loinc.org",
                  "code" : "30954-2",
                  "display" : "Relevante diagnostische Tests und/oder Labordaten"
                }
              ]
            },
            "text" : {
              "status" : "empty",
              "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Narrativer Text muss generiert werden.</p></div>"
            },
            "entry" : [
              {
                "reference" : "urn:uuid:725bcf71-22e6-473b-a879-49a4b63cd654",
                "display" : "AtApsExampleBundle02-diagnostic-result-1"
              },
              {
                "reference" : "urn:uuid:aeff2319-2cc2-4fba-9541-7a4de3d20f91",
                "display" : "AtApsExampleBundle02-diagnostic-result-2"
              },
              {
                "reference" : "urn:uuid:d16dce15-bc5a-48a5-910e-6ac039785a2a",
                "display" : "AtApsExampleBundle02-diagnostic-result-3"
              },
              {
                "reference" : "urn:uuid:96314fcd-3b0c-4032-8cac-6eb59579d90a",
                "display" : "AtApsExampleBundle02-diagnostic-result-4"
              },
              {
                "reference" : "urn:uuid:30c8a990-ea39-4dcb-9e1e-b9ac74afffc9",
                "display" : "AtApsExampleBundle02-diagnostic-result-5"
              },
              {
                "reference" : "urn:uuid:f29ac02d-762e-436e-b40c-667ab89e15f2",
                "display" : "AtApsExampleBundle02-diagnostic-result-6"
              },
              {
                "reference" : "urn:uuid:28a773ea-38c7-4c77-86c4-7764325756e7",
                "display" : "AtApsExampleBundle02-diagnostic-result-7"
              },
              {
                "reference" : "urn:uuid:b675680e-9469-41b1-adc1-093904e3a1d3",
                "display" : "AtApsExampleBundle02-diagnostic-result-15"
              }
            ]
          },
          {
            "title" : "Vitalparameter",
            "code" : {
              "coding" : [
                {
                  "system" : "http://loinc.org",
                  "code" : "8716-3",
                  "display" : "Vitalparameter"
                }
              ]
            },
            "text" : {
              "status" : "empty",
              "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Narrativer Text muss generiert werden.</p></div>"
            },
            "entry" : [
              {
                "reference" : "urn:uuid:74c5e186-d765-4c93-a624-c9b0746e8142",
                "display" : "AtApsExampleBundle02-vital-sign-1"
              },
              {
                "reference" : "urn:uuid:428259da-e0f7-4780-b1e3-c177515edd37",
                "display" : "AtApsExampleBundle02-vital-sign-2"
              },
              {
                "reference" : "urn:uuid:daf9c15d-14d4-429c-b658-6842fdff67d8",
                "display" : "AtApsExampleBundle02-vital-sign-3"
              },
              {
                "reference" : "urn:uuid:8248cc70-65a2-4d37-ae14-a3ef2abf8f32",
                "display" : "AtApsExampleBundle02-vital-sign-4"
              },
              {
                "reference" : "urn:uuid:4d3f7ac4-fd0a-49af-a56b-303a2dbe67d1",
                "display" : "AtApsExampleBundle02-vital-sign-5"
              },
              {
                "reference" : "urn:uuid:be35e603-6b99-4bb5-ad70-8499f6b55df1",
                "display" : "AtApsExampleBundle02-vital-sign-6"
              }
            ]
          },
          {
            "title" : "Vergangene Gesundheitsprobleme und Risiken",
            "code" : {
              "coding" : [
                {
                  "system" : "http://loinc.org",
                  "code" : "11348-0",
                  "display" : "Anamnese früherer Krankheiten"
                }
              ]
            },
            "text" : {
              "status" : "empty",
              "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Narrativer Text muss generiert werden.</p></div>"
            },
            "entry" : [
              {
                "reference" : "urn:uuid:82301518-66ca-4b4c-821d-087adf643cc4",
                "display" : "AtApsExampleBundle02-illness-history-1"
              },
              {
                "reference" : "urn:uuid:ce2589a2-a5e5-4520-808f-8118e2863a95",
                "display" : "AtApsExampleBundle02-illness-history-2"
              }
            ]
          },
          {
            "title" : "Lebensstil / Soziale Umstände und Verhalten",
            "code" : {
              "coding" : [
                {
                  "system" : "http://loinc.org",
                  "code" : "29762-2",
                  "display" : "Sozialanamnese"
                }
              ]
            },
            "text" : {
              "status" : "empty",
              "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><p>Narrativer Text muss generiert werden.</p></div>"
            },
            "entry" : [
              {
                "reference" : "urn:uuid:d0a5bbf1-6d01-4d44-bac5-05f12c98411e",
                "display" : "AtApsExampleBundle02-social-history-1"
              },
              {
                "reference" : "urn:uuid:9add5c32-1ded-43d6-b163-c3fe13f94984",
                "display" : "AtApsExampleBundle02-social-history-2"
              }
            ]
          }
        ]
      }
    },
    {
      "fullUrl" : "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8",
      "resource" : {
        "resourceType" : "Patient",
        "id" : "AtApsExampleBundle02-patient",
        "meta" : {
          "profile" : [
            "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-patient"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Patient_AtApsExampleBundle02-patient\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Patient AtApsExampleBundle02-patient</b></p><a name=\"AtApsExampleBundle02-patient\"> </a><a name=\"hcAtApsExampleBundle02-patient\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-aps-patient.html\">AT APS Patient</a></p></div><p style=\"border: 1px #661aff solid; background-color: #e6e6ff; padding: 10px;\">Arnold Test  Male, DoB: 1950-11-12 ( Social Security number: 0000121150)</p><hr/><table class=\"grid\"><tr><td style=\"background-color: #f3f5da\" title=\"Other Id (see the one above)\">Other Id:</td><td colspan=\"3\">Patient internal identifier/0002</td></tr><tr><td style=\"background-color: #f3f5da\" title=\"Ways to contact the Patient\">Contact Detail</td><td colspan=\"3\">Am Schulweg 5 Hainfeld 3100 AUT (home)</td></tr></table></div>"
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
            "value" : "0000121150",
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
            "value" : "0002",
            "assigner" : {
              "display" : "Ein GDA in Österreich"
            }
          }
        ],
        "name" : [
          {
            "family" : "Test",
            "given" : ["Arnold"]
          }
        ],
        "gender" : "male",
        "birthDate" : "1950-11-12",
        "address" : [
          {
            "use" : "home",
            "line" : ["Am Schulweg 5"],
            "city" : "Hainfeld",
            "postalCode" : "3100",
            "country" : "AUT"
          }
        ]
      }
    },
    {
      "fullUrl" : "urn:uuid:75db30ee-7028-486c-929a-c5126837f472",
      "resource" : {
        "resourceType" : "Practitioner",
        "id" : "AtApsExampleBundle02-author",
        "meta" : {
          "profile" : [
            "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-practitioner"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Practitioner_AtApsExampleBundle02-author\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Practitioner AtApsExampleBundle02-author</b></p><a name=\"AtApsExampleBundle02-author\"> </a><a name=\"hcAtApsExampleBundle02-author\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-aps-practitioner.html\">AT APS Practitioner</a></p></div><p><b>identifier</b>: <a href=\"http://terminology.hl7.org/6.2.0/NamingSystem-uri.html\" title=\"As defined by RFC 3986 (http://www.ietf.org/rfc/rfc3986.txt)(with many schemes defined in many RFCs). For OIDs and UUIDs, use the URN form (urn:oid:(note: lowercase) and urn:uuid:). See http://www.ietf.org/rfc/rfc3001.txt and http://www.ietf.org/rfc/rfc4122.txt \r\n\r\nThis oid is used as an identifier II.root to indicate the the extension is an absolute URI (technically, an IRI). Typically, this is used for OIDs and GUIDs. Note that when this OID is used with OIDs and GUIDs, the II.extension should start with urn:oid or urn:uuid: \r\n\r\nNote that this OID is created to aid with interconversion between CDA and FHIR - FHIR uses urn:ietf:rfc:3986 as equivalent to this OID. URIs as identifiers appear more commonly in FHIR.\r\n\r\nThis OID may also be used in CD.codeSystem.\">Uniform Resource Identifier (URI)</a>/urn:oid:1.2.40.0.10.99.1.2.3.4</p><p><b>name</b>: Hannes Hausarzt </p></div>"
        },
        "identifier" : [
          {
            "system" : "urn:ietf:rfc:3986",
            "value" : "urn:oid:1.2.40.0.10.99.1.2.3.4",
            "assigner" : {
              "display" : "Bundesministerium für Gesundheit"
            }
          }
        ],
        "name" : [
          {
            "family" : "Hausarzt",
            "given" : ["Hannes"],
            "prefix" : ["Dr"]
          }
        ]
      }
    },
    {
      "fullUrl" : "urn:uuid:f6266e6a-f63d-4673-b2de-3dff11e619d6",
      "resource" : {
        "resourceType" : "Organization",
        "id" : "AtApsExampleBundle02-custodian",
        "meta" : {
          "profile" : [
            "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-organization"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Organization_AtApsExampleBundle02-custodian\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Organization AtApsExampleBundle02-custodian</b></p><a name=\"AtApsExampleBundle02-custodian\"> </a><a name=\"hcAtApsExampleBundle02-custodian\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-aps-organization.html\">AT APS Organization</a></p></div><p><b>name</b>: Muster-Organization</p></div>"
        },
        "name" : "Muster-Organization"
      }
    },
    {
      "fullUrl" : "urn:uuid:72e85b9d-004d-4104-b166-86d129948bae",
      "resource" : {
        "resourceType" : "Condition",
        "id" : "AtApsExampleBundle02-problem-1",
        "meta" : {
          "profile" : [
            "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-condition"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Condition_AtApsExampleBundle02-problem-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Condition AtApsExampleBundle02-problem-1</b></p><a name=\"AtApsExampleBundle02-problem-1\"> </a><a name=\"hcAtApsExampleBundle02-problem-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-aps-condition.html\">AT APS Condition</a></p></div><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-clinical active}\">Active</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-ver-status confirmed}\">Confirmed</span></p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-category problem-list-item}\">Problem List Item</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 700379002}\">CKD - Chronische Niereninsuffizienz Grad 3B</span></p><p><b>subject</b>: <a href=\"Bundle-AtApsExample03Diabetes.html#urn-uuid-0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8\">Test Arnold</a></p></div>"
        },
        "clinicalStatus" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
              "code" : "active",
              "display" : "Active"
            }
          ]
        },
        "verificationStatus" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
              "code" : "confirmed",
              "display" : "Confirmed"
            }
          ]
        },
        "category" : [
          {
            "coding" : [
              {
                "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
                "code" : "problem-list-item",
                "display" : "Problem List Item"
              }
            ]
          }
        ],
        "code" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "700379002",
              "display" : "CKD - Chronische Niereninsuffizienz Grad 3B"
            }
          ]
        },
        "subject" : {
          "reference" : "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8",
          "display" : "Test Arnold"
        }
      }
    },
    {
      "fullUrl" : "urn:uuid:82fa32f6-39d6-4fc9-9624-90a48fd3d3a5",
      "resource" : {
        "resourceType" : "Condition",
        "id" : "AtApsExampleBundle02-problem-2",
        "meta" : {
          "profile" : [
            "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-condition"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Condition_AtApsExampleBundle02-problem-2\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Condition AtApsExampleBundle02-problem-2</b></p><a name=\"AtApsExampleBundle02-problem-2\"> </a><a name=\"hcAtApsExampleBundle02-problem-2\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-aps-condition.html\">AT APS Condition</a></p></div><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-clinical active}\">Active</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-ver-status confirmed}\">Confirmed</span></p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-category problem-list-item}\">Problem List Item</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 711150003}\">Langfristige Einnahme von Antikoagulantien</span></p><p><b>subject</b>: <a href=\"Bundle-AtApsExample03Diabetes.html#urn-uuid-0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8\">Test Arnold</a></p></div>"
        },
        "clinicalStatus" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
              "code" : "active",
              "display" : "Active"
            }
          ]
        },
        "verificationStatus" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
              "code" : "confirmed",
              "display" : "Confirmed"
            }
          ]
        },
        "category" : [
          {
            "coding" : [
              {
                "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
                "code" : "problem-list-item",
                "display" : "Problem List Item"
              }
            ]
          }
        ],
        "code" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "711150003",
              "display" : "Langfristige Einnahme von Antikoagulantien"
            }
          ]
        },
        "subject" : {
          "reference" : "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8",
          "display" : "Test Arnold"
        }
      }
    },
    {
      "fullUrl" : "urn:uuid:61db6213-22ab-405a-825a-0ae6905fad1e",
      "resource" : {
        "resourceType" : "Condition",
        "id" : "AtApsExampleBundle02-problem-3",
        "meta" : {
          "profile" : [
            "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-condition"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Condition_AtApsExampleBundle02-problem-3\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Condition AtApsExampleBundle02-problem-3</b></p><a name=\"AtApsExampleBundle02-problem-3\"> </a><a name=\"hcAtApsExampleBundle02-problem-3\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-aps-condition.html\">AT APS Condition</a></p></div><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-clinical active}\">Active</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-ver-status confirmed}\">Confirmed</span></p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-category problem-list-item}\">Problem List Item</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 314194001}\">Diabetes mit Insulin und oraler Behandlung</span></p><p><b>subject</b>: <a href=\"Bundle-AtApsExample03Diabetes.html#urn-uuid-0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8\">Test Arnold</a></p></div>"
        },
        "clinicalStatus" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
              "code" : "active",
              "display" : "Active"
            }
          ]
        },
        "verificationStatus" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
              "code" : "confirmed",
              "display" : "Confirmed"
            }
          ]
        },
        "category" : [
          {
            "coding" : [
              {
                "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
                "code" : "problem-list-item",
                "display" : "Problem List Item"
              }
            ]
          }
        ],
        "code" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "314194001",
              "display" : "Diabetes mit Insulin und oraler Behandlung"
            }
          ]
        },
        "subject" : {
          "reference" : "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8",
          "display" : "Test Arnold"
        }
      }
    },
    {
      "fullUrl" : "urn:uuid:194cac84-0ee2-40b4-8dda-1866318d234c",
      "resource" : {
        "resourceType" : "Condition",
        "id" : "AtApsExampleBundle02-problem-4",
        "meta" : {
          "profile" : [
            "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-condition"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Condition_AtApsExampleBundle02-problem-4\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Condition AtApsExampleBundle02-problem-4</b></p><a name=\"AtApsExampleBundle02-problem-4\"> </a><a name=\"hcAtApsExampleBundle02-problem-4\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-aps-condition.html\">AT APS Condition</a></p></div><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-clinical active}\">Active</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-ver-status confirmed}\">Confirmed</span></p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-category problem-list-item}\">Problem List Item</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 710159007}\">Langfristige Einnahme eines Immunsuppressivums</span></p><p><b>subject</b>: <a href=\"Bundle-AtApsExample03Diabetes.html#urn-uuid-0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8\">Test Arnold</a></p></div>"
        },
        "clinicalStatus" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
              "code" : "active",
              "display" : "Active"
            }
          ]
        },
        "verificationStatus" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
              "code" : "confirmed",
              "display" : "Confirmed"
            }
          ]
        },
        "category" : [
          {
            "coding" : [
              {
                "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
                "code" : "problem-list-item",
                "display" : "Problem List Item"
              }
            ]
          }
        ],
        "code" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "710159007",
              "display" : "Langfristige Einnahme eines Immunsuppressivums"
            }
          ]
        },
        "subject" : {
          "reference" : "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8",
          "display" : "Test Arnold"
        }
      }
    },
    {
      "fullUrl" : "urn:uuid:9d1c0b74-20c1-4603-a95a-71e6a1dc8fde",
      "resource" : {
        "resourceType" : "Condition",
        "id" : "AtApsExampleBundle02-problem-5",
        "meta" : {
          "profile" : [
            "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-condition"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Condition_AtApsExampleBundle02-problem-5\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Condition AtApsExampleBundle02-problem-5</b></p><a name=\"AtApsExampleBundle02-problem-5\"> </a><a name=\"hcAtApsExampleBundle02-problem-5\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-aps-condition.html\">AT APS Condition</a></p></div><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-clinical active}\">Active</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-ver-status confirmed}\">Confirmed</span></p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-category problem-list-item}\">Problem List Item</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 38341003}\">Arterielle Hypertonie</span></p><p><b>subject</b>: <a href=\"Bundle-AtApsExample03Diabetes.html#urn-uuid-0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8\">Test Arnold</a></p></div>"
        },
        "clinicalStatus" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
              "code" : "active",
              "display" : "Active"
            }
          ]
        },
        "verificationStatus" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
              "code" : "confirmed",
              "display" : "Confirmed"
            }
          ]
        },
        "category" : [
          {
            "coding" : [
              {
                "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
                "code" : "problem-list-item",
                "display" : "Problem List Item"
              }
            ]
          }
        ],
        "code" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "38341003",
              "display" : "Arterielle Hypertonie"
            }
          ]
        },
        "subject" : {
          "reference" : "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8",
          "display" : "Test Arnold"
        }
      }
    },
    {
      "fullUrl" : "urn:uuid:b62c11b1-c478-4d04-ae6f-5f73543f2bb1",
      "resource" : {
        "resourceType" : "Condition",
        "id" : "AtApsExampleBundle02-problem-6",
        "meta" : {
          "profile" : [
            "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-condition"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Condition_AtApsExampleBundle02-problem-6\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Condition AtApsExampleBundle02-problem-6</b></p><a name=\"AtApsExampleBundle02-problem-6\"> </a><a name=\"hcAtApsExampleBundle02-problem-6\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-aps-condition.html\">AT APS Condition</a></p></div><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-clinical active}\">Active</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-ver-status confirmed}\">Confirmed</span></p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-category problem-list-item}\">Problem List Item</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 408570008}\">Karotis-Doppler-Sonographie normal</span></p><p><b>subject</b>: <a href=\"Bundle-AtApsExample03Diabetes.html#urn-uuid-0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8\">Test Arnold</a></p></div>"
        },
        "clinicalStatus" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
              "code" : "active",
              "display" : "Active"
            }
          ]
        },
        "verificationStatus" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
              "code" : "confirmed",
              "display" : "Confirmed"
            }
          ]
        },
        "category" : [
          {
            "coding" : [
              {
                "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
                "code" : "problem-list-item",
                "display" : "Problem List Item"
              }
            ]
          }
        ],
        "code" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "408570008",
              "display" : "Karotis-Doppler-Sonographie normal"
            }
          ]
        },
        "subject" : {
          "reference" : "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8",
          "display" : "Test Arnold"
        }
      }
    },
    {
      "fullUrl" : "urn:uuid:8d3a18fb-3610-4bfb-9aa4-1169cc6dd2dd",
      "resource" : {
        "resourceType" : "Condition",
        "id" : "AtApsExampleBundle02-problem-7",
        "meta" : {
          "profile" : [
            "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-condition"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Condition_AtApsExampleBundle02-problem-7\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Condition AtApsExampleBundle02-problem-7</b></p><a name=\"AtApsExampleBundle02-problem-7\"> </a><a name=\"hcAtApsExampleBundle02-problem-7\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-aps-condition.html\">AT APS Condition</a></p></div><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-clinical active}\">Active</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-ver-status confirmed}\">Confirmed</span></p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-category problem-list-item}\">Problem List Item</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 168938005}\">Koronarangiographie normal</span></p><p><b>subject</b>: <a href=\"Bundle-AtApsExample03Diabetes.html#urn-uuid-0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8\">Test Arnold</a></p></div>"
        },
        "clinicalStatus" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
              "code" : "active",
              "display" : "Active"
            }
          ]
        },
        "verificationStatus" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
              "code" : "confirmed",
              "display" : "Confirmed"
            }
          ]
        },
        "category" : [
          {
            "coding" : [
              {
                "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
                "code" : "problem-list-item",
                "display" : "Problem List Item"
              }
            ]
          }
        ],
        "code" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "168938005",
              "display" : "Koronarangiographie normal"
            }
          ]
        },
        "subject" : {
          "reference" : "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8",
          "display" : "Test Arnold"
        }
      }
    },
    {
      "fullUrl" : "urn:uuid:c5d400b1-b58b-41ed-9776-cfcdaf48f2e6",
      "resource" : {
        "resourceType" : "Condition",
        "id" : "AtApsExampleBundle02-problem-8",
        "meta" : {
          "profile" : [
            "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-condition"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Condition_AtApsExampleBundle02-problem-8\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Condition AtApsExampleBundle02-problem-8</b></p><a name=\"AtApsExampleBundle02-problem-8\"> </a><a name=\"hcAtApsExampleBundle02-problem-8\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-aps-condition.html\">AT APS Condition</a></p></div><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-clinical active}\">Active</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-ver-status confirmed}\">Confirmed</span></p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-category problem-list-item}\">Problem List Item</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 328941000119101}\">Langfristige aktuelle Anwendung von Bisphosphonaten</span></p><p><b>subject</b>: <a href=\"Bundle-AtApsExample03Diabetes.html#urn-uuid-0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8\">Test Arnold</a></p><p><b>onset</b>: 2020-06 --&gt; 2025-03</p></div>"
        },
        "clinicalStatus" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
              "code" : "active",
              "display" : "Active"
            }
          ]
        },
        "verificationStatus" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
              "code" : "confirmed",
              "display" : "Confirmed"
            }
          ]
        },
        "category" : [
          {
            "coding" : [
              {
                "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
                "code" : "problem-list-item",
                "display" : "Problem List Item"
              }
            ]
          }
        ],
        "code" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "328941000119101",
              "display" : "Langfristige aktuelle Anwendung von Bisphosphonaten"
            }
          ]
        },
        "subject" : {
          "reference" : "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8",
          "display" : "Test Arnold"
        },
        "onsetPeriod" : {
          "start" : "2020-06",
          "end" : "2025-03"
        }
      }
    },
    {
      "fullUrl" : "urn:uuid:32d90aaa-6577-4c5d-9771-d8f606ebf0b9",
      "resource" : {
        "resourceType" : "Condition",
        "id" : "AtApsExampleBundle02-problem-9",
        "meta" : {
          "profile" : [
            "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-condition"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Condition_AtApsExampleBundle02-problem-9\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Condition AtApsExampleBundle02-problem-9</b></p><a name=\"AtApsExampleBundle02-problem-9\"> </a><a name=\"hcAtApsExampleBundle02-problem-9\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-aps-condition.html\">AT APS Condition</a></p></div><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-clinical active}\">Active</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-ver-status confirmed}\">Confirmed</span></p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-category problem-list-item}\">Problem List Item</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 440028005}\">Dauerhaftes Vorhofflimmern</span></p><p><b>subject</b>: <a href=\"Bundle-AtApsExample03Diabetes.html#urn-uuid-0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8\">Test Arnold</a></p></div>"
        },
        "clinicalStatus" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
              "code" : "active",
              "display" : "Active"
            }
          ]
        },
        "verificationStatus" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
              "code" : "confirmed",
              "display" : "Confirmed"
            }
          ]
        },
        "category" : [
          {
            "coding" : [
              {
                "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
                "code" : "problem-list-item",
                "display" : "Problem List Item"
              }
            ]
          }
        ],
        "code" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "440028005",
              "display" : "Dauerhaftes Vorhofflimmern"
            }
          ]
        },
        "subject" : {
          "reference" : "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8",
          "display" : "Test Arnold"
        }
      }
    },
    {
      "fullUrl" : "urn:uuid:2040058f-9537-4b26-9367-5ca5ac0ddb58",
      "resource" : {
        "resourceType" : "Condition",
        "id" : "AtApsExampleBundle02-problem-10",
        "meta" : {
          "profile" : [
            "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-condition"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Condition_AtApsExampleBundle02-problem-10\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Condition AtApsExampleBundle02-problem-10</b></p><a name=\"AtApsExampleBundle02-problem-10\"> </a><a name=\"hcAtApsExampleBundle02-problem-10\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-aps-condition.html\">AT APS Condition</a></p></div><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-clinical active}\">Active</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-ver-status confirmed}\">Confirmed</span></p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-category problem-list-item}\">Problem List Item</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 735623008}\">Albuminurie Grad A2</span></p><p><b>subject</b>: <a href=\"Bundle-AtApsExample03Diabetes.html#urn-uuid-0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8\">Test Arnold</a></p></div>"
        },
        "clinicalStatus" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
              "code" : "active",
              "display" : "Active"
            }
          ]
        },
        "verificationStatus" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
              "code" : "confirmed",
              "display" : "Confirmed"
            }
          ]
        },
        "category" : [
          {
            "coding" : [
              {
                "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
                "code" : "problem-list-item",
                "display" : "Problem List Item"
              }
            ]
          }
        ],
        "code" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "735623008",
              "display" : "Albuminurie Grad A2"
            }
          ]
        },
        "subject" : {
          "reference" : "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8",
          "display" : "Test Arnold"
        }
      }
    },
    {
      "fullUrl" : "urn:uuid:b7b2a10d-7295-4fd1-ad21-81bca78dc45a",
      "resource" : {
        "resourceType" : "Condition",
        "id" : "AtApsExampleBundle02-problem-11",
        "meta" : {
          "profile" : [
            "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-condition"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Condition_AtApsExampleBundle02-problem-11\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Condition AtApsExampleBundle02-problem-11</b></p><a name=\"AtApsExampleBundle02-problem-11\"> </a><a name=\"hcAtApsExampleBundle02-problem-11\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-aps-condition.html\">AT APS Condition</a></p></div><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-clinical active}\">Active</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-ver-status confirmed}\">Confirmed</span></p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-category problem-list-item}\">Problem List Item</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 239792003}\">Seronegative rheumatoide Arthritis</span></p><p><b>subject</b>: <a href=\"Bundle-AtApsExample03Diabetes.html#urn-uuid-0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8\">Test Arnold</a></p></div>"
        },
        "clinicalStatus" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
              "code" : "active",
              "display" : "Active"
            }
          ]
        },
        "verificationStatus" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
              "code" : "confirmed",
              "display" : "Confirmed"
            }
          ]
        },
        "category" : [
          {
            "coding" : [
              {
                "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
                "code" : "problem-list-item",
                "display" : "Problem List Item"
              }
            ]
          }
        ],
        "code" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "239792003",
              "display" : "Seronegative rheumatoide Arthritis"
            }
          ]
        },
        "subject" : {
          "reference" : "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8",
          "display" : "Test Arnold"
        }
      }
    },
    {
      "fullUrl" : "urn:uuid:ebfb60a8-a753-459d-a796-a191a4dbd91d",
      "resource" : {
        "resourceType" : "Condition",
        "id" : "AtApsExampleBundle02-problem-12",
        "meta" : {
          "profile" : [
            "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-condition"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Condition_AtApsExampleBundle02-problem-12\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Condition AtApsExampleBundle02-problem-12</b></p><a name=\"AtApsExampleBundle02-problem-12\"> </a><a name=\"hcAtApsExampleBundle02-problem-12\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-aps-condition.html\">AT APS Condition</a></p></div><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-clinical active}\">Active</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-ver-status confirmed}\">Confirmed</span></p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-category problem-list-item}\">Problem List Item</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 13644009}\">Hypercholesterinämie</span></p><p><b>subject</b>: <a href=\"Bundle-AtApsExample03Diabetes.html#urn-uuid-0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8\">Test Arnold</a></p></div>"
        },
        "clinicalStatus" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
              "code" : "active",
              "display" : "Active"
            }
          ]
        },
        "verificationStatus" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
              "code" : "confirmed",
              "display" : "Confirmed"
            }
          ]
        },
        "category" : [
          {
            "coding" : [
              {
                "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
                "code" : "problem-list-item",
                "display" : "Problem List Item"
              }
            ]
          }
        ],
        "code" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "13644009",
              "display" : "Hypercholesterinämie"
            }
          ]
        },
        "subject" : {
          "reference" : "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8",
          "display" : "Test Arnold"
        }
      }
    },
    {
      "fullUrl" : "urn:uuid:3f3140b1-9478-4491-b7bf-10560f38da0e",
      "resource" : {
        "resourceType" : "Condition",
        "id" : "AtApsExampleBundle02-problem-13",
        "meta" : {
          "profile" : [
            "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-condition"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Condition_AtApsExampleBundle02-problem-13\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Condition AtApsExampleBundle02-problem-13</b></p><a name=\"AtApsExampleBundle02-problem-13\"> </a><a name=\"hcAtApsExampleBundle02-problem-13\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-aps-condition.html\">AT APS Condition</a></p></div><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-clinical active}\">Active</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-ver-status confirmed}\">Confirmed</span></p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-category problem-list-item}\">Problem List Item</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 160303001}\">Diabetes mellitus in der Familienanamnese</span></p><p><b>subject</b>: <a href=\"Bundle-AtApsExample03Diabetes.html#urn-uuid-0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8\">Test Arnold</a></p></div>"
        },
        "clinicalStatus" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
              "code" : "active",
              "display" : "Active"
            }
          ]
        },
        "verificationStatus" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
              "code" : "confirmed",
              "display" : "Confirmed"
            }
          ]
        },
        "category" : [
          {
            "coding" : [
              {
                "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
                "code" : "problem-list-item",
                "display" : "Problem List Item"
              }
            ]
          }
        ],
        "code" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "160303001",
              "display" : "Diabetes mellitus in der Familienanamnese"
            }
          ]
        },
        "subject" : {
          "reference" : "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8",
          "display" : "Test Arnold"
        }
      }
    },
    {
      "fullUrl" : "urn:uuid:caa77334-fbfc-4129-a101-1b01c595dd91",
      "resource" : {
        "resourceType" : "Condition",
        "id" : "AtApsExampleBundle02-problem-14",
        "meta" : {
          "profile" : [
            "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-condition"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Condition_AtApsExampleBundle02-problem-14\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Condition AtApsExampleBundle02-problem-14</b></p><a name=\"AtApsExampleBundle02-problem-14\"> </a><a name=\"hcAtApsExampleBundle02-problem-14\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-aps-condition.html\">AT APS Condition</a></p></div><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-clinical active}\">Active</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-ver-status confirmed}\">Confirmed</span></p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-category problem-list-item}\">Problem List Item</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 312824007}\">Familienanamnese: Kolonkarzinom</span></p><p><b>subject</b>: <a href=\"Bundle-AtApsExample03Diabetes.html#urn-uuid-0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8\">Test Arnold</a></p></div>"
        },
        "clinicalStatus" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
              "code" : "active",
              "display" : "Active"
            }
          ]
        },
        "verificationStatus" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
              "code" : "confirmed",
              "display" : "Confirmed"
            }
          ]
        },
        "category" : [
          {
            "coding" : [
              {
                "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
                "code" : "problem-list-item",
                "display" : "Problem List Item"
              }
            ]
          }
        ],
        "code" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "312824007",
              "display" : "Familienanamnese: Kolonkarzinom"
            }
          ]
        },
        "subject" : {
          "reference" : "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8",
          "display" : "Test Arnold"
        }
      }
    },
    {
      "fullUrl" : "urn:uuid:e66d8ac1-a124-4e94-be22-969c9b117ce5",
      "resource" : {
        "resourceType" : "Condition",
        "id" : "AtApsExampleBundle02-problem-15",
        "meta" : {
          "profile" : [
            "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-condition"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Condition_AtApsExampleBundle02-problem-15\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Condition AtApsExampleBundle02-problem-15</b></p><a name=\"AtApsExampleBundle02-problem-15\"> </a><a name=\"hcAtApsExampleBundle02-problem-15\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-aps-condition.html\">AT APS Condition</a></p></div><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-clinical active}\">Active</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-ver-status confirmed}\">Confirmed</span></p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-category problem-list-item}\">Problem List Item</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 134439009}\">Familienanamnese: vorzeitige koronare Herzkrankheit</span></p><p><b>subject</b>: <a href=\"Bundle-AtApsExample03Diabetes.html#urn-uuid-0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8\">Test Arnold</a></p></div>"
        },
        "clinicalStatus" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
              "code" : "active",
              "display" : "Active"
            }
          ]
        },
        "verificationStatus" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
              "code" : "confirmed",
              "display" : "Confirmed"
            }
          ]
        },
        "category" : [
          {
            "coding" : [
              {
                "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
                "code" : "problem-list-item",
                "display" : "Problem List Item"
              }
            ]
          }
        ],
        "code" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "134439009",
              "display" : "Familienanamnese: vorzeitige koronare Herzkrankheit"
            }
          ]
        },
        "subject" : {
          "reference" : "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8",
          "display" : "Test Arnold"
        }
      }
    },
    {
      "fullUrl" : "urn:uuid:5ab717ff-c0a0-409e-83db-0fa6f8619f68",
      "resource" : {
        "resourceType" : "Condition",
        "id" : "AtApsExampleBundle02-problem-16",
        "meta" : {
          "profile" : [
            "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-condition"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Condition_AtApsExampleBundle02-problem-16\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Condition AtApsExampleBundle02-problem-16</b></p><a name=\"AtApsExampleBundle02-problem-16\"> </a><a name=\"hcAtApsExampleBundle02-problem-16\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-aps-condition.html\">AT APS Condition</a></p></div><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-clinical active}\">Active</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-ver-status confirmed}\">Confirmed</span></p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-category problem-list-item}\">Problem List Item</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 160314003}\">Hypercholesterinämie in der Familienanamnese</span></p><p><b>subject</b>: <a href=\"Bundle-AtApsExample03Diabetes.html#urn-uuid-0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8\">Test Arnold</a></p></div>"
        },
        "clinicalStatus" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
              "code" : "active",
              "display" : "Active"
            }
          ]
        },
        "verificationStatus" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
              "code" : "confirmed",
              "display" : "Confirmed"
            }
          ]
        },
        "category" : [
          {
            "coding" : [
              {
                "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
                "code" : "problem-list-item",
                "display" : "Problem List Item"
              }
            ]
          }
        ],
        "code" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "160314003",
              "display" : "Hypercholesterinämie in der Familienanamnese"
            }
          ]
        },
        "subject" : {
          "reference" : "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8",
          "display" : "Test Arnold"
        }
      }
    },
    {
      "fullUrl" : "urn:uuid:fa46fccb-5c24-4a40-a478-d6da4902ff33",
      "resource" : {
        "resourceType" : "Condition",
        "id" : "AtApsExampleBundle02-problem-17",
        "meta" : {
          "profile" : [
            "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-condition"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Condition_AtApsExampleBundle02-problem-17\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Condition AtApsExampleBundle02-problem-17</b></p><a name=\"AtApsExampleBundle02-problem-17\"> </a><a name=\"hcAtApsExampleBundle02-problem-17\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-aps-condition.html\">AT APS Condition</a></p></div><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-clinical inactive}\">Inactive</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-ver-status provisional}\">Provisional</span></p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-category problem-list-item}\">Problem List Item</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 2556008}\">Parodontalerkrankung</span></p><p><b>subject</b>: <a href=\"Bundle-AtApsExample03Diabetes.html#urn-uuid-0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8\">Test Arnold</a></p><h3>Stages</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Assessment</b></td></tr><tr><td style=\"display: none\">*</td><td><a href=\"Bundle-AtApsExample03Diabetes.html#urn-uuid-f235c566-01aa-457d-ab49-9e422df69863\">AtApsExampleBundle02-problem-17-assessment-1</a></td></tr></table></div>"
        },
        "clinicalStatus" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
              "code" : "inactive",
              "display" : "Inactive"
            }
          ]
        },
        "verificationStatus" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
              "code" : "provisional",
              "display" : "Provisional"
            }
          ]
        },
        "category" : [
          {
            "coding" : [
              {
                "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
                "code" : "problem-list-item",
                "display" : "Problem List Item"
              }
            ]
          }
        ],
        "code" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "2556008",
              "display" : "Parodontalerkrankung"
            }
          ]
        },
        "subject" : {
          "reference" : "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8",
          "display" : "Test Arnold"
        },
        "stage" : [
          {
            "assessment" : [
              {
                "reference" : "urn:uuid:f235c566-01aa-457d-ab49-9e422df69863",
                "display" : "AtApsExampleBundle02-problem-17-assessment-1"
              }
            ]
          }
        ]
      }
    },
    {
      "fullUrl" : "urn:uuid:f235c566-01aa-457d-ab49-9e422df69863",
      "resource" : {
        "resourceType" : "Observation",
        "id" : "AtApsExampleBundle02-problem-17-assessment-1",
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_AtApsExampleBundle02-problem-17-assessment-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation AtApsExampleBundle02-problem-17-assessment-1</b></p><a name=\"AtApsExampleBundle02-problem-17-assessment-1\"> </a><a name=\"hcAtApsExampleBundle02-problem-17-assessment-1\"> </a><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category exam}\">Exam</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 1237049003}\">Bewertung der Risikofaktoren für Parodontalerkrankungen</span></p><p><b>subject</b>: <a href=\"Bundle-AtApsExample03Diabetes.html#urn-uuid-0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8\">Test Arnold</a></p><p><b>effective</b>: 2024-02-08 08:30:00+0100</p><p><b>performer</b>: <a href=\"Bundle-AtApsExample03Diabetes.html#urn-uuid-82f802a7-56a9-49b4-a675-95da08f0d7a6\">Amadeus Spital - Labor</a></p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 723509005}\">Hohes Risiko</span></p></div>"
        },
        "status" : "final",
        "category" : [
          {
            "coding" : [
              {
                "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
                "code" : "exam",
                "display" : "Exam"
              }
            ]
          }
        ],
        "code" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "1237049003",
              "display" : "Bewertung der Risikofaktoren für Parodontalerkrankungen"
            }
          ]
        },
        "subject" : {
          "reference" : "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8",
          "display" : "Test Arnold"
        },
        "effectiveDateTime" : "2024-02-08T08:30:00+01:00",
        "performer" : [
          {
            "reference" : "urn:uuid:82f802a7-56a9-49b4-a675-95da08f0d7a6",
            "display" : "Amadeus Spital - Labor"
          }
        ],
        "valueCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "723509005",
              "display" : "Hohes Risiko"
            }
          ]
        }
      }
    },
    {
      "fullUrl" : "urn:uuid:acac4c94-a752-4cf5-9a6b-0d84237d5076",
      "resource" : {
        "resourceType" : "MedicationStatement",
        "id" : "AtApsExampleBundle02-medication-summary-1",
        "meta" : {
          "profile" : [
            "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-medicationstatement"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationStatement_AtApsExampleBundle02-medication-summary-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationStatement AtApsExampleBundle02-medication-summary-1</b></p><a name=\"AtApsExampleBundle02-medication-summary-1\"> </a><a name=\"hcAtApsExampleBundle02-medication-summary-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-aps-medicationstatement.html\">AT APS MedicationStatement</a></p></div><p><b>status</b>: Active</p><p><b>medication</b>: <span title=\"Codes:{https://termgit.elga.gv.at/CodeSystem/asp-liste 2443061}\">EBETREXAT TBL 10MG</span></p><p><b>subject</b>: <a href=\"Bundle-AtApsExample03Diabetes.html#urn-uuid-0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8\">Test Arnold</a></p><p><b>effective</b>: 2024-02-08 10:31:58+0200 --&gt; (ongoing)</p><blockquote><p><b>dosage</b></p><p><b>sequence</b>: 1</p><p><b>timing</b>: Night, Once</p><p><b>route</b>: <span title=\"Codes:{http://snomed.info/sct 26643006}\">Oraler Verabreichungsweg</span></p><h3>DoseAndRates</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Dose[x]</b></td></tr><tr><td style=\"display: none\">*</td><td>2 Tablet<span style=\"background: LightGoldenRodYellow\"> (Details: elga-medikationmengenart  code{TAB} = '{TAB}')</span></td></tr></table></blockquote></div>"
        },
        "status" : "active",
        "medicationCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://termgit.elga.gv.at/CodeSystem/asp-liste",
              "code" : "2443061",
              "display" : "EBETREXAT TBL 10MG"
            }
          ]
        },
        "subject" : {
          "reference" : "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8",
          "display" : "Test Arnold"
        },
        "effectivePeriod" : {
          "start" : "2024-02-08T10:31:58+02:00"
        },
        "dosage" : [
          {
            "sequence" : 1,
            "timing" : {
              "repeat" : {
                "dayOfWeek" : ["fri"],
                "when" : ["NIGHT"]
              }
            },
            "route" : {
              "coding" : [
                {
                  "system" : "http://snomed.info/sct",
                  "code" : "26643006",
                  "display" : "Oraler Verabreichungsweg"
                }
              ]
            },
            "doseAndRate" : [
              {
                "doseQuantity" : {
                  "value" : 2,
                  "unit" : "Tablet",
                  "system" : "https://termgit.elga.gv.at/ValueSet/elga-medikationmengenart",
                  "code" : "{TAB}"
                }
              }
            ]
          }
        ]
      }
    },
    {
      "fullUrl" : "urn:uuid:98285578-0bb6-42b2-908c-5bcc5e3992e0",
      "resource" : {
        "resourceType" : "MedicationStatement",
        "id" : "AtApsExampleBundle02-medication-summary-2",
        "meta" : {
          "profile" : [
            "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-medicationstatement"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationStatement_AtApsExampleBundle02-medication-summary-2\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationStatement AtApsExampleBundle02-medication-summary-2</b></p><a name=\"AtApsExampleBundle02-medication-summary-2\"> </a><a name=\"hcAtApsExampleBundle02-medication-summary-2\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-aps-medicationstatement.html\">AT APS MedicationStatement</a></p></div><p><b>status</b>: Active</p><p><b>medication</b>: <span title=\"Codes:{https://termgit.elga.gv.at/CodeSystem/asp-liste 3779722}\">ELIQUIS FTBL 2,5MG</span></p><p><b>subject</b>: <a href=\"Bundle-AtApsExample03Diabetes.html#urn-uuid-0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8\">Test Arnold</a></p><p><b>effective</b>: 2024-02-08 10:31:58+0200 --&gt; (ongoing)</p><h3>Dosages</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Text</b></td></tr><tr><td style=\"display: none\">*</td><td>S:1-0-0-1</td></tr></table></div>"
        },
        "status" : "active",
        "medicationCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://termgit.elga.gv.at/CodeSystem/asp-liste",
              "code" : "3779722",
              "display" : "ELIQUIS FTBL 2,5MG"
            }
          ]
        },
        "subject" : {
          "reference" : "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8",
          "display" : "Test Arnold"
        },
        "effectivePeriod" : {
          "start" : "2024-02-08T10:31:58+02:00"
        },
        "dosage" : [
          {
            "text" : "S:1-0-0-1"
          }
        ]
      }
    },
    {
      "fullUrl" : "urn:uuid:769a289d-a518-469a-8100-7943550e359f",
      "resource" : {
        "resourceType" : "MedicationStatement",
        "id" : "AtApsExampleBundle02-medication-summary-3",
        "meta" : {
          "profile" : [
            "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-medicationstatement"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationStatement_AtApsExampleBundle02-medication-summary-3\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationStatement AtApsExampleBundle02-medication-summary-3</b></p><a name=\"AtApsExampleBundle02-medication-summary-3\"> </a><a name=\"hcAtApsExampleBundle02-medication-summary-3\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-aps-medicationstatement.html\">AT APS MedicationStatement</a></p></div><p><b>status</b>: Active</p><p><b>medication</b>: <span title=\"Codes:{https://termgit.elga.gv.at/CodeSystem/asp-liste 3910895}\">FORXIGA FTBL 10MG</span></p><p><b>subject</b>: <a href=\"Bundle-AtApsExample03Diabetes.html#urn-uuid-0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8\">Test Arnold</a></p><p><b>effective</b>: 2024-02-08 10:31:58+0200 --&gt; (ongoing)</p><h3>Dosages</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Text</b></td></tr><tr><td style=\"display: none\">*</td><td>S:1-0-0-0</td></tr></table></div>"
        },
        "status" : "active",
        "medicationCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://termgit.elga.gv.at/CodeSystem/asp-liste",
              "code" : "3910895",
              "display" : "FORXIGA FTBL 10MG"
            }
          ]
        },
        "subject" : {
          "reference" : "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8",
          "display" : "Test Arnold"
        },
        "effectivePeriod" : {
          "start" : "2024-02-08T10:31:58+02:00"
        },
        "dosage" : [
          {
            "text" : "S:1-0-0-0"
          }
        ]
      }
    },
    {
      "fullUrl" : "urn:uuid:9cb3b3df-7b15-4270-af39-5f2f819e692e",
      "resource" : {
        "resourceType" : "MedicationStatement",
        "id" : "AtApsExampleBundle02-medication-summary-4",
        "meta" : {
          "profile" : [
            "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-medicationstatement"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationStatement_AtApsExampleBundle02-medication-summary-4\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationStatement AtApsExampleBundle02-medication-summary-4</b></p><a name=\"AtApsExampleBundle02-medication-summary-4\"> </a><a name=\"hcAtApsExampleBundle02-medication-summary-4\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-aps-medicationstatement.html\">AT APS MedicationStatement</a></p></div><p><b>status</b>: Active</p><p><b>medication</b>: <span title=\"Codes:{https://termgit.elga.gv.at/CodeSystem/asp-liste 4476685}\">GEROFOL TBL 5MG</span></p><p><b>subject</b>: <a href=\"Bundle-AtApsExample03Diabetes.html#urn-uuid-0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8\">Test Arnold</a></p><p><b>effective</b>: 2024-02-08 10:31:58+0200 --&gt; (ongoing)</p><h3>Dosages</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Text</b></td></tr><tr><td style=\"display: none\">*</td><td>S:MO, MI</td></tr></table></div>"
        },
        "status" : "active",
        "medicationCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://termgit.elga.gv.at/CodeSystem/asp-liste",
              "code" : "4476685",
              "display" : "GEROFOL TBL 5MG"
            }
          ]
        },
        "subject" : {
          "reference" : "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8",
          "display" : "Test Arnold"
        },
        "effectivePeriod" : {
          "start" : "2024-02-08T10:31:58+02:00"
        },
        "dosage" : [
          {
            "text" : "S:MO, MI"
          }
        ]
      }
    },
    {
      "fullUrl" : "urn:uuid:da89fd22-0d4f-4220-a625-b9ddf5eb330d",
      "resource" : {
        "resourceType" : "MedicationStatement",
        "id" : "AtApsExampleBundle02-medication-summary-5",
        "meta" : {
          "profile" : [
            "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-medicationstatement"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationStatement_AtApsExampleBundle02-medication-summary-5\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationStatement AtApsExampleBundle02-medication-summary-5</b></p><a name=\"AtApsExampleBundle02-medication-summary-5\"> </a><a name=\"hcAtApsExampleBundle02-medication-summary-5\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-aps-medicationstatement.html\">AT APS MedicationStatement</a></p></div><p><b>status</b>: Active</p><p><b>medication</b>: <span title=\"Codes:{https://termgit.elga.gv.at/CodeSystem/asp-liste 3780576}\">IBANDRONSAEURE SAN FSPR 3MG</span></p><p><b>subject</b>: <a href=\"Bundle-AtApsExample03Diabetes.html#urn-uuid-0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8\">Test Arnold</a></p><p><b>effective</b>: 2024-02-08 10:31:58+0200 --&gt; (ongoing)</p><h3>Dosages</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Text</b></td></tr><tr><td style=\"display: none\">*</td><td>S:0,33/Monat, alle 3 Monate</td></tr></table></div>"
        },
        "status" : "active",
        "medicationCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://termgit.elga.gv.at/CodeSystem/asp-liste",
              "code" : "3780576",
              "display" : "IBANDRONSAEURE SAN FSPR 3MG"
            }
          ]
        },
        "subject" : {
          "reference" : "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8",
          "display" : "Test Arnold"
        },
        "effectivePeriod" : {
          "start" : "2024-02-08T10:31:58+02:00"
        },
        "dosage" : [
          {
            "text" : "S:0,33/Monat, alle 3 Monate"
          }
        ]
      }
    },
    {
      "fullUrl" : "urn:uuid:e526f7e5-2f76-484e-acde-d6f2365f0859",
      "resource" : {
        "resourceType" : "MedicationStatement",
        "id" : "AtApsExampleBundle02-medication-summary-6",
        "meta" : {
          "profile" : [
            "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-medicationstatement"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationStatement_AtApsExampleBundle02-medication-summary-6\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationStatement AtApsExampleBundle02-medication-summary-6</b></p><a name=\"AtApsExampleBundle02-medication-summary-6\"> </a><a name=\"hcAtApsExampleBundle02-medication-summary-6\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-aps-medicationstatement.html\">AT APS MedicationStatement</a></p></div><p><b>status</b>: Active</p><p><b>medication</b>: <span title=\"Codes:{https://termgit.elga.gv.at/CodeSystem/asp-liste 1294446}\">METFORMIN HEX FTBL  500MG</span></p><p><b>subject</b>: <a href=\"Bundle-AtApsExample03Diabetes.html#urn-uuid-0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8\">Test Arnold</a></p><p><b>effective</b>: 2024-02-08 10:31:58+0200 --&gt; (ongoing)</p><h3>Dosages</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Text</b></td></tr><tr><td style=\"display: none\">*</td><td>S:1-0-0-1</td></tr></table></div>"
        },
        "status" : "active",
        "medicationCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://termgit.elga.gv.at/CodeSystem/asp-liste",
              "code" : "1294446",
              "display" : "METFORMIN HEX FTBL  500MG"
            }
          ]
        },
        "subject" : {
          "reference" : "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8",
          "display" : "Test Arnold"
        },
        "effectivePeriod" : {
          "start" : "2024-02-08T10:31:58+02:00"
        },
        "dosage" : [
          {
            "text" : "S:1-0-0-1"
          }
        ]
      }
    },
    {
      "fullUrl" : "urn:uuid:6d15d84f-2faf-4141-ac0c-fb9cf8496abe",
      "resource" : {
        "resourceType" : "MedicationStatement",
        "id" : "AtApsExampleBundle02-medication-summary-7",
        "meta" : {
          "profile" : [
            "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-medicationstatement"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationStatement_AtApsExampleBundle02-medication-summary-7\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationStatement AtApsExampleBundle02-medication-summary-7</b></p><a name=\"AtApsExampleBundle02-medication-summary-7\"> </a><a name=\"hcAtApsExampleBundle02-medication-summary-7\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-aps-medicationstatement.html\">AT APS MedicationStatement</a></p></div><p><b>status</b>: Active</p><p><b>medication</b>: <span title=\"Codes:{https://termgit.elga.gv.at/CodeSystem/asp-liste 2450888}\">RAMIPRIL 1A TBL  5MG</span></p><p><b>subject</b>: <a href=\"Bundle-AtApsExample03Diabetes.html#urn-uuid-0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8\">Test Arnold</a></p><p><b>effective</b>: 2024-02-08 10:31:58+0200 --&gt; (ongoing)</p><h3>Dosages</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Text</b></td></tr><tr><td style=\"display: none\">*</td><td>S:1-0-0-0</td></tr></table></div>"
        },
        "status" : "active",
        "medicationCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://termgit.elga.gv.at/CodeSystem/asp-liste",
              "code" : "2450888",
              "display" : "RAMIPRIL 1A TBL  5MG"
            }
          ]
        },
        "subject" : {
          "reference" : "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8",
          "display" : "Test Arnold"
        },
        "effectivePeriod" : {
          "start" : "2024-02-08T10:31:58+02:00"
        },
        "dosage" : [
          {
            "text" : "S:1-0-0-0"
          }
        ]
      }
    },
    {
      "fullUrl" : "urn:uuid:ecf9728f-fa50-4b46-b8f7-7768174df72a",
      "resource" : {
        "resourceType" : "MedicationStatement",
        "id" : "AtApsExampleBundle02-medication-summary-8",
        "meta" : {
          "profile" : [
            "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-medicationstatement"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationStatement_AtApsExampleBundle02-medication-summary-8\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationStatement AtApsExampleBundle02-medication-summary-8</b></p><a name=\"AtApsExampleBundle02-medication-summary-8\"> </a><a name=\"hcAtApsExampleBundle02-medication-summary-8\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-aps-medicationstatement.html\">AT APS MedicationStatement</a></p></div><p><b>status</b>: Active</p><p><b>medication</b>: <span title=\"Codes:{https://termgit.elga.gv.at/CodeSystem/asp-liste 4466132}\">ROSUVASTATIN 1A FTBL 10MG</span></p><p><b>subject</b>: <a href=\"Bundle-AtApsExample03Diabetes.html#urn-uuid-0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8\">Test Arnold</a></p><p><b>effective</b>: 2024-02-08 10:31:58+0200 --&gt; (ongoing)</p></div>"
        },
        "status" : "active",
        "medicationCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://termgit.elga.gv.at/CodeSystem/asp-liste",
              "code" : "4466132",
              "display" : "ROSUVASTATIN 1A FTBL 10MG"
            }
          ]
        },
        "subject" : {
          "reference" : "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8",
          "display" : "Test Arnold"
        },
        "effectivePeriod" : {
          "start" : "2024-02-08T10:31:58+02:00"
        }
      }
    },
    {
      "fullUrl" : "urn:uuid:cf4b2e92-51e6-44de-9406-5406e66e9d45",
      "resource" : {
        "resourceType" : "MedicationStatement",
        "id" : "AtApsExampleBundle02-medication-summary-9",
        "meta" : {
          "profile" : [
            "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-medicationstatement"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"MedicationStatement_AtApsExampleBundle02-medication-summary-9\"> </a><p class=\"res-header-id\"><b>Generated Narrative: MedicationStatement AtApsExampleBundle02-medication-summary-9</b></p><a name=\"AtApsExampleBundle02-medication-summary-9\"> </a><a name=\"hcAtApsExampleBundle02-medication-summary-9\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-aps-medicationstatement.html\">AT APS MedicationStatement</a></p></div><p><b>status</b>: Active</p><p><b>medication</b>: <span title=\"Codes:{https://termgit.elga.gv.at/CodeSystem/asp-liste 4477087}\">SEMGLEE INJ 100E/ML FPEN 3ML</span></p><p><b>subject</b>: <a href=\"Bundle-AtApsExample03Diabetes.html#urn-uuid-0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8\">Test Arnold</a></p><p><b>effective</b>: 2024-02-08 10:31:58+0200 --&gt; (ongoing)</p><h3>Dosages</h3><table class=\"grid\"><tr><td style=\"display: none\">-</td><td><b>Text</b></td></tr><tr><td style=\"display: none\">*</td><td>S:0-0-0-10</td></tr></table></div>"
        },
        "status" : "active",
        "medicationCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://termgit.elga.gv.at/CodeSystem/asp-liste",
              "code" : "4477087",
              "display" : "SEMGLEE INJ 100E/ML FPEN 3ML"
            }
          ]
        },
        "subject" : {
          "reference" : "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8",
          "display" : "Test Arnold"
        },
        "effectivePeriod" : {
          "start" : "2024-02-08T10:31:58+02:00"
        },
        "dosage" : [
          {
            "text" : "S:0-0-0-10"
          }
        ]
      }
    },
    {
      "fullUrl" : "urn:uuid:768eb9cb-00f3-4ab1-bfc2-ff835cb3b89b",
      "resource" : {
        "resourceType" : "AllergyIntolerance",
        "id" : "AtApsExampleBundle02-allergy-1",
        "meta" : {
          "profile" : [
            "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-allergyintolerance"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"AllergyIntolerance_AtApsExampleBundle02-allergy-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: AllergyIntolerance AtApsExampleBundle02-allergy-1</b></p><a name=\"AtApsExampleBundle02-allergy-1\"> </a><a name=\"hcAtApsExampleBundle02-allergy-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-aps-allergyintolerance.html\">AT APS AllergyIntolerance</a></p></div><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical active}\">Active</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 128488006}\">Hausstaub</span></p><p><b>patient</b>: <a href=\"Bundle-AtApsExample03Diabetes.html#urn-uuid-0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8\">Test Arnold</a></p></div>"
        },
        "clinicalStatus" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/allergyintolerance-clinical",
              "code" : "active",
              "display" : "Active"
            }
          ]
        },
        "code" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "128488006",
              "display" : "Hausstaub"
            }
          ]
        },
        "patient" : {
          "reference" : "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8",
          "display" : "Test Arnold"
        }
      }
    },
    {
      "fullUrl" : "urn:uuid:75c46c35-8f4e-4232-b026-5672c60d076a",
      "resource" : {
        "resourceType" : "Procedure",
        "id" : "AtApsExampleBundle02-procedure-history-1",
        "meta" : {
          "profile" : [
            "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-procedure"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Procedure_AtApsExampleBundle02-procedure-history-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Procedure AtApsExampleBundle02-procedure-history-1</b></p><a name=\"AtApsExampleBundle02-procedure-history-1\"> </a><a name=\"hcAtApsExampleBundle02-procedure-history-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-aps-procedure.html\">AT APS Procedure</a></p></div><p><b>status</b>: Completed</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 770606008}\">Totalersatz des linken Hüftgelenks</span></p><p><b>subject</b>: <a href=\"Bundle-AtApsExample03Diabetes.html#urn-uuid-0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8\">Test Arnold</a></p><p><b>performed</b>: 2010</p></div>"
        },
        "status" : "completed",
        "code" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "770606008",
              "display" : "Totalersatz des linken Hüftgelenks"
            }
          ]
        },
        "subject" : {
          "reference" : "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8",
          "display" : "Test Arnold"
        },
        "performedDateTime" : "2010"
      }
    },
    {
      "fullUrl" : "urn:uuid:8103f99c-64f0-4dd5-b92e-5c9680c91e47",
      "resource" : {
        "resourceType" : "Procedure",
        "id" : "AtApsExampleBundle02-procedure-history-2",
        "meta" : {
          "profile" : [
            "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-procedure"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Procedure_AtApsExampleBundle02-procedure-history-2\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Procedure AtApsExampleBundle02-procedure-history-2</b></p><a name=\"AtApsExampleBundle02-procedure-history-2\"> </a><a name=\"hcAtApsExampleBundle02-procedure-history-2\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-aps-procedure.html\">AT APS Procedure</a></p></div><p><b>status</b>: Completed</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 80146002}\">Appendektomie</span></p><p><b>subject</b>: <a href=\"Bundle-AtApsExample03Diabetes.html#urn-uuid-0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8\">Test Arnold</a></p><p><b>performed</b>: 1962</p></div>"
        },
        "status" : "completed",
        "code" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "80146002",
              "display" : "Appendektomie"
            }
          ]
        },
        "subject" : {
          "reference" : "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8",
          "display" : "Test Arnold"
        },
        "performedDateTime" : "1962"
      }
    },
    {
      "fullUrl" : "urn:uuid:8a825f17-1599-4928-b384-0ca4a62daba8",
      "resource" : {
        "resourceType" : "Procedure",
        "id" : "AtApsExampleBundle02-procedure-history-3",
        "meta" : {
          "profile" : [
            "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-procedure"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Procedure_AtApsExampleBundle02-procedure-history-3\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Procedure AtApsExampleBundle02-procedure-history-3</b></p><a name=\"AtApsExampleBundle02-procedure-history-3\"> </a><a name=\"hcAtApsExampleBundle02-procedure-history-3\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-aps-procedure.html\">AT APS Procedure</a></p></div><p><b>status</b>: Completed</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 73761001}\">Koloskopie</span></p><p><b>subject</b>: <a href=\"Bundle-AtApsExample03Diabetes.html#urn-uuid-0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8\">Test Arnold</a></p><p><b>performed</b>: 2014</p></div>"
        },
        "status" : "completed",
        "code" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "73761001",
              "display" : "Koloskopie"
            }
          ]
        },
        "subject" : {
          "reference" : "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8",
          "display" : "Test Arnold"
        },
        "performedDateTime" : "2014"
      }
    },
    {
      "fullUrl" : "urn:uuid:5218bc54-5d55-42fa-aa0c-169b61577ad0",
      "resource" : {
        "resourceType" : "Specimen",
        "id" : "AtApsExampleBundle02-diagnostic-specimen-1",
        "meta" : {
          "profile" : [
            "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-specimen"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Specimen_AtApsExampleBundle02-diagnostic-specimen-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Specimen AtApsExampleBundle02-diagnostic-specimen-1</b></p><a name=\"AtApsExampleBundle02-diagnostic-specimen-1\"> </a><a name=\"hcAtApsExampleBundle02-diagnostic-specimen-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-aps-specimen.html\">AT APS Specimen</a></p></div><p><b>status</b>: Unavailable</p><p><b>type</b>: <span title=\"Codes:{http://snomed.info/sct 119297000}\">Blutprobe</span></p><p><b>subject</b>: <a href=\"Bundle-AtApsExample03Diabetes.html#urn-uuid-0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8\">Test Arnold</a></p></div>"
        },
        "status" : "unavailable",
        "type" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "119297000",
              "display" : "Blutprobe"
            }
          ]
        },
        "subject" : {
          "reference" : "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8",
          "display" : "Test Arnold"
        }
      }
    },
    {
      "fullUrl" : "urn:uuid:725bcf71-22e6-473b-a879-49a4b63cd654",
      "resource" : {
        "resourceType" : "Observation",
        "id" : "AtApsExampleBundle02-diagnostic-result-1",
        "meta" : {
          "profile" : [
            "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observationresultslaboratorypathology"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_AtApsExampleBundle02-diagnostic-result-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation AtApsExampleBundle02-diagnostic-result-1</b></p><a name=\"AtApsExampleBundle02-diagnostic-result-1\"> </a><a name=\"hcAtApsExampleBundle02-diagnostic-result-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-aps-observationresultslaboratorypathology.html\">AT APS Observation Results Laboratory Pathology</a></p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{https://termgit.elga.gv.at/CodeSystem/elga-laborparameterergaenzung 100}\">Transfusions-/Transplantationsdiagnostik/Immungenetik</span>, <span title=\"Codes:{https://termgit.elga.gv.at/CodeSystem/elga-laborparameterergaenzung 01850}\">Blutgruppenserologie</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 882-1}\">AB0 und Rh-Blutgruppensysteme [Typ] in Blut</span></p><p><b>subject</b>: <a href=\"Bundle-AtApsExample03Diabetes.html#urn-uuid-0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8\">Test Arnold</a></p><p><b>effective</b>: 2024-02-08 07:34:06+0100</p><p><b>performer</b>: <a href=\"Bundle-AtApsExample03Diabetes.html#urn-uuid-82f802a7-56a9-49b4-a675-95da08f0d7a6\">Amadeus Spital - Labor</a></p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 278149003}\">Blutgruppe A Rh(D) positiv</span></p><p><b>specimen</b>: <a href=\"Bundle-AtApsExampleBundle-Journey-3.html#urn-uuid-5218bc54-5d55-42fa-aa0c-169b61577ad0\">AtApsExampleBundle02-diagnostic-specimen-1</a></p></div>"
        },
        "status" : "final",
        "category" : [
          {
            "coding" : [
              {
                "system" : "https://termgit.elga.gv.at/CodeSystem/elga-laborparameterergaenzung",
                "code" : "100",
                "display" : "Transfusions-/Transplantationsdiagnostik/Immungenetik"
              }
            ]
          },
          {
            "coding" : [
              {
                "system" : "https://termgit.elga.gv.at/CodeSystem/elga-laborparameterergaenzung",
                "code" : "01850",
                "display" : "Blutgruppenserologie"
              }
            ]
          },
          {
            "coding" : [
              {
                "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
                "code" : "laboratory",
                "display" : "Laboratory"
              }
            ]
          }
        ],
        "code" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "882-1",
              "display" : "AB0 und Rh-Blutgruppensysteme [Typ] in Blut"
            }
          ]
        },
        "subject" : {
          "reference" : "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8",
          "display" : "Test Arnold"
        },
        "effectiveDateTime" : "2024-02-08T07:34:06+01:00",
        "performer" : [
          {
            "reference" : "urn:uuid:82f802a7-56a9-49b4-a675-95da08f0d7a6",
            "display" : "Amadeus Spital - Labor"
          }
        ],
        "valueCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "278149003",
              "display" : "Blutgruppe A Rh(D) positiv"
            }
          ]
        },
        "specimen" : {
          "reference" : "urn:uuid:5218bc54-5d55-42fa-aa0c-169b61577ad0",
          "display" : "AtApsExampleBundle02-diagnostic-specimen-1"
        }
      }
    },
    {
      "fullUrl" : "urn:uuid:aeff2319-2cc2-4fba-9541-7a4de3d20f91",
      "resource" : {
        "resourceType" : "Observation",
        "id" : "AtApsExampleBundle02-diagnostic-result-2",
        "meta" : {
          "profile" : [
            "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observationresultslaboratorypathology"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_AtApsExampleBundle02-diagnostic-result-2\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation AtApsExampleBundle02-diagnostic-result-2</b></p><a name=\"AtApsExampleBundle02-diagnostic-result-2\"> </a><a name=\"hcAtApsExampleBundle02-diagnostic-result-2\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-aps-observationresultslaboratorypathology.html\">AT APS Observation Results Laboratory Pathology</a></p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{https://termgit.elga.gv.at/CodeSystem/elga-laborparameterergaenzung 500}\">Klinische Chemie/Proteindiagnostik</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span></p><p><b>code</b>: <span title=\"Codes:{https://termgit.elga.gv.at/CodeSystem/elga-laborparameterergaenzung 500}\">Klinische Chemie/Proteindiagnostik</span></p><p><b>subject</b>: <a href=\"Bundle-AtApsExample03Diabetes.html#urn-uuid-0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8\">Test Arnold</a></p><p><b>effective</b>: 2024-02-08 07:56:06+0100</p><p><b>performer</b>: <a href=\"Bundle-AtApsExample03Diabetes.html#urn-uuid-82f802a7-56a9-49b4-a675-95da08f0d7a6\">Amadeus Spital - Labor</a></p><p><b>specimen</b>: <a href=\"Bundle-AtApsExampleBundle-Journey-3.html#urn-uuid-5218bc54-5d55-42fa-aa0c-169b61577ad0\">AtApsExampleBundle02-diagnostic-specimen-1</a></p><p><b>hasMember</b>: </p><ul><li><a href=\"Bundle-AtApsExampleBundle-Journey-3.html#urn-uuid-d16dce15-bc5a-48a5-910e-6ac039785a2a\">AtApsExampleBundle02-diagnostic-result-3</a></li><li><a href=\"Bundle-AtApsExampleBundle-Journey-3.html#urn-uuid-96314fcd-3b0c-4032-8cac-6eb59579d90a\">AtApsExampleBundle02-diagnostic-result-4</a></li><li><a href=\"Bundle-AtApsExampleBundle-Journey-3.html#urn-uuid-30c8a990-ea39-4dcb-9e1e-b9ac74afffc9\">AtApsExampleBundle02-diagnostic-result-5</a></li><li><a href=\"Bundle-AtApsExampleBundle-Journey-3.html#urn-uuid-f29ac02d-762e-436e-b40c-667ab89e15f2\">AtApsExampleBundle02-diagnostic-result-6</a></li><li><a href=\"Bundle-AtApsExampleBundle-Journey-3.html#urn-uuid-28a773ea-38c7-4c77-86c4-7764325756e7\">AtApsExampleBundle02-diagnostic-result-7</a></li><li><a href=\"Bundle-AtApsExampleBundle-Journey-3.html#urn-uuid-b675680e-9469-41b1-adc1-093904e3a1d3\">AtApsExampleBundle02-diagnostic-result-15</a></li></ul></div>"
        },
        "status" : "final",
        "category" : [
          {
            "coding" : [
              {
                "system" : "https://termgit.elga.gv.at/CodeSystem/elga-laborparameterergaenzung",
                "code" : "500",
                "display" : "Klinische Chemie/Proteindiagnostik"
              }
            ]
          },
          {
            "coding" : [
              {
                "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
                "code" : "laboratory",
                "display" : "Laboratory"
              }
            ]
          }
        ],
        "code" : {
          "coding" : [
            {
              "system" : "https://termgit.elga.gv.at/CodeSystem/elga-laborparameterergaenzung",
              "code" : "500",
              "display" : "Klinische Chemie/Proteindiagnostik"
            }
          ]
        },
        "subject" : {
          "reference" : "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8",
          "display" : "Test Arnold"
        },
        "effectiveDateTime" : "2024-02-08T07:56:06+01:00",
        "performer" : [
          {
            "reference" : "urn:uuid:82f802a7-56a9-49b4-a675-95da08f0d7a6",
            "display" : "Amadeus Spital - Labor"
          }
        ],
        "specimen" : {
          "reference" : "urn:uuid:5218bc54-5d55-42fa-aa0c-169b61577ad0",
          "display" : "AtApsExampleBundle02-diagnostic-specimen-1"
        },
        "hasMember" : [
          {
            "reference" : "urn:uuid:d16dce15-bc5a-48a5-910e-6ac039785a2a",
            "display" : "AtApsExampleBundle02-diagnostic-result-3"
          },
          {
            "reference" : "urn:uuid:96314fcd-3b0c-4032-8cac-6eb59579d90a",
            "display" : "AtApsExampleBundle02-diagnostic-result-4"
          },
          {
            "reference" : "urn:uuid:30c8a990-ea39-4dcb-9e1e-b9ac74afffc9",
            "display" : "AtApsExampleBundle02-diagnostic-result-5"
          },
          {
            "reference" : "urn:uuid:f29ac02d-762e-436e-b40c-667ab89e15f2",
            "display" : "AtApsExampleBundle02-diagnostic-result-6"
          },
          {
            "reference" : "urn:uuid:28a773ea-38c7-4c77-86c4-7764325756e7",
            "display" : "AtApsExampleBundle02-diagnostic-result-7"
          },
          {
            "reference" : "urn:uuid:b675680e-9469-41b1-adc1-093904e3a1d3",
            "display" : "AtApsExampleBundle02-diagnostic-result-15"
          }
        ]
      }
    },
    {
      "fullUrl" : "urn:uuid:d16dce15-bc5a-48a5-910e-6ac039785a2a",
      "resource" : {
        "resourceType" : "Observation",
        "id" : "AtApsExampleBundle02-diagnostic-result-3",
        "meta" : {
          "profile" : [
            "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observationresultslaboratorypathology"
          ]
        },
        "language" : "de-AT",
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"de-AT\" lang=\"de-AT\"><a name=\"Observation_AtApsExampleBundle02-diagnostic-result-3\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation AtApsExampleBundle02-diagnostic-result-3</b></p><a name=\"AtApsExampleBundle02-diagnostic-result-3\"> </a><a name=\"hcAtApsExampleBundle02-diagnostic-result-3\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">Language: de-AT</p><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-aps-observationresultslaboratorypathology.html\">AT APS Observation Results Laboratory Pathology</a></p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{https://termgit.elga.gv.at/CodeSystem/elga-laborparameterergaenzung 05180}\">Klinische Chemie</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 2093-3}\">Cholesterin</span></p><p><b>subject</b>: <a href=\"Bundle-AtApsExample03Diabetes.html#urn-uuid-0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8\">Test Arnold</a></p><p><b>effective</b>: 2024-02-08 07:34:06+0100</p><p><b>performer</b>: <a href=\"Bundle-AtApsExample03Diabetes.html#urn-uuid-82f802a7-56a9-49b4-a675-95da08f0d7a6\">Amadeus Spital - Labor</a></p><p><b>value</b>: 180 mg/dL<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg/dL = 'mg/dL')</span></p><p><b>specimen</b>: <a href=\"Bundle-AtApsExampleBundle-Journey-3.html#urn-uuid-5218bc54-5d55-42fa-aa0c-169b61577ad0\">AtApsExampleBundle02-diagnostic-specimen-1</a></p></div>"
        },
        "status" : "final",
        "category" : [
          {
            "coding" : [
              {
                "system" : "https://termgit.elga.gv.at/CodeSystem/elga-laborparameterergaenzung",
                "code" : "05180",
                "display" : "Klinische Chemie"
              }
            ]
          },
          {
            "coding" : [
              {
                "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
                "code" : "laboratory",
                "display" : "Laboratory"
              }
            ]
          }
        ],
        "code" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "2093-3",
              "display" : "Cholesterin"
            }
          ]
        },
        "subject" : {
          "reference" : "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8",
          "display" : "Test Arnold"
        },
        "effectiveDateTime" : "2024-02-08T07:34:06+01:00",
        "performer" : [
          {
            "reference" : "urn:uuid:82f802a7-56a9-49b4-a675-95da08f0d7a6",
            "display" : "Amadeus Spital - Labor"
          }
        ],
        "valueQuantity" : {
          "value" : 180,
          "unit" : "mg/dL",
          "system" : "http://unitsofmeasure.org",
          "code" : "mg/dL"
        },
        "specimen" : {
          "reference" : "urn:uuid:5218bc54-5d55-42fa-aa0c-169b61577ad0",
          "display" : "AtApsExampleBundle02-diagnostic-specimen-1"
        }
      }
    },
    {
      "fullUrl" : "urn:uuid:96314fcd-3b0c-4032-8cac-6eb59579d90a",
      "resource" : {
        "resourceType" : "Observation",
        "id" : "AtApsExampleBundle02-diagnostic-result-4",
        "meta" : {
          "profile" : [
            "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observationresultslaboratorypathology"
          ]
        },
        "language" : "de-AT",
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"de-AT\" lang=\"de-AT\"><a name=\"Observation_AtApsExampleBundle02-diagnostic-result-4\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation AtApsExampleBundle02-diagnostic-result-4</b></p><a name=\"AtApsExampleBundle02-diagnostic-result-4\"> </a><a name=\"hcAtApsExampleBundle02-diagnostic-result-4\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">Language: de-AT</p><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-aps-observationresultslaboratorypathology.html\">AT APS Observation Results Laboratory Pathology</a></p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{https://termgit.elga.gv.at/CodeSystem/elga-laborparameterergaenzung 05180}\">Klinische Chemie</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 2085-9}\">HDL-Cholesterin</span></p><p><b>subject</b>: <a href=\"Bundle-AtApsExample03Diabetes.html#urn-uuid-0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8\">Test Arnold</a></p><p><b>effective</b>: 2024-02-08 07:34:06+0100</p><p><b>performer</b>: <a href=\"Bundle-AtApsExample03Diabetes.html#urn-uuid-82f802a7-56a9-49b4-a675-95da08f0d7a6\">Amadeus Spital - Labor</a></p><p><b>value</b>: 45 mg/dL<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg/dL = 'mg/dL')</span></p><p><b>specimen</b>: <a href=\"Bundle-AtApsExampleBundle-Journey-3.html#urn-uuid-5218bc54-5d55-42fa-aa0c-169b61577ad0\">AtApsExampleBundle02-diagnostic-specimen-1</a></p></div>"
        },
        "status" : "final",
        "category" : [
          {
            "coding" : [
              {
                "system" : "https://termgit.elga.gv.at/CodeSystem/elga-laborparameterergaenzung",
                "code" : "05180",
                "display" : "Klinische Chemie"
              }
            ]
          },
          {
            "coding" : [
              {
                "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
                "code" : "laboratory",
                "display" : "Laboratory"
              }
            ]
          }
        ],
        "code" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "2085-9",
              "display" : "HDL-Cholesterin"
            }
          ]
        },
        "subject" : {
          "reference" : "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8",
          "display" : "Test Arnold"
        },
        "effectiveDateTime" : "2024-02-08T07:34:06+01:00",
        "performer" : [
          {
            "reference" : "urn:uuid:82f802a7-56a9-49b4-a675-95da08f0d7a6",
            "display" : "Amadeus Spital - Labor"
          }
        ],
        "valueQuantity" : {
          "value" : 45,
          "unit" : "mg/dL",
          "system" : "http://unitsofmeasure.org",
          "code" : "mg/dL"
        },
        "specimen" : {
          "reference" : "urn:uuid:5218bc54-5d55-42fa-aa0c-169b61577ad0",
          "display" : "AtApsExampleBundle02-diagnostic-specimen-1"
        }
      }
    },
    {
      "fullUrl" : "urn:uuid:30c8a990-ea39-4dcb-9e1e-b9ac74afffc9",
      "resource" : {
        "resourceType" : "Observation",
        "id" : "AtApsExampleBundle02-diagnostic-result-5",
        "meta" : {
          "profile" : [
            "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observationresultslaboratorypathology"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_AtApsExampleBundle02-diagnostic-result-5\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation AtApsExampleBundle02-diagnostic-result-5</b></p><a name=\"AtApsExampleBundle02-diagnostic-result-5\"> </a><a name=\"hcAtApsExampleBundle02-diagnostic-result-5\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-aps-observationresultslaboratorypathology.html\">AT APS Observation Results Laboratory Pathology</a></p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{https://termgit.elga.gv.at/CodeSystem/elga-laborparameterergaenzung 05180}\">Klinische Chemie</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 9830-1}\">Cholesterol.gesamt/Cholesterol in HDL [Massenverhältnis] in Serum oder Plasma</span></p><p><b>subject</b>: <a href=\"Bundle-AtApsExample03Diabetes.html#urn-uuid-0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8\">Test Arnold</a></p><p><b>effective</b>: 2024-02-08 07:34:06+0100</p><p><b>performer</b>: <a href=\"Bundle-AtApsExample03Diabetes.html#urn-uuid-82f802a7-56a9-49b4-a675-95da08f0d7a6\">Amadeus Spital - Labor</a></p><p><b>value</b>: 4 {ratio}<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code{ratio} = '{ratio}')</span></p><p><b>specimen</b>: <a href=\"Bundle-AtApsExampleBundle-Journey-3.html#urn-uuid-5218bc54-5d55-42fa-aa0c-169b61577ad0\">AtApsExampleBundle02-diagnostic-specimen-1</a></p></div>"
        },
        "status" : "final",
        "category" : [
          {
            "coding" : [
              {
                "system" : "https://termgit.elga.gv.at/CodeSystem/elga-laborparameterergaenzung",
                "code" : "05180",
                "display" : "Klinische Chemie"
              }
            ]
          },
          {
            "coding" : [
              {
                "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
                "code" : "laboratory",
                "display" : "Laboratory"
              }
            ]
          }
        ],
        "code" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "9830-1",
              "display" : "Cholesterol.gesamt/Cholesterol in HDL [Massenverhältnis] in Serum oder Plasma"
            }
          ]
        },
        "subject" : {
          "reference" : "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8",
          "display" : "Test Arnold"
        },
        "effectiveDateTime" : "2024-02-08T07:34:06+01:00",
        "performer" : [
          {
            "reference" : "urn:uuid:82f802a7-56a9-49b4-a675-95da08f0d7a6",
            "display" : "Amadeus Spital - Labor"
          }
        ],
        "valueQuantity" : {
          "value" : 4,
          "unit" : "{ratio}",
          "system" : "http://unitsofmeasure.org",
          "code" : "{ratio}"
        },
        "specimen" : {
          "reference" : "urn:uuid:5218bc54-5d55-42fa-aa0c-169b61577ad0",
          "display" : "AtApsExampleBundle02-diagnostic-specimen-1"
        }
      }
    },
    {
      "fullUrl" : "urn:uuid:f29ac02d-762e-436e-b40c-667ab89e15f2",
      "resource" : {
        "resourceType" : "Observation",
        "id" : "AtApsExampleBundle02-diagnostic-result-6",
        "meta" : {
          "profile" : [
            "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observationresultslaboratorypathology"
          ]
        },
        "language" : "de-AT",
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"de-AT\" lang=\"de-AT\"><a name=\"Observation_AtApsExampleBundle02-diagnostic-result-6\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation AtApsExampleBundle02-diagnostic-result-6</b></p><a name=\"AtApsExampleBundle02-diagnostic-result-6\"> </a><a name=\"hcAtApsExampleBundle02-diagnostic-result-6\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">Language: de-AT</p><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-aps-observationresultslaboratorypathology.html\">AT APS Observation Results Laboratory Pathology</a></p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{https://termgit.elga.gv.at/CodeSystem/elga-laborparameterergaenzung 05180}\">Klinische Chemie</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 2571-8}\">Triglyceride</span></p><p><b>subject</b>: <a href=\"Bundle-AtApsExample03Diabetes.html#urn-uuid-0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8\">Test Arnold</a></p><p><b>effective</b>: 2024-02-08 07:34:06+0100</p><p><b>performer</b>: <a href=\"Bundle-AtApsExample03Diabetes.html#urn-uuid-82f802a7-56a9-49b4-a675-95da08f0d7a6\">Amadeus Spital - Labor</a></p><p><b>value</b>: 130 mg/dL<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg/dL = 'mg/dL')</span></p><p><b>specimen</b>: <a href=\"Bundle-AtApsExampleBundle-Journey-3.html#urn-uuid-5218bc54-5d55-42fa-aa0c-169b61577ad0\">AtApsExampleBundle02-diagnostic-specimen-1</a></p></div>"
        },
        "status" : "final",
        "category" : [
          {
            "coding" : [
              {
                "system" : "https://termgit.elga.gv.at/CodeSystem/elga-laborparameterergaenzung",
                "code" : "05180",
                "display" : "Klinische Chemie"
              }
            ]
          },
          {
            "coding" : [
              {
                "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
                "code" : "laboratory",
                "display" : "Laboratory"
              }
            ]
          }
        ],
        "code" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "2571-8",
              "display" : "Triglyceride"
            }
          ]
        },
        "subject" : {
          "reference" : "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8",
          "display" : "Test Arnold"
        },
        "effectiveDateTime" : "2024-02-08T07:34:06+01:00",
        "performer" : [
          {
            "reference" : "urn:uuid:82f802a7-56a9-49b4-a675-95da08f0d7a6",
            "display" : "Amadeus Spital - Labor"
          }
        ],
        "valueQuantity" : {
          "value" : 130,
          "unit" : "mg/dL",
          "system" : "http://unitsofmeasure.org",
          "code" : "mg/dL"
        },
        "specimen" : {
          "reference" : "urn:uuid:5218bc54-5d55-42fa-aa0c-169b61577ad0",
          "display" : "AtApsExampleBundle02-diagnostic-specimen-1"
        }
      }
    },
    {
      "fullUrl" : "urn:uuid:28a773ea-38c7-4c77-86c4-7764325756e7",
      "resource" : {
        "resourceType" : "Observation",
        "id" : "AtApsExampleBundle02-diagnostic-result-7",
        "meta" : {
          "profile" : [
            "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observationresultslaboratorypathology"
          ]
        },
        "language" : "de-AT",
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\" xml:lang=\"de-AT\" lang=\"de-AT\"><a name=\"Observation_AtApsExampleBundle02-diagnostic-result-7\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation AtApsExampleBundle02-diagnostic-result-7</b></p><a name=\"AtApsExampleBundle02-diagnostic-result-7\"> </a><a name=\"hcAtApsExampleBundle02-diagnostic-result-7\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\">Language: de-AT</p><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-aps-observationresultslaboratorypathology.html\">AT APS Observation Results Laboratory Pathology</a></p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{https://termgit.elga.gv.at/CodeSystem/elga-laborparameterergaenzung 05180}\">Klinische Chemie</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 2324-2}\">Gamma-GT</span></p><p><b>subject</b>: <a href=\"Bundle-AtApsExample03Diabetes.html#urn-uuid-0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8\">Test Arnold</a></p><p><b>effective</b>: 2024-02-08 07:34:06+0100</p><p><b>performer</b>: <a href=\"Bundle-AtApsExample03Diabetes.html#urn-uuid-82f802a7-56a9-49b4-a675-95da08f0d7a6\">Amadeus Spital - Labor</a></p><p><b>value</b>: 54 U/L<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codeU/L = 'U/L')</span></p><p><b>specimen</b>: <a href=\"Bundle-AtApsExampleBundle-Journey-3.html#urn-uuid-5218bc54-5d55-42fa-aa0c-169b61577ad0\">AtApsExampleBundle02-diagnostic-specimen-1</a></p></div>"
        },
        "status" : "final",
        "category" : [
          {
            "coding" : [
              {
                "system" : "https://termgit.elga.gv.at/CodeSystem/elga-laborparameterergaenzung",
                "code" : "05180",
                "display" : "Klinische Chemie"
              }
            ]
          },
          {
            "coding" : [
              {
                "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
                "code" : "laboratory",
                "display" : "Laboratory"
              }
            ]
          }
        ],
        "code" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "2324-2",
              "display" : "Gamma-GT"
            }
          ]
        },
        "subject" : {
          "reference" : "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8",
          "display" : "Test Arnold"
        },
        "effectiveDateTime" : "2024-02-08T07:34:06+01:00",
        "performer" : [
          {
            "reference" : "urn:uuid:82f802a7-56a9-49b4-a675-95da08f0d7a6",
            "display" : "Amadeus Spital - Labor"
          }
        ],
        "valueQuantity" : {
          "value" : 54,
          "unit" : "U/L",
          "system" : "http://unitsofmeasure.org",
          "code" : "U/L"
        },
        "specimen" : {
          "reference" : "urn:uuid:5218bc54-5d55-42fa-aa0c-169b61577ad0",
          "display" : "AtApsExampleBundle02-diagnostic-specimen-1"
        }
      }
    },
    {
      "fullUrl" : "urn:uuid:b675680e-9469-41b1-adc1-093904e3a1d3",
      "resource" : {
        "resourceType" : "Observation",
        "id" : "AtApsExampleBundle02-diagnostic-result-15",
        "meta" : {
          "profile" : [
            "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observationresultslaboratorypathology"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_AtApsExampleBundle02-diagnostic-result-15\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation AtApsExampleBundle02-diagnostic-result-15</b></p><a name=\"AtApsExampleBundle02-diagnostic-result-15\"> </a><a name=\"hcAtApsExampleBundle02-diagnostic-result-15\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-aps-observationresultslaboratorypathology.html\">AT APS Observation Results Laboratory Pathology</a></p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{https://termgit.elga.gv.at/CodeSystem/elga-laborparameterergaenzung 05180}\">Klinische Chemie</span>, <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category laboratory}\">Laboratory</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 2339-0}\">Glucose [Masse/Volumen] in Blut</span></p><p><b>subject</b>: <a href=\"Bundle-AtApsExample03Diabetes.html#urn-uuid-0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8\">Test Arnold</a></p><p><b>effective</b>: 2024-02-08 07:34:06+0100</p><p><b>performer</b>: <a href=\"Bundle-AtApsExample03Diabetes.html#urn-uuid-82f802a7-56a9-49b4-a675-95da08f0d7a6\">Amadeus Spital - Labor</a></p><p><b>value</b>: 112 mg/dL<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemg/dL = 'mg/dL')</span></p><p><b>specimen</b>: <a href=\"Bundle-AtApsExampleBundle-Journey-3.html#urn-uuid-5218bc54-5d55-42fa-aa0c-169b61577ad0\">AtApsExampleBundle02-diagnostic-specimen-1</a></p></div>"
        },
        "status" : "final",
        "category" : [
          {
            "coding" : [
              {
                "system" : "https://termgit.elga.gv.at/CodeSystem/elga-laborparameterergaenzung",
                "code" : "05180",
                "display" : "Klinische Chemie"
              }
            ]
          },
          {
            "coding" : [
              {
                "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
                "code" : "laboratory",
                "display" : "Laboratory"
              }
            ]
          }
        ],
        "code" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "2339-0",
              "display" : "Glucose [Masse/Volumen] in Blut"
            }
          ]
        },
        "subject" : {
          "reference" : "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8",
          "display" : "Test Arnold"
        },
        "effectiveDateTime" : "2024-02-08T07:34:06+01:00",
        "performer" : [
          {
            "reference" : "urn:uuid:82f802a7-56a9-49b4-a675-95da08f0d7a6",
            "display" : "Amadeus Spital - Labor"
          }
        ],
        "valueQuantity" : {
          "value" : 112,
          "unit" : "mg/dL",
          "system" : "http://unitsofmeasure.org",
          "code" : "mg/dL"
        },
        "specimen" : {
          "reference" : "urn:uuid:5218bc54-5d55-42fa-aa0c-169b61577ad0",
          "display" : "AtApsExampleBundle02-diagnostic-specimen-1"
        }
      }
    },
    {
      "fullUrl" : "urn:uuid:82f802a7-56a9-49b4-a675-95da08f0d7a6",
      "resource" : {
        "resourceType" : "Organization",
        "id" : "AtApsExampleBundle02-diagnostic-result-performer-1",
        "meta" : {
          "profile" : [
            "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-organization"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Organization_AtApsExampleBundle02-diagnostic-result-performer-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Organization AtApsExampleBundle02-diagnostic-result-performer-1</b></p><a name=\"AtApsExampleBundle02-diagnostic-result-performer-1\"> </a><a name=\"hcAtApsExampleBundle02-diagnostic-result-performer-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-aps-organization.html\">AT APS Organization</a></p></div><p><b>identifier</b>: <a href=\"http://terminology.hl7.org/6.2.0/NamingSystem-uri.html\" title=\"As defined by RFC 3986 (http://www.ietf.org/rfc/rfc3986.txt)(with many schemes defined in many RFCs). For OIDs and UUIDs, use the URN form (urn:oid:(note: lowercase) and urn:uuid:). See http://www.ietf.org/rfc/rfc3001.txt and http://www.ietf.org/rfc/rfc4122.txt \r\n\r\nThis oid is used as an identifier II.root to indicate the the extension is an absolute URI (technically, an IRI). Typically, this is used for OIDs and GUIDs. Note that when this OID is used with OIDs and GUIDs, the II.extension should start with urn:oid or urn:uuid: \r\n\r\nNote that this OID is created to aid with interconversion between CDA and FHIR - FHIR uses urn:ietf:rfc:3986 as equivalent to this OID. URIs as identifiers appear more commonly in FHIR.\r\n\r\nThis OID may also be used in CD.codeSystem.\">Uniform Resource Identifier (URI)</a>/urn:oid:1.2.40.0.34.99.4613</p><p><b>name</b>: Amadeus Spital - Labor</p><p><b>telecom</b>: <a href=\"tel:+43.1.3453446.0\">+43.1.3453446.0</a>, fax: +43.1.3453446.4674, <a href=\"mailto:info@amadeusspital.at\">info@amadeusspital.at</a>, <a href=\"https://www.amadeusspital.at\">https://www.amadeusspital.at</a></p><p><b>address</b>: Währinger Gürtel 18-20 Wien 1090 AUT </p></div>"
        },
        "identifier" : [
          {
            "system" : "urn:ietf:rfc:3986",
            "value" : "urn:oid:1.2.40.0.34.99.4613",
            "assigner" : {
              "display" : "Bundesministerium für Gesundheit"
            }
          }
        ],
        "name" : "Amadeus Spital - Labor",
        "telecom" : [
          {
            "system" : "phone",
            "value" : "+43.1.3453446.0"
          },
          {
            "system" : "fax",
            "value" : "+43.1.3453446.4674"
          },
          {
            "system" : "email",
            "value" : "info@amadeusspital.at"
          },
          {
            "system" : "url",
            "value" : "https://www.amadeusspital.at"
          }
        ],
        "address" : [
          {
            "line" : ["Währinger Gürtel 18-20"],
            "city" : "Wien",
            "postalCode" : "1090",
            "country" : "AUT"
          }
        ]
      }
    },
    {
      "fullUrl" : "urn:uuid:74c5e186-d765-4c93-a624-c9b0746e8142",
      "resource" : {
        "resourceType" : "Observation",
        "id" : "AtApsExampleBundle02-vital-sign-1",
        "meta" : {
          "profile" : [
            "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observationvitalsigns"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_AtApsExampleBundle02-vital-sign-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation AtApsExampleBundle02-vital-sign-1</b></p><a name=\"AtApsExampleBundle02-vital-sign-1\"> </a><a name=\"hcAtApsExampleBundle02-vital-sign-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-aps-observationvitalsigns.html\">AT APS Observation Vital Signs</a></p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category vital-signs}\">Vital Signs</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 8302-2}\">Körpergröße</span></p><p><b>subject</b>: <a href=\"Bundle-AtApsExample03Diabetes.html#urn-uuid-0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8\">Test Arnold</a></p><p><b>effective</b>: 2024-02-08 08:30:00+0100</p><p><b>performer</b>: <a href=\"Bundle-AtApsExample03Diabetes.html#urn-uuid-82f802a7-56a9-49b4-a675-95da08f0d7a6\">Amadeus Spital - Labor</a></p><p><b>value</b>: 173 cm<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codecm = 'cm')</span></p></div>"
        },
        "status" : "final",
        "category" : [
          {
            "coding" : [
              {
                "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
                "code" : "vital-signs",
                "display" : "Vital Signs"
              }
            ]
          }
        ],
        "code" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "8302-2",
              "display" : "Körpergröße"
            }
          ]
        },
        "subject" : {
          "reference" : "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8",
          "display" : "Test Arnold"
        },
        "effectiveDateTime" : "2024-02-08T08:30:00+01:00",
        "performer" : [
          {
            "reference" : "urn:uuid:82f802a7-56a9-49b4-a675-95da08f0d7a6",
            "display" : "Amadeus Spital - Labor"
          }
        ],
        "valueQuantity" : {
          "value" : 173,
          "unit" : "cm",
          "system" : "http://unitsofmeasure.org",
          "code" : "cm"
        }
      }
    },
    {
      "fullUrl" : "urn:uuid:428259da-e0f7-4780-b1e3-c177515edd37",
      "resource" : {
        "resourceType" : "Observation",
        "id" : "AtApsExampleBundle02-vital-sign-2",
        "meta" : {
          "profile" : [
            "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observationvitalsigns"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_AtApsExampleBundle02-vital-sign-2\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation AtApsExampleBundle02-vital-sign-2</b></p><a name=\"AtApsExampleBundle02-vital-sign-2\"> </a><a name=\"hcAtApsExampleBundle02-vital-sign-2\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-aps-observationvitalsigns.html\">AT APS Observation Vital Signs</a></p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category vital-signs}\">Vital Signs</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 29463-7}\">Körpergewicht</span></p><p><b>subject</b>: <a href=\"Bundle-AtApsExample03Diabetes.html#urn-uuid-0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8\">Test Arnold</a></p><p><b>effective</b>: 2024-02-08 08:30:00+0100</p><p><b>performer</b>: <a href=\"Bundle-AtApsExample03Diabetes.html#urn-uuid-75db30ee-7028-486c-929a-c5126837f472\">Dr. Hannes Hausarzt</a></p><p><b>value</b>: 68 kg<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codekg = 'kg')</span></p></div>"
        },
        "status" : "final",
        "category" : [
          {
            "coding" : [
              {
                "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
                "code" : "vital-signs",
                "display" : "Vital Signs"
              }
            ]
          }
        ],
        "code" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "29463-7",
              "display" : "Körpergewicht"
            }
          ]
        },
        "subject" : {
          "reference" : "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8",
          "display" : "Test Arnold"
        },
        "effectiveDateTime" : "2024-02-08T08:30:00+01:00",
        "performer" : [
          {
            "reference" : "urn:uuid:75db30ee-7028-486c-929a-c5126837f472",
            "display" : "Dr. Hannes Hausarzt"
          }
        ],
        "valueQuantity" : {
          "value" : 68,
          "unit" : "kg",
          "system" : "http://unitsofmeasure.org",
          "code" : "kg"
        }
      }
    },
    {
      "fullUrl" : "urn:uuid:daf9c15d-14d4-429c-b658-6842fdff67d8",
      "resource" : {
        "resourceType" : "Observation",
        "id" : "AtApsExampleBundle02-vital-sign-3",
        "meta" : {
          "profile" : [
            "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observationvitalsigns"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_AtApsExampleBundle02-vital-sign-3\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation AtApsExampleBundle02-vital-sign-3</b></p><a name=\"AtApsExampleBundle02-vital-sign-3\"> </a><a name=\"hcAtApsExampleBundle02-vital-sign-3\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-aps-observationvitalsigns.html\">AT APS Observation Vital Signs</a></p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category vital-signs}\">Vital Signs</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 39156-5}\">Body Mass Index (BMI) [Verhältnis]</span></p><p><b>subject</b>: <a href=\"Bundle-AtApsExample03Diabetes.html#urn-uuid-0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8\">Test Arnold</a></p><p><b>effective</b>: 2024-02-08 08:30:00+0100</p><p><b>performer</b>: <a href=\"Bundle-AtApsExample03Diabetes.html#urn-uuid-75db30ee-7028-486c-929a-c5126837f472\">Dr. Hannes Hausarzt</a></p><p><b>value</b>: 22.72 kg/m2<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codekg/m2 = 'kg/m2')</span></p><p><b>interpretation</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation H}\">High</span></p></div>"
        },
        "status" : "final",
        "category" : [
          {
            "coding" : [
              {
                "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
                "code" : "vital-signs",
                "display" : "Vital Signs"
              }
            ]
          }
        ],
        "code" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "39156-5",
              "display" : "Body Mass Index (BMI) [Verhältnis]"
            }
          ]
        },
        "subject" : {
          "reference" : "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8",
          "display" : "Test Arnold"
        },
        "effectiveDateTime" : "2024-02-08T08:30:00+01:00",
        "performer" : [
          {
            "reference" : "urn:uuid:75db30ee-7028-486c-929a-c5126837f472",
            "display" : "Dr. Hannes Hausarzt"
          }
        ],
        "valueQuantity" : {
          "value" : 22.72,
          "unit" : "kg/m2",
          "system" : "http://unitsofmeasure.org",
          "code" : "kg/m2"
        },
        "interpretation" : [
          {
            "coding" : [
              {
                "system" : "http://terminology.hl7.org/CodeSystem/v3-ObservationInterpretation",
                "code" : "H",
                "display" : "High"
              }
            ]
          }
        ]
      }
    },
    {
      "fullUrl" : "urn:uuid:8248cc70-65a2-4d37-ae14-a3ef2abf8f32",
      "resource" : {
        "resourceType" : "Observation",
        "id" : "AtApsExampleBundle02-vital-sign-4",
        "meta" : {
          "profile" : [
            "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observationvitalsigns"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_AtApsExampleBundle02-vital-sign-4\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation AtApsExampleBundle02-vital-sign-4</b></p><a name=\"AtApsExampleBundle02-vital-sign-4\"> </a><a name=\"hcAtApsExampleBundle02-vital-sign-4\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-aps-observationvitalsigns.html\">AT APS Observation Vital Signs</a></p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category vital-signs}\">Vital Signs</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 85354-9}\">Blood pressure panel with all children optional</span></p><p><b>subject</b>: <a href=\"Bundle-AtApsExample03Diabetes.html#urn-uuid-0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8\">Test Arnold</a></p><p><b>effective</b>: 2024-02-08 08:30:00+0100</p><p><b>performer</b>: <a href=\"Bundle-AtApsExample03Diabetes.html#urn-uuid-75db30ee-7028-486c-929a-c5126837f472\">Dr. Hannes Hausarzt</a></p><blockquote><p><b>component</b></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 8480-6}\">Systolischer Blutdruck</span></p><p><b>value</b>: 130 mm[Hg]<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemm[Hg] = 'mm[Hg]')</span></p></blockquote><blockquote><p><b>component</b></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 8462-4}\">Diastolischer Blutdruck</span></p><p><b>value</b>: 80 mm[Hg]<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codemm[Hg] = 'mm[Hg]')</span></p></blockquote></div>"
        },
        "status" : "final",
        "category" : [
          {
            "coding" : [
              {
                "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
                "code" : "vital-signs",
                "display" : "Vital Signs"
              }
            ]
          }
        ],
        "code" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "85354-9",
              "display" : "Blood pressure panel with all children optional"
            }
          ]
        },
        "subject" : {
          "reference" : "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8",
          "display" : "Test Arnold"
        },
        "effectiveDateTime" : "2024-02-08T08:30:00+01:00",
        "performer" : [
          {
            "reference" : "urn:uuid:75db30ee-7028-486c-929a-c5126837f472",
            "display" : "Dr. Hannes Hausarzt"
          }
        ],
        "component" : [
          {
            "code" : {
              "coding" : [
                {
                  "system" : "http://loinc.org",
                  "code" : "8480-6",
                  "display" : "Systolischer Blutdruck"
                }
              ]
            },
            "valueQuantity" : {
              "value" : 130,
              "unit" : "mm[Hg]",
              "system" : "http://unitsofmeasure.org",
              "code" : "mm[Hg]"
            }
          },
          {
            "code" : {
              "coding" : [
                {
                  "system" : "http://loinc.org",
                  "code" : "8462-4",
                  "display" : "Diastolischer Blutdruck"
                }
              ]
            },
            "valueQuantity" : {
              "value" : 80,
              "unit" : "mm[Hg]",
              "system" : "http://unitsofmeasure.org",
              "code" : "mm[Hg]"
            }
          }
        ]
      }
    },
    {
      "fullUrl" : "urn:uuid:4d3f7ac4-fd0a-49af-a56b-303a2dbe67d1",
      "resource" : {
        "resourceType" : "Observation",
        "id" : "AtApsExampleBundle02-vital-sign-5",
        "meta" : {
          "profile" : [
            "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observationvitalsigns"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_AtApsExampleBundle02-vital-sign-5\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation AtApsExampleBundle02-vital-sign-5</b></p><a name=\"AtApsExampleBundle02-vital-sign-5\"> </a><a name=\"hcAtApsExampleBundle02-vital-sign-5\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-aps-observationvitalsigns.html\">AT APS Observation Vital Signs</a></p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category vital-signs}\">Vital Signs</span></p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 8867-4}\">Herzfrequenz</span></p><p><b>subject</b>: <a href=\"Bundle-AtApsExample03Diabetes.html#urn-uuid-0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8\">Test Arnold</a></p><p><b>effective</b>: 2024-02-08 08:30:00+0100</p><p><b>performer</b>: <a href=\"Bundle-AtApsExample03Diabetes.html#urn-uuid-75db30ee-7028-486c-929a-c5126837f472\">Dr. Hannes Hausarzt</a></p><p><b>value</b>: 85 /min<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  code/min = '/min')</span></p></div>"
        },
        "status" : "final",
        "category" : [
          {
            "coding" : [
              {
                "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
                "code" : "vital-signs",
                "display" : "Vital Signs"
              }
            ]
          }
        ],
        "code" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "8867-4",
              "display" : "Herzfrequenz"
            }
          ]
        },
        "subject" : {
          "reference" : "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8",
          "display" : "Test Arnold"
        },
        "effectiveDateTime" : "2024-02-08T08:30:00+01:00",
        "performer" : [
          {
            "reference" : "urn:uuid:75db30ee-7028-486c-929a-c5126837f472",
            "display" : "Dr. Hannes Hausarzt"
          }
        ],
        "valueQuantity" : {
          "value" : 85,
          "unit" : "/min",
          "system" : "http://unitsofmeasure.org",
          "code" : "/min"
        }
      }
    },
    {
      "fullUrl" : "urn:uuid:be35e603-6b99-4bb5-ad70-8499f6b55df1",
      "resource" : {
        "resourceType" : "Observation",
        "id" : "AtApsExampleBundle02-vital-sign-6",
        "meta" : {
          "profile" : [
            "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observationvitalsigns"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_AtApsExampleBundle02-vital-sign-6\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation AtApsExampleBundle02-vital-sign-6</b></p><a name=\"AtApsExampleBundle02-vital-sign-6\"> </a><a name=\"hcAtApsExampleBundle02-vital-sign-6\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-aps-observationvitalsigns.html\">AT APS Observation Vital Signs</a></p></div><p><b>status</b>: Final</p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/observation-category vital-signs}\">Vital Signs</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 276361009}\">Umfang der Taille</span></p><p><b>subject</b>: <a href=\"Bundle-AtApsExample03Diabetes.html#urn-uuid-0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8\">Test Arnold</a></p><p><b>effective</b>: 2024-02-08 08:30:00+0100</p><p><b>performer</b>: <a href=\"Bundle-AtApsExample03Diabetes.html#urn-uuid-75db30ee-7028-486c-929a-c5126837f472\">Dr. Hannes Hausarzt</a></p><p><b>value</b>: &lt;102 cm<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codecm = 'cm')</span></p></div>"
        },
        "status" : "final",
        "category" : [
          {
            "coding" : [
              {
                "system" : "http://terminology.hl7.org/CodeSystem/observation-category",
                "code" : "vital-signs",
                "display" : "Vital Signs"
              }
            ]
          }
        ],
        "code" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "276361009",
              "display" : "Umfang der Taille"
            }
          ]
        },
        "subject" : {
          "reference" : "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8",
          "display" : "Test Arnold"
        },
        "effectiveDateTime" : "2024-02-08T08:30:00+01:00",
        "performer" : [
          {
            "reference" : "urn:uuid:75db30ee-7028-486c-929a-c5126837f472",
            "display" : "Dr. Hannes Hausarzt"
          }
        ],
        "valueQuantity" : {
          "value" : 102,
          "comparator" : "<",
          "unit" : "cm",
          "system" : "http://unitsofmeasure.org",
          "code" : "cm"
        }
      }
    },
    {
      "fullUrl" : "urn:uuid:82301518-66ca-4b4c-821d-087adf643cc4",
      "resource" : {
        "resourceType" : "Condition",
        "id" : "AtApsExampleBundle02-illness-history-1",
        "meta" : {
          "profile" : [
            "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-condition"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Condition_AtApsExampleBundle02-illness-history-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Condition AtApsExampleBundle02-illness-history-1</b></p><a name=\"AtApsExampleBundle02-illness-history-1\"> </a><a name=\"hcAtApsExampleBundle02-illness-history-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-aps-condition.html\">AT APS Condition</a></p></div><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-clinical resolved}\">Resolved</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-ver-status confirmed}\">Confirmed</span></p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-category problem-list-item}\">Problem List Item</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 161419000}\">Zustand nach Masern</span></p><p><b>subject</b>: <a href=\"Bundle-AtApsExample03Diabetes.html#urn-uuid-0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8\">Test Arnold</a></p></div>"
        },
        "clinicalStatus" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
              "code" : "resolved",
              "display" : "Resolved"
            }
          ]
        },
        "verificationStatus" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
              "code" : "confirmed",
              "display" : "Confirmed"
            }
          ]
        },
        "category" : [
          {
            "coding" : [
              {
                "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
                "code" : "problem-list-item",
                "display" : "Problem List Item"
              }
            ]
          }
        ],
        "code" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "161419000",
              "display" : "Zustand nach Masern"
            }
          ]
        },
        "subject" : {
          "reference" : "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8",
          "display" : "Test Arnold"
        }
      }
    },
    {
      "fullUrl" : "urn:uuid:ce2589a2-a5e5-4520-808f-8118e2863a95",
      "resource" : {
        "resourceType" : "Condition",
        "id" : "AtApsExampleBundle02-illness-history-2",
        "meta" : {
          "profile" : [
            "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-condition"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Condition_AtApsExampleBundle02-illness-history-2\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Condition AtApsExampleBundle02-illness-history-2</b></p><a name=\"AtApsExampleBundle02-illness-history-2\"> </a><a name=\"hcAtApsExampleBundle02-illness-history-2\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-aps-condition.html\">AT APS Condition</a></p></div><p><b>clinicalStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-clinical resolved}\">Resolved</span></p><p><b>verificationStatus</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-ver-status confirmed}\">Confirmed</span></p><p><b>category</b>: <span title=\"Codes:{http://terminology.hl7.org/CodeSystem/condition-category problem-list-item}\">Problem List Item</span></p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 161423008}\">Zustand nach Windpocken</span></p><p><b>subject</b>: <a href=\"Bundle-AtApsExample03Diabetes.html#urn-uuid-0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8\">Test Arnold</a></p></div>"
        },
        "clinicalStatus" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
              "code" : "resolved",
              "display" : "Resolved"
            }
          ]
        },
        "verificationStatus" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
              "code" : "confirmed",
              "display" : "Confirmed"
            }
          ]
        },
        "category" : [
          {
            "coding" : [
              {
                "system" : "http://terminology.hl7.org/CodeSystem/condition-category",
                "code" : "problem-list-item",
                "display" : "Problem List Item"
              }
            ]
          }
        ],
        "code" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "161423008",
              "display" : "Zustand nach Windpocken"
            }
          ]
        },
        "subject" : {
          "reference" : "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8",
          "display" : "Test Arnold"
        }
      }
    },
    {
      "fullUrl" : "urn:uuid:d0a5bbf1-6d01-4d44-bac5-05f12c98411e",
      "resource" : {
        "resourceType" : "Observation",
        "id" : "AtApsExampleBundle02-social-history-1",
        "meta" : {
          "profile" : [
            "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observationtobaccouse"
          ]
        },
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_AtApsExampleBundle02-social-history-1\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation AtApsExampleBundle02-social-history-1</b></p><a name=\"AtApsExampleBundle02-social-history-1\"> </a><a name=\"hcAtApsExampleBundle02-social-history-1\"> </a><div style=\"display: inline-block; background-color: #d9e0e7; padding: 6px; margin: 4px; border: 1px solid #8da1b4; border-radius: 5px; line-height: 60%\"><p style=\"margin-bottom: 0px\"/><p style=\"margin-bottom: 0px\">Profile: <a href=\"StructureDefinition-at-aps-observationtobaccouse.html\">AT APS Observation Tobacco Use</a></p></div><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://loinc.org 72166-2}\">Raucherstatus</span></p><p><b>subject</b>: <a href=\"Bundle-AtApsExample03Diabetes.html#urn-uuid-0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8\">Test Arnold</a></p><p><b>effective</b>: 2024-02-08 08:30:00+0100</p><p><b>performer</b>: <a href=\"Bundle-AtApsExample03Diabetes.html#urn-uuid-75db30ee-7028-486c-929a-c5126837f472\">Dr. Hannes Hausarzt</a></p><p><b>value</b>: <span title=\"Codes:{http://snomed.info/sct 266919005}\">Nie Tabak geraucht</span></p></div>"
        },
        "status" : "final",
        "code" : {
          "coding" : [
            {
              "system" : "http://loinc.org",
              "code" : "72166-2",
              "display" : "Raucherstatus"
            }
          ]
        },
        "subject" : {
          "reference" : "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8",
          "display" : "Test Arnold"
        },
        "effectiveDateTime" : "2024-02-08T08:30:00+01:00",
        "performer" : [
          {
            "reference" : "urn:uuid:75db30ee-7028-486c-929a-c5126837f472",
            "display" : "Dr. Hannes Hausarzt"
          }
        ],
        "valueCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "266919005",
              "display" : "Nie Tabak geraucht"
            }
          ]
        }
      }
    },
    {
      "fullUrl" : "urn:uuid:9add5c32-1ded-43d6-b163-c3fe13f94984",
      "resource" : {
        "resourceType" : "Observation",
        "id" : "AtApsExampleBundle02-social-history-2",
        "text" : {
          "status" : "generated",
          "div" : "<div xmlns=\"http://www.w3.org/1999/xhtml\"><a name=\"Observation_AtApsExampleBundle02-social-history-2\"> </a><p class=\"res-header-id\"><b>Generated Narrative: Observation AtApsExampleBundle02-social-history-2</b></p><a name=\"AtApsExampleBundle02-social-history-2\"> </a><a name=\"hcAtApsExampleBundle02-social-history-2\"> </a><p><b>status</b>: Final</p><p><b>code</b>: <span title=\"Codes:{http://snomed.info/sct 61686008}\">Körperliche Aktivität</span></p><p><b>subject</b>: <a href=\"Bundle-AtApsExample03Diabetes.html#urn-uuid-0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8\">Test Arnold</a></p><p><b>effective</b>: 2024-02-08 08:30:00+0100</p><p><b>performer</b>: <a href=\"Bundle-AtApsExample03Diabetes.html#urn-uuid-75db30ee-7028-486c-929a-c5126837f472\">Dr. Hannes Hausarzt</a></p><p><b>value</b>: &gt;2.5 h<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codeh = 'h')</span>/1 wk<span style=\"background: LightGoldenRodYellow\"> (Details: UCUM  codewk = 'wk')</span></p></div>"
        },
        "status" : "final",
        "code" : {
          "coding" : [
            {
              "system" : "http://snomed.info/sct",
              "code" : "61686008",
              "display" : "Körperliche Aktivität"
            }
          ]
        },
        "subject" : {
          "reference" : "urn:uuid:0fed5ebe-ca8f-4ad1-aba4-ddad45bd6cc8",
          "display" : "Test Arnold"
        },
        "effectiveDateTime" : "2024-02-08T08:30:00+01:00",
        "performer" : [
          {
            "reference" : "urn:uuid:75db30ee-7028-486c-929a-c5126837f472",
            "display" : "Dr. Hannes Hausarzt"
          }
        ],
        "valueRatio" : {
          "numerator" : {
            "value" : 2.5,
            "comparator" : ">",
            "unit" : "h",
            "system" : "http://unitsofmeasure.org",
            "code" : "h"
          },
          "denominator" : {
            "value" : 1,
            "unit" : "wk",
            "system" : "http://unitsofmeasure.org",
            "code" : "wk"
          }
        }
      }
    }
  ]
}

```
