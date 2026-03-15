# ELGA.MOPED\Stroke Unit Registermeldung – Patientendaten - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Stroke Unit Registermeldung – Patientendaten**

## Questionnaire: Stroke Unit Registermeldung – Patientendaten 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://example.org/Questionnaire/strokeunit-questionnaire | *Version*:0.1.0 | |
| Active as of 2026-03-15 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:StrokeUnitQuestionnaire |

 
Fragen zur Registermeldung Stroke Unit – Abschnitt Patientendaten 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "strokeunit-questionnaire",
  "url" : "http://example.org/Questionnaire/strokeunit-questionnaire",
  "version" : "0.1.0",
  "name" : "StrokeUnitQuestionnaire",
  "title" : "Stroke Unit Registermeldung – Patientendaten",
  "status" : "active",
  "date" : "2026-03-15T19:53:47+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "Fragen zur Registermeldung Stroke Unit – Abschnitt Patientendaten",
  "item" : [{
    "linkId" : "gruppe-patientendaten",
    "text" : "Patientendaten",
    "type" : "group",
    "item" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
        "valueInteger" : 111
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
        "valueInteger" : 999
      }],
      "linkId" : "2001",
      "text" : "Zentrum",
      "type" : "integer"
    },
    {
      "linkId" : "2003",
      "text" : "Aufnahmezahl",
      "type" : "string",
      "maxLength" : 20
    },
    {
      "linkId" : "gruppe-demographie",
      "text" : "Demographische Basisdaten",
      "type" : "group",
      "item" : [{
        "linkId" : "2040",
        "text" : "Vorname (für bPK nötig)",
        "type" : "string",
        "maxLength" : 64
      },
      {
        "linkId" : "2041",
        "text" : "Nachname (für bPK nötig)",
        "type" : "string",
        "maxLength" : 64
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
          "valueDate" : "1900-01-01"
        },
        {
          "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
          "valueDate" : "2026-01-01",
          "_valueDate" : {
            "extension" : [{
              "url" : "http://hl7.org/fhir/StructureDefinition/cqf-calculatedValue",
              "valueExpression" : {
                "language" : "text/fhirpath",
                "expression" : "today()"
              }
            }]
          }
        }],
        "linkId" : "2004",
        "text" : "Geburtsdatum",
        "type" : "date"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
          "valueCodeableConcept" : {
            "coding" : [{
              "system" : "http://hl7.org/fhir/questionnaire-item-control",
              "code" : "radio-button",
              "display" : "Radio Button"
            }]
          }
        }],
        "linkId" : "2032",
        "text" : "Wohnort",
        "type" : "coding",
        "answerOption" : [{
          "valueCoding" : {
            "code" : "1",
            "display" : "im Inland"
          }
        },
        {
          "valueCoding" : {
            "code" : "2",
            "display" : "im Ausland"
          }
        }]
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
          "valueInteger" : 1000
        },
        {
          "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
          "valueInteger" : 9999
        }],
        "linkId" : "2030",
        "text" : "Wohnpostleitzahl (wenn Wohnort Österreich)",
        "type" : "integer",
        "enableWhen" : [{
          "question" : "2032",
          "operator" : "=",
          "answerCoding" : {
            "code" : "1"
          }
        }]
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
          "valueInteger" : 0
        },
        {
          "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
          "valueInteger" : 999
        }],
        "linkId" : "2050",
        "text" : "Studienteilnahme",
        "type" : "integer",
        "required" : false
      }]
    },
    {
      "linkId" : "gruppe-geschlecht",
      "text" : "Geschlecht",
      "type" : "group",
      "item" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
          "valueCodeableConcept" : {
            "coding" : [{
              "system" : "http://hl7.org/fhir/questionnaire-item-control",
              "code" : "radio-button",
              "display" : "Radio Button"
            }]
          }
        }],
        "linkId" : "2005",
        "text" : "Geschlecht",
        "type" : "coding",
        "answerOption" : [{
          "valueCoding" : {
            "code" : "1",
            "display" : "Männlich"
          }
        },
        {
          "valueCoding" : {
            "code" : "2",
            "display" : "Weiblich"
          }
        },
        {
          "valueCoding" : {
            "code" : "3",
            "display" : "Divers"
          }
        }]
      }]
    },
    {
      "linkId" : "gruppe-akuter-schlaganfall",
      "text" : "Akuter Schlaganfall",
      "type" : "group",
      "item" : [{
        "linkId" : "2006",
        "text" : "Akuter Schlaganfall",
        "type" : "coding",
        "answerOption" : [{
          "valueCoding" : {
            "code" : "1",
            "display" : "ja"
          }
        },
        {
          "valueCoding" : {
            "code" : "0",
            "display" : "nein"
          }
        },
        {
          "valueCoding" : {
            "code" : "2",
            "display" : "Monitoring an der SU bei Hochrisikopatient:innen"
          }
        }]
      },
      {
        "linkId" : "2007",
        "text" : "Falls kein akuter Schlaganfall",
        "type" : "coding",
        "enableWhen" : [{
          "question" : "2006",
          "operator" : "!=",
          "answerCoding" : {
            "code" : "1"
          }
        }],
        "answerOption" : [{
          "valueCoding" : {
            "code" : "1",
            "display" : "Nicht-vaskuläre Erkrankung, kein klinisches Bild eines Schlaganfalls (TIA)"
          }
        },
        {
          "valueCoding" : {
            "code" : "2",
            "display" : "Monitoring nach vaskulärer Intervention"
          }
        },
        {
          "valueCoding" : {
            "code" : "3",
            "display" : "Nicht-vaskuläre Erkrankung als Ursache für Schlaganfallbild (TIA)"
          }
        }]
      }]
    }]
  },
  {
    "linkId" : "gruppe-aufnahme-und-diagnostik",
    "text" : "Aufnahme und Diagnostik",
    "type" : "group",
    "enableWhen" : [{
      "question" : "2006",
      "operator" : "=",
      "answerCoding" : {
        "code" : "1"
      }
    }],
    "item" : [{
      "linkId" : "3052",
      "text" : "Datum Ereignis bekannt",
      "type" : "boolean"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
        "valueDate" : "2024-01-01",
        "_valueDate" : {
          "extension" : [{
            "url" : "http://hl7.org/fhir/StructureDefinition/cqf-calculatedValue",
            "valueExpression" : {
              "language" : "text/fhirpath",
              "expression" : "today() - 1 years"
            }
          }]
        }
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
        "valueDate" : "2026-01-01",
        "_valueDate" : {
          "extension" : [{
            "url" : "http://hl7.org/fhir/StructureDefinition/cqf-calculatedValue",
            "valueExpression" : {
              "language" : "text/fhirpath",
              "expression" : "today()"
            }
          }]
        }
      }],
      "linkId" : "3001",
      "text" : "Datum Ereignis",
      "type" : "date",
      "enableWhen" : [{
        "question" : "3052",
        "operator" : "=",
        "answerBoolean" : true
      }]
    },
    {
      "linkId" : "3040",
      "text" : "Datum 'last seen well' bekannt",
      "type" : "boolean"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
        "valueDate" : "2024-01-01",
        "_valueDate" : {
          "extension" : [{
            "url" : "http://hl7.org/fhir/StructureDefinition/cqf-calculatedValue",
            "valueExpression" : {
              "language" : "text/fhirpath",
              "expression" : "today() - 1 years"
            }
          }]
        }
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
        "valueDate" : "2026-01-01",
        "_valueDate" : {
          "extension" : [{
            "url" : "http://hl7.org/fhir/StructureDefinition/cqf-calculatedValue",
            "valueExpression" : {
              "language" : "text/fhirpath",
              "expression" : "today()"
            }
          }]
        }
      }],
      "linkId" : "3041",
      "text" : "Datum 'last seen well'",
      "type" : "date",
      "enableWhen" : [{
        "question" : "3040",
        "operator" : "=",
        "answerBoolean" : true
      }]
    },
    {
      "linkId" : "3053",
      "text" : "Uhrzeit Ereignis bekannt",
      "type" : "coding",
      "answerOption" : [{
        "valueCoding" : {
          "code" : "1",
          "display" : "ja"
        }
      },
      {
        "valueCoding" : {
          "code" : "2",
          "display" : "nein, im Schlaf"
        }
      },
      {
        "valueCoding" : {
          "code" : "3",
          "display" : "nein, nicht erhebbar"
        }
      }]
    },
    {
      "linkId" : "3003",
      "text" : "Uhrzeit Ereignis",
      "type" : "time",
      "enableWhen" : [{
        "question" : "3053",
        "operator" : "=",
        "answerCoding" : {
          "code" : "1"
        }
      }]
    },
    {
      "linkId" : "3050",
      "text" : "Uhrzeit 'last seen well' bekannt",
      "type" : "boolean",
      "enableWhen" : [{
        "question" : "3053",
        "operator" : "=",
        "answerCoding" : {
          "code" : "2"
        }
      },
      {
        "question" : "3053",
        "operator" : "=",
        "answerCoding" : {
          "code" : "3"
        }
      }],
      "enableBehavior" : "any"
    },
    {
      "linkId" : "3051",
      "text" : "Uhrzeit 'last seen well'",
      "type" : "time",
      "enableWhen" : [{
        "question" : "3050",
        "operator" : "=",
        "answerBoolean" : true
      }]
    },
    {
      "linkId" : "gruppe-ereignis-aufgetreten",
      "text" : "Ereignis aufgetreten",
      "type" : "group",
      "item" : [{
        "linkId" : "3005",
        "text" : "Ereignis aufgetreten",
        "type" : "coding",
        "answerOption" : [{
          "valueCoding" : {
            "code" : "1",
            "display" : "Im Wachzustand"
          }
        },
        {
          "valueCoding" : {
            "code" : "2",
            "display" : "Im Schlafzustand"
          }
        },
        {
          "valueCoding" : {
            "code" : "3",
            "display" : "Unbekannt"
          }
        }]
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
          "valueDate" : "2015-01-01",
          "_valueDate" : {
            "extension" : [{
              "url" : "http://hl7.org/fhir/StructureDefinition/cqf-calculatedValue",
              "valueExpression" : {
                "language" : "text/fhirpath",
                "expression" : "today() - 10 years"
              }
            }]
          }
        },
        {
          "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
          "valueDate" : "2026-01-01",
          "_valueDate" : {
            "extension" : [{
              "url" : "http://hl7.org/fhir/StructureDefinition/cqf-calculatedValue",
              "valueExpression" : {
                "language" : "text/fhirpath",
                "expression" : "today()"
              }
            }]
          }
        }],
        "linkId" : "3006",
        "text" : "Datum Krankenhausaufnahme",
        "type" : "date"
      },
      {
        "linkId" : "3007",
        "text" : "Uhrzeit Krankenhausaufnahme",
        "type" : "time"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
          "valueDate" : "2015-01-01",
          "_valueDate" : {
            "extension" : [{
              "url" : "http://hl7.org/fhir/StructureDefinition/cqf-calculatedValue",
              "valueExpression" : {
                "language" : "text/fhirpath",
                "expression" : "today() - 10 years"
              }
            }]
          }
        },
        {
          "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
          "valueDate" : "2026-01-01",
          "_valueDate" : {
            "extension" : [{
              "url" : "http://hl7.org/fhir/StructureDefinition/cqf-calculatedValue",
              "valueExpression" : {
                "language" : "text/fhirpath",
                "expression" : "today()"
              }
            }]
          }
        }],
        "linkId" : "3008",
        "text" : "Datum Aufnahme Stroke Unit",
        "type" : "date"
      },
      {
        "linkId" : "3009",
        "text" : "Uhrzeit Aufnahme Stroke Unit",
        "type" : "time"
      },
      {
        "linkId" : "3012",
        "text" : "Prehospital-SCORE erhoben",
        "type" : "boolean"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
          "valueInteger" : 0
        },
        {
          "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
          "valueInteger" : 40
        }],
        "linkId" : "3013",
        "text" : "Prehospital-SCORE Wert",
        "type" : "integer",
        "enableWhen" : [{
          "question" : "3012",
          "operator" : "=",
          "answerBoolean" : true
        }]
      },
      {
        "linkId" : "30541",
        "text" : "Zutransport",
        "type" : "coding",
        "answerOption" : [{
          "valueCoding" : {
            "code" : "1",
            "display" : "Zutransport intern"
          }
        },
        {
          "valueCoding" : {
            "code" : "2",
            "display" : "Zutransport extern"
          }
        }]
      }]
    },
    {
      "linkId" : "gruppe-zutransport-extern",
      "text" : "Zutransport extern",
      "type" : "group",
      "enableWhen" : [{
        "question" : "30541",
        "operator" : "=",
        "answerCoding" : {
          "code" : "2"
        }
      }],
      "item" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
          "valueCodeableConcept" : {
            "coding" : [{
              "system" : "http://hl7.org/fhir/questionnaire-item-control",
              "code" : "radio-button",
              "display" : "Radio Button"
            }]
          }
        }],
        "linkId" : "3010",
        "text" : "Zutransport extern",
        "type" : "coding",
        "answerOption" : [{
          "valueCoding" : {
            "code" : "1",
            "display" : "Anderes Krankenhaus"
          }
        },
        {
          "valueCoding" : {
            "code" : "2",
            "display" : "Direkt"
          }
        }]
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
          "valueCodeableConcept" : {
            "coding" : [{
              "system" : "http://hl7.org/fhir/questionnaire-item-control",
              "code" : "radio-button",
              "display" : "Radio Button"
            }]
          }
        }],
        "linkId" : "3011",
        "text" : "Art Zutransport – anderes Krankenhaus",
        "type" : "coding",
        "enableWhen" : [{
          "question" : "3010",
          "operator" : "=",
          "answerCoding" : {
            "code" : "1"
          }
        }],
        "answerOption" : [{
          "valueCoding" : {
            "code" : "1",
            "display" : "Rettung mit Notarzt"
          }
        },
        {
          "valueCoding" : {
            "code" : "2",
            "display" : "Rettung ohne Notarzt"
          }
        },
        {
          "valueCoding" : {
            "code" : "3",
            "display" : "Rettungshubschrauber"
          }
        }]
      },
      {
        "linkId" : "3020",
        "text" : "Art Zutransport – direkt",
        "type" : "coding",
        "enableWhen" : [{
          "question" : "3010",
          "operator" : "=",
          "answerCoding" : {
            "code" : "2"
          }
        }],
        "answerOption" : [{
          "valueCoding" : {
            "code" : "1",
            "display" : "Rettung mit Notarzt mit Aviso"
          }
        },
        {
          "valueCoding" : {
            "code" : "2",
            "display" : "Rettung ohne Notarzt mit Aviso"
          }
        },
        {
          "valueCoding" : {
            "code" : "3",
            "display" : "Rettungshubschrauber"
          }
        },
        {
          "valueCoding" : {
            "code" : "4",
            "display" : "Privat"
          }
        },
        {
          "valueCoding" : {
            "code" : "5",
            "display" : "Anderer"
          }
        },
        {
          "valueCoding" : {
            "code" : "6",
            "display" : "Rettung mit Notarzt ohne Aviso"
          }
        },
        {
          "valueCoding" : {
            "code" : "7",
            "display" : "Rettung ohne Notarzt ohne Aviso"
          }
        },
        {
          "valueCoding" : {
            "code" : "8",
            "display" : "Rettung mit Notarzt"
          }
        },
        {
          "valueCoding" : {
            "code" : "9",
            "display" : "Rettung ohne Notarzt"
          }
        }]
      },
      {
        "linkId" : "3021",
        "text" : "Welcher Zutransport (wenn 'Anderer')",
        "type" : "string",
        "enableWhen" : [{
          "question" : "3020",
          "operator" : "=",
          "answerCoding" : {
            "code" : "5"
          }
        }],
        "maxLength" : 64
      }]
    },
    {
      "linkId" : "gruppe-zutransport-intern",
      "text" : "Zutransport intern",
      "type" : "group",
      "enableWhen" : [{
        "question" : "30541",
        "operator" : "=",
        "answerCoding" : {
          "code" : "1"
        }
      }],
      "item" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
          "valueCodeableConcept" : {
            "coding" : [{
              "system" : "http://hl7.org/fhir/questionnaire-item-control",
              "code" : "radio-button",
              "display" : "Radio Button"
            }]
          }
        }],
        "linkId" : "zutransport-intern-auswahl",
        "text" : "Zutransport intern",
        "type" : "coding",
        "answerOption" : [{
          "valueCoding" : {
            "code" : "3055",
            "display" : "Ambulanz"
          }
        },
        {
          "valueCoding" : {
            "code" : "3056",
            "display" : "Andere Fachabteilung"
          }
        },
        {
          "valueCoding" : {
            "code" : "3057",
            "display" : "Direkt an die Stroke Unit"
          }
        },
        {
          "valueCoding" : {
            "code" : "3058",
            "display" : "Notaufnahme"
          }
        },
        {
          "valueCoding" : {
            "code" : "3059",
            "display" : "Eigene Fachabteilung"
          }
        },
        {
          "valueCoding" : {
            "code" : "3060",
            "display" : "Schlaganfall im Krankenhaus"
          }
        }]
      }]
    }]
  },
  {
    "linkId" : "gruppe-nih-aufnahme",
    "text" : "NIH Stroke Scale bei Aufnahme",
    "type" : "group",
    "enableWhen" : [{
      "question" : "2006",
      "operator" : "=",
      "answerCoding" : {
        "code" : "1"
      }
    }],
    "item" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
        "valueInteger" : 0
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
        "valueInteger" : 42
      }],
      "linkId" : "4020",
      "text" : "Gesamtsumme NIH - SS bei Aufnahme",
      "type" : "integer"
    }]
  },
  {
    "linkId" : "gruppe-rankinskala-aufnahme",
    "text" : "Rankinskala bei Aufnahme",
    "type" : "group",
    "enableWhen" : [{
      "question" : "2006",
      "operator" : "=",
      "answerCoding" : {
        "code" : "1"
      }
    }],
    "item" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
        "valueInteger" : 0
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
        "valueInteger" : 5
      }],
      "linkId" : "6001",
      "text" : "Rankinskala vor Insult",
      "type" : "integer"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
        "valueInteger" : 0
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
        "valueInteger" : 5
      }],
      "linkId" : "6002",
      "text" : "Rankinskala bei Aufnahme",
      "type" : "integer"
    }]
  },
  {
    "linkId" : "gruppe-syndrom",
    "text" : "Syndrom",
    "type" : "group",
    "enableWhen" : [{
      "question" : "2006",
      "operator" : "=",
      "answerCoding" : {
        "code" : "1"
      }
    }],
    "item" : [{
      "linkId" : "7001",
      "text" : "Syndrom",
      "type" : "coding",
      "answerOption" : [{
        "valueCoding" : {
          "code" : "1",
          "display" : "Ischämie"
        }
      },
      {
        "valueCoding" : {
          "code" : "2",
          "display" : "Primäre intrazerebrale Blutung"
        }
      },
      {
        "valueCoding" : {
          "code" : "3",
          "display" : "Sinus-/Venenthrombose (SVT)"
        }
      },
      {
        "valueCoding" : {
          "code" : "4",
          "display" : "Subarachnoidalblutung (SAB)"
        }
      }]
    },
    {
      "linkId" : "gruppe-lokalisation-ischamie",
      "text" : "Lokalisation",
      "type" : "group",
      "enableWhen" : [{
        "question" : "7001",
        "operator" : "=",
        "answerCoding" : {
          "code" : "1"
        }
      }],
      "item" : [{
        "linkId" : "7005",
        "text" : "Lokalisation Ischämie",
        "type" : "coding",
        "answerOption" : [{
          "valueCoding" : {
            "code" : "1",
            "display" : "Linke Großhirnhemisphäre"
          }
        },
        {
          "valueCoding" : {
            "code" : "2",
            "display" : "Rechte Großhirnhemisphäre"
          }
        },
        {
          "valueCoding" : {
            "code" : "3",
            "display" : "Beide Großhirnhemisphären"
          }
        },
        {
          "valueCoding" : {
            "code" : "4",
            "display" : "Vorwiegend Hirnstamm"
          }
        },
        {
          "valueCoding" : {
            "code" : "5",
            "display" : "Vorwiegend Kleinhirn"
          }
        },
        {
          "valueCoding" : {
            "code" : "6",
            "display" : "Retina"
          }
        },
        {
          "valueCoding" : {
            "code" : "7",
            "display" : "Rückenmark"
          }
        }]
      }]
    },
    {
      "linkId" : "gruppe-klinisches-syndrom",
      "text" : "Klinisches Syndrom",
      "type" : "group",
      "enableWhen" : [{
        "question" : "7001",
        "operator" : "=",
        "answerCoding" : {
          "code" : "1"
        }
      }],
      "item" : [{
        "linkId" : "7010",
        "text" : "Klinisches Syndrom",
        "type" : "coding",
        "answerOption" : [{
          "valueCoding" : {
            "code" : "1",
            "display" : "LACS"
          }
        },
        {
          "valueCoding" : {
            "code" : "2",
            "display" : "TACS"
          }
        },
        {
          "valueCoding" : {
            "code" : "3",
            "display" : "PACS"
          }
        },
        {
          "valueCoding" : {
            "code" : "4",
            "display" : "POCS"
          }
        },
        {
          "valueCoding" : {
            "code" : "5",
            "display" : "Anderes"
          }
        }]
      },
      {
        "linkId" : "7011",
        "text" : "Welches anderes klinisches Syndrom",
        "type" : "string",
        "enableWhen" : [{
          "question" : "7010",
          "operator" : "=",
          "answerCoding" : {
            "code" : "5"
          }
        }],
        "maxLength" : 64
      }]
    },
    {
      "linkId" : "gruppe-lokalisation-icb",
      "text" : "Lokalisation",
      "type" : "group",
      "enableWhen" : [{
        "question" : "7001",
        "operator" : "=",
        "answerCoding" : {
          "code" : "2"
        }
      }],
      "item" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
          "valueCodeableConcept" : {
            "coding" : [{
              "system" : "http://hl7.org/fhir/questionnaire-item-control",
              "code" : "radio-button",
              "display" : "Radio Button"
            }]
          }
        }],
        "linkId" : "7015",
        "text" : "Seite primäre intrazerebrale Blutung",
        "type" : "coding",
        "answerOption" : [{
          "valueCoding" : {
            "code" : "1",
            "display" : "Links"
          }
        },
        {
          "valueCoding" : {
            "code" : "2",
            "display" : "Rechts"
          }
        },
        {
          "valueCoding" : {
            "code" : "3",
            "display" : "Beidseits"
          }
        }]
      }]
    },
    {
      "linkId" : "gruppe-lokalisation-primaere-icb",
      "text" : "Lokalisation primäre intrazerebrale Blutung",
      "type" : "group",
      "enableWhen" : [{
        "question" : "7001",
        "operator" : "=",
        "answerCoding" : {
          "code" : "2"
        }
      }],
      "item" : [{
        "linkId" : "7022",
        "text" : "Stammganglien",
        "type" : "boolean"
      },
      {
        "linkId" : "7023",
        "text" : "Thalamus",
        "type" : "boolean"
      },
      {
        "linkId" : "7024",
        "text" : "Cerebellum",
        "type" : "boolean"
      },
      {
        "linkId" : "7025",
        "text" : "Lobär",
        "type" : "boolean"
      },
      {
        "linkId" : "7026",
        "text" : "Pons",
        "type" : "boolean"
      },
      {
        "linkId" : "7027",
        "text" : "IVH (intraventricular hemorrhage)",
        "type" : "boolean"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
          "valueCodeableConcept" : {
            "coding" : [{
              "system" : "http://hl7.org/fhir/questionnaire-item-control",
              "code" : "radio-button",
              "display" : "Radio Button"
            }]
          }
        }],
        "linkId" : "7030",
        "text" : "Wenn IVH: Lokalisation",
        "type" : "coding",
        "enableWhen" : [{
          "question" : "7027",
          "operator" : "=",
          "answerBoolean" : true
        }],
        "answerOption" : [{
          "valueCoding" : {
            "code" : "1",
            "display" : "Seitenventrikel"
          }
        },
        {
          "valueCoding" : {
            "code" : "2",
            "display" : "3. oder 4. Ventrikel"
          }
        }]
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
          "valueInteger" : 3
        },
        {
          "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
          "valueInteger" : 15
        }],
        "linkId" : "7050",
        "text" : "GCS bei Aufnahme",
        "type" : "integer"
      },
      {
        "linkId" : "7060",
        "text" : "ICB bei Aufnahme bestimmt",
        "type" : "boolean"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
          "valueDecimal" : 0
        },
        {
          "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
          "valueDecimal" : 500
        }],
        "linkId" : "7061",
        "text" : "Volumen in ml",
        "type" : "decimal",
        "enableWhen" : [{
          "question" : "7060",
          "operator" : "=",
          "answerBoolean" : true
        }]
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
          "valueInteger" : 0
        },
        {
          "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
          "valueInteger" : 12
        }],
        "linkId" : "7072",
        "text" : "GRAEB Score",
        "type" : "integer",
        "required" : false
      }]
    }]
  },
  {
    "linkId" : "gruppe-diagnostik",
    "text" : "Diagnostik",
    "type" : "group",
    "enableWhen" : [{
      "question" : "2006",
      "operator" : "=",
      "answerCoding" : {
        "code" : "1"
      }
    }],
    "item" : [{
      "linkId" : "gruppe-erste-bildgebung",
      "text" : "Erste Bildgebung",
      "type" : "group",
      "item" : [{
        "linkId" : "8888",
        "text" : "Bildgebende Untersuchung durchgeführt",
        "type" : "boolean"
      },
      {
        "linkId" : "8000",
        "text" : "Bereits vor Krankenhausaufnahme durchgeführt",
        "type" : "boolean",
        "enableWhen" : [{
          "question" : "8888",
          "operator" : "=",
          "answerBoolean" : true
        }]
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
          "valueDate" : "2015-01-01",
          "_valueDate" : {
            "extension" : [{
              "url" : "http://hl7.org/fhir/StructureDefinition/cqf-calculatedValue",
              "valueExpression" : {
                "language" : "text/fhirpath",
                "expression" : "today() - 10 years"
              }
            }]
          }
        },
        {
          "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
          "valueDate" : "2026-01-01",
          "_valueDate" : {
            "extension" : [{
              "url" : "http://hl7.org/fhir/StructureDefinition/cqf-calculatedValue",
              "valueExpression" : {
                "language" : "text/fhirpath",
                "expression" : "today()"
              }
            }]
          }
        }],
        "linkId" : "8001",
        "text" : "Datum",
        "type" : "date",
        "enableWhen" : [{
          "question" : "8000",
          "operator" : "=",
          "answerBoolean" : true
        },
        {
          "question" : "8003",
          "operator" : "=",
          "answerBoolean" : true
        },
        {
          "question" : "8004",
          "operator" : "=",
          "answerBoolean" : true
        }],
        "enableBehavior" : "any"
      },
      {
        "linkId" : "8002",
        "text" : "Uhrzeit CCT",
        "type" : "time",
        "enableWhen" : [{
          "question" : "8000",
          "operator" : "=",
          "answerBoolean" : true
        },
        {
          "question" : "8003",
          "operator" : "=",
          "answerBoolean" : true
        },
        {
          "question" : "8004",
          "operator" : "=",
          "answerBoolean" : true
        }],
        "enableBehavior" : "any"
      }]
    },
    {
      "linkId" : "gruppe-bildgebung-verfahren",
      "text" : "Bildgebendes Verfahren",
      "type" : "group",
      "enableWhen" : [{
        "question" : "8888",
        "operator" : "=",
        "answerBoolean" : true
      }],
      "item" : [{
        "linkId" : "8003",
        "text" : "CCT durchgeführt",
        "type" : "boolean"
      },
      {
        "linkId" : "8004",
        "text" : "MRI durchgeführt",
        "type" : "boolean"
      }]
    },
    {
      "linkId" : "gruppe-gefäßdiagnostik-extrakraniell",
      "text" : "Erste Untersuchung der hirnzuführenden Gefäße (extrakraniell)",
      "type" : "group",
      "item" : [{
        "linkId" : "8889",
        "text" : "Untersuchung der hirnzuführenden Gefäße durchgeführt",
        "type" : "boolean"
      },
      {
        "linkId" : "8011",
        "text" : "Bereits vor Krankenhausaufnahme durchgeführt",
        "type" : "boolean",
        "enableWhen" : [{
          "question" : "8889",
          "operator" : "=",
          "answerBoolean" : true
        }]
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
          "valueDate" : "2015-01-01",
          "_valueDate" : {
            "extension" : [{
              "url" : "http://hl7.org/fhir/StructureDefinition/cqf-calculatedValue",
              "valueExpression" : {
                "language" : "text/fhirpath",
                "expression" : "today() - 10 years"
              }
            }]
          }
        },
        {
          "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
          "valueDate" : "2026-01-01",
          "_valueDate" : {
            "extension" : [{
              "url" : "http://hl7.org/fhir/StructureDefinition/cqf-calculatedValue",
              "valueExpression" : {
                "language" : "text/fhirpath",
                "expression" : "today()"
              }
            }]
          }
        }],
        "linkId" : "8009",
        "text" : "Datum",
        "type" : "date",
        "enableWhen" : [{
          "question" : "8011",
          "operator" : "=",
          "answerBoolean" : true
        },
        {
          "question" : "8008",
          "operator" : "=",
          "answerBoolean" : true
        },
        {
          "question" : "8013",
          "operator" : "=",
          "answerBoolean" : true
        },
        {
          "question" : "8006",
          "operator" : "=",
          "answerBoolean" : true
        }],
        "enableBehavior" : "any"
      },
      {
        "linkId" : "8010",
        "text" : "Uhrzeit",
        "type" : "time",
        "enableWhen" : [{
          "question" : "8011",
          "operator" : "=",
          "answerBoolean" : true
        },
        {
          "question" : "8008",
          "operator" : "=",
          "answerBoolean" : true
        },
        {
          "question" : "8013",
          "operator" : "=",
          "answerBoolean" : true
        },
        {
          "question" : "8006",
          "operator" : "=",
          "answerBoolean" : true
        }],
        "enableBehavior" : "any"
      },
      {
        "linkId" : "8008",
        "text" : "Sonografie",
        "type" : "boolean",
        "enableWhen" : [{
          "question" : "8889",
          "operator" : "=",
          "answerBoolean" : true
        }]
      },
      {
        "linkId" : "8013",
        "text" : "CTA",
        "type" : "boolean",
        "enableWhen" : [{
          "question" : "8889",
          "operator" : "=",
          "answerBoolean" : true
        }]
      },
      {
        "linkId" : "8006",
        "text" : "MR-Angio",
        "type" : "boolean",
        "enableWhen" : [{
          "question" : "8889",
          "operator" : "=",
          "answerBoolean" : true
        }]
      },
      {
        "linkId" : "8030",
        "text" : "Erste Untersuchung der Hirngefäße",
        "type" : "coding",
        "answerOption" : [{
          "valueCoding" : {
            "code" : "1",
            "display" : "Sonografie"
          }
        },
        {
          "valueCoding" : {
            "code" : "2",
            "display" : "CTA"
          }
        },
        {
          "valueCoding" : {
            "code" : "3",
            "display" : "MR-Angio"
          }
        },
        {
          "valueCoding" : {
            "code" : "4",
            "display" : "DSA"
          }
        },
        {
          "valueCoding" : {
            "code" : "5",
            "display" : "keine"
          }
        }]
      },
      {
        "linkId" : "8060",
        "text" : "Gefäßverschluss (Hauptstamm)",
        "type" : "boolean"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
          "valueCodeableConcept" : {
            "coding" : [{
              "system" : "http://hl7.org/fhir/questionnaire-item-control",
              "code" : "check-box",
              "display" : "Check-box"
            }]
          }
        },
        {
          "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-openLabel",
          "valueString" : "Sonstiger Verschluss (bitte angeben)"
        }],
        "linkId" : "806X",
        "text" : "Lokalisation des Gefäßverschlusses",
        "type" : "coding",
        "enableWhen" : [{
          "question" : "8060",
          "operator" : "=",
          "answerBoolean" : true
        }],
        "repeats" : true,
        "answerConstraint" : "optionsOrString",
        "answerOption" : [{
          "valueCoding" : {
            "system" : "http://example.org/CodeSystem/vessel-occlusion",
            "code" : "8061",
            "display" : "M1-Verschluss"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://example.org/CodeSystem/vessel-occlusion",
            "code" : "8062",
            "display" : "M2-Verschluss"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://example.org/CodeSystem/vessel-occlusion",
            "code" : "8063",
            "display" : "T-Gabelverschluss"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://example.org/CodeSystem/vessel-occlusion",
            "code" : "8064",
            "display" : "Distaler ACI-Verschluss, T-Gabel jedoch offen"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://example.org/CodeSystem/vessel-occlusion",
            "code" : "8065",
            "display" : "Basilaris-Verschluss"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://example.org/CodeSystem/vessel-occlusion",
            "code" : "8066",
            "display" : "V4-Verschluss"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://example.org/CodeSystem/vessel-occlusion",
            "code" : "8067",
            "display" : "A. c. posterior-Verschluss"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://example.org/CodeSystem/vessel-occlusion",
            "code" : "8071",
            "display" : "A. c. anterior-Verschluss"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://example.org/CodeSystem/vessel-occlusion",
            "code" : "8072",
            "display" : "Verschluss der proximalen ACI"
          }
        },
        {
          "valueCoding" : {
            "system" : "http://example.org/CodeSystem/vessel-occlusion",
            "code" : "8073",
            "display" : "Stenose der proximalen ACI (wenn >= 70 %)"
          }
        }]
      }]
    }]
  },
  {
    "linkId" : "gruppe-vortherapie",
    "text" : "Vortherapie bei Aufnahme (Antithrombotische Therapie)",
    "type" : "group",
    "enableWhen" : [{
      "question" : "2006",
      "operator" : "=",
      "answerCoding" : {
        "code" : "1"
      }
    }],
    "item" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://hl7.org/fhir/questionnaire-item-control",
            "code" : "radio-button",
            "display" : "Radio Button"
          }]
        }
      }],
      "linkId" : "8070",
      "text" : "Plättchenhemmer",
      "type" : "coding",
      "answerOption" : [{
        "valueCoding" : {
          "code" : "1",
          "display" : "Mono"
        }
      },
      {
        "valueCoding" : {
          "code" : "2",
          "display" : "Dual"
        }
      },
      {
        "valueCoding" : {
          "code" : "0",
          "display" : "Nein"
        }
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://hl7.org/fhir/questionnaire-item-control",
            "code" : "radio-button",
            "display" : "Radio Button"
          }]
        }
      }],
      "linkId" : "8075",
      "text" : "Vitamin K Antagonist",
      "type" : "coding",
      "answerOption" : [{
        "valueCoding" : {
          "code" : "1",
          "display" : "ja"
        }
      },
      {
        "valueCoding" : {
          "code" : "2",
          "display" : "derzeit pausiert"
        }
      },
      {
        "valueCoding" : {
          "code" : "0",
          "display" : "nein"
        }
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
        "valueDecimal" : 0
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
        "valueDecimal" : 9.9
      }],
      "linkId" : "8076",
      "text" : "INR-Wert bei Aufnahme",
      "type" : "decimal",
      "enableWhen" : [{
        "question" : "8075",
        "operator" : "=",
        "answerCoding" : {
          "code" : "1"
        }
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://hl7.org/fhir/questionnaire-item-control",
            "code" : "radio-button",
            "display" : "Radio Button"
          }]
        }
      }],
      "linkId" : "8080",
      "text" : "Apixaban",
      "type" : "coding",
      "answerOption" : [{
        "valueCoding" : {
          "code" : "1",
          "display" : "ja"
        }
      },
      {
        "valueCoding" : {
          "code" : "2",
          "display" : "derzeit pausiert"
        }
      },
      {
        "valueCoding" : {
          "code" : "0",
          "display" : "nein"
        }
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://hl7.org/fhir/questionnaire-item-control",
            "code" : "radio-button",
            "display" : "Radio Button"
          }]
        }
      }],
      "linkId" : "8085",
      "text" : "Dabigatran",
      "type" : "coding",
      "answerOption" : [{
        "valueCoding" : {
          "code" : "1",
          "display" : "ja"
        }
      },
      {
        "valueCoding" : {
          "code" : "2",
          "display" : "derzeit pausiert"
        }
      },
      {
        "valueCoding" : {
          "code" : "0",
          "display" : "nein"
        }
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://hl7.org/fhir/questionnaire-item-control",
            "code" : "radio-button",
            "display" : "Radio Button"
          }]
        }
      }],
      "linkId" : "8090",
      "text" : "Edoxaban",
      "type" : "coding",
      "answerOption" : [{
        "valueCoding" : {
          "code" : "1",
          "display" : "ja"
        }
      },
      {
        "valueCoding" : {
          "code" : "2",
          "display" : "derzeit pausiert"
        }
      },
      {
        "valueCoding" : {
          "code" : "0",
          "display" : "nein"
        }
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://hl7.org/fhir/questionnaire-item-control",
            "code" : "radio-button",
            "display" : "Radio Button"
          }]
        }
      }],
      "linkId" : "8095",
      "text" : "Rivaroxaban",
      "type" : "coding",
      "answerOption" : [{
        "valueCoding" : {
          "code" : "1",
          "display" : "ja"
        }
      },
      {
        "valueCoding" : {
          "code" : "2",
          "display" : "derzeit pausiert"
        }
      },
      {
        "valueCoding" : {
          "code" : "0",
          "display" : "nein"
        }
      }]
    }]
  },
  {
    "linkId" : "gruppe-risikofaktoren",
    "text" : "Risikofaktoren und Begleiterkrankungen",
    "type" : "group",
    "enableWhen" : [{
      "question" : "2006",
      "operator" : "=",
      "answerCoding" : {
        "code" : "1"
      }
    }],
    "item" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://hl7.org/fhir/questionnaire-item-control",
            "code" : "radio-button",
            "display" : "Radio Button"
          }]
        }
      }],
      "linkId" : "9001",
      "text" : "Hypertonie",
      "type" : "coding",
      "answerOption" : [{
        "valueCoding" : {
          "code" : "1",
          "display" : "ja"
        }
      },
      {
        "valueCoding" : {
          "code" : "0",
          "display" : "nein"
        }
      },
      {
        "valueCoding" : {
          "code" : "2",
          "display" : "unbekannt"
        }
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://hl7.org/fhir/questionnaire-item-control",
            "code" : "radio-button",
            "display" : "Radio Button"
          }]
        }
      }],
      "linkId" : "9002",
      "text" : "Diabetes mellitus",
      "type" : "coding",
      "answerOption" : [{
        "valueCoding" : {
          "code" : "1",
          "display" : "ja"
        }
      },
      {
        "valueCoding" : {
          "code" : "0",
          "display" : "nein"
        }
      },
      {
        "valueCoding" : {
          "code" : "2",
          "display" : "unbekannt"
        }
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://hl7.org/fhir/questionnaire-item-control",
            "code" : "radio-button",
            "display" : "Radio Button"
          }]
        }
      }],
      "linkId" : "9003",
      "text" : "Vorinsult",
      "type" : "coding",
      "answerOption" : [{
        "valueCoding" : {
          "code" : "1",
          "display" : "ja"
        }
      },
      {
        "valueCoding" : {
          "code" : "0",
          "display" : "nein"
        }
      },
      {
        "valueCoding" : {
          "code" : "2",
          "display" : "unbekannt"
        }
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://hl7.org/fhir/questionnaire-item-control",
            "code" : "radio-button",
            "display" : "Radio Button"
          }]
        }
      }],
      "linkId" : "9004",
      "text" : "Herzinfarkt",
      "type" : "coding",
      "answerOption" : [{
        "valueCoding" : {
          "code" : "1",
          "display" : "ja"
        }
      },
      {
        "valueCoding" : {
          "code" : "0",
          "display" : "nein"
        }
      },
      {
        "valueCoding" : {
          "code" : "2",
          "display" : "unbekannt"
        }
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://hl7.org/fhir/questionnaire-item-control",
            "code" : "radio-button",
            "display" : "Radio Button"
          }]
        }
      }],
      "linkId" : "9005",
      "text" : "Hypercholesterinämie",
      "type" : "coding",
      "answerOption" : [{
        "valueCoding" : {
          "code" : "1",
          "display" : "ja"
        }
      },
      {
        "valueCoding" : {
          "code" : "0",
          "display" : "nein"
        }
      },
      {
        "valueCoding" : {
          "code" : "2",
          "display" : "unbekannt"
        }
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
        "valueInteger" : 0
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
        "valueInteger" : 24
      }],
      "linkId" : "9015",
      "text" : "DLCN Score",
      "type" : "integer",
      "enableWhen" : [{
        "question" : "9005",
        "operator" : "=",
        "answerCoding" : {
          "code" : "1"
        }
      }],
      "required" : false
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://hl7.org/fhir/questionnaire-item-control",
            "code" : "radio-button",
            "display" : "Radio Button"
          }]
        }
      }],
      "linkId" : "9006",
      "text" : "Vorhofflimmern",
      "type" : "coding",
      "answerOption" : [{
        "valueCoding" : {
          "code" : "1",
          "display" : "ja bereits bekannt"
        }
      },
      {
        "valueCoding" : {
          "code" : "3",
          "display" : "ja De-Novo (EKG)"
        }
      },
      {
        "valueCoding" : {
          "code" : "0",
          "display" : "nein"
        }
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://hl7.org/fhir/questionnaire-item-control",
            "code" : "radio-button",
            "display" : "Radio Button"
          }]
        }
      }],
      "linkId" : "9009",
      "text" : "Nikotin",
      "type" : "coding",
      "answerOption" : [{
        "valueCoding" : {
          "code" : "1",
          "display" : "ja"
        }
      },
      {
        "valueCoding" : {
          "code" : "0",
          "display" : "nein"
        }
      },
      {
        "valueCoding" : {
          "code" : "2",
          "display" : "unbekannt"
        }
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://hl7.org/fhir/questionnaire-item-control",
            "code" : "radio-button",
            "display" : "Radio Button"
          }]
        }
      }],
      "linkId" : "9012",
      "text" : "Alkohol",
      "type" : "coding",
      "answerOption" : [{
        "valueCoding" : {
          "code" : "1",
          "display" : "ja"
        }
      },
      {
        "valueCoding" : {
          "code" : "0",
          "display" : "nein"
        }
      },
      {
        "valueCoding" : {
          "code" : "2",
          "display" : "unbekannt"
        }
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://hl7.org/fhir/questionnaire-item-control",
            "code" : "radio-button",
            "display" : "Radio Button"
          }]
        }
      }],
      "linkId" : "9013",
      "text" : "Niereninsuffizienz",
      "type" : "coding",
      "answerOption" : [{
        "valueCoding" : {
          "code" : "1",
          "display" : "ja"
        }
      },
      {
        "valueCoding" : {
          "code" : "0",
          "display" : "nein"
        }
      },
      {
        "valueCoding" : {
          "code" : "2",
          "display" : "unbekannt"
        }
      }]
    }]
  },
  {
    "linkId" : "gruppe-therapie-ischämisch",
    "text" : "Therapie ischämischer Schlaganfall",
    "type" : "group",
    "enableWhen" : [{
      "question" : "2006",
      "operator" : "=",
      "answerCoding" : {
        "code" : "1"
      }
    }],
    "item" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://hl7.org/fhir/questionnaire-item-control",
            "code" : "radio-button",
            "display" : "Radio Button"
          }]
        }
      }],
      "linkId" : "10001",
      "text" : "Lyse i.v.",
      "type" : "coding",
      "answerOption" : [{
        "valueCoding" : {
          "code" : "1",
          "display" : "ja"
        }
      },
      {
        "valueCoding" : {
          "code" : "0",
          "display" : "nein"
        }
      },
      {
        "valueCoding" : {
          "code" : "2",
          "display" : "extern durchgeführt"
        }
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://hl7.org/fhir/questionnaire-item-control",
            "code" : "radio-button",
            "display" : "Radio Button"
          }]
        }
      }],
      "linkId" : "10002",
      "text" : "Art der Thrombolyse",
      "type" : "coding",
      "enableWhen" : [{
        "question" : "10001",
        "operator" : "=",
        "answerCoding" : {
          "code" : "1"
        }
      }],
      "answerOption" : [{
        "valueCoding" : {
          "code" : "1",
          "display" : "Alteplase"
        }
      },
      {
        "valueCoding" : {
          "code" : "2",
          "display" : "Tenecteplase"
        }
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
        "valueDate" : "2015-01-01",
        "_valueDate" : {
          "extension" : [{
            "url" : "http://hl7.org/fhir/StructureDefinition/cqf-calculatedValue",
            "valueExpression" : {
              "language" : "text/fhirpath",
              "expression" : "today() - 10 years"
            }
          }]
        }
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
        "valueDate" : "2026-01-01",
        "_valueDate" : {
          "extension" : [{
            "url" : "http://hl7.org/fhir/StructureDefinition/cqf-calculatedValue",
            "valueExpression" : {
              "language" : "text/fhirpath",
              "expression" : "today()"
            }
          }]
        }
      }],
      "linkId" : "10040",
      "text" : "Datum Lyse i.v.",
      "type" : "date",
      "enableWhen" : [{
        "question" : "10001",
        "operator" : "=",
        "answerCoding" : {
          "code" : "1"
        }
      }]
    },
    {
      "linkId" : "10041",
      "text" : "Uhrzeit Lyse i.v.",
      "type" : "time",
      "enableWhen" : [{
        "question" : "10001",
        "operator" : "=",
        "answerCoding" : {
          "code" : "1"
        }
      }]
    },
    {
      "linkId" : "10090",
      "text" : "Akute endovaskuläre Behandlung",
      "type" : "boolean"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://hl7.org/fhir/questionnaire-item-control",
            "code" : "radio-button",
            "display" : "Radio Button"
          }]
        }
      }],
      "linkId" : "10005",
      "text" : "Thrombozytenaggregationshemmer",
      "type" : "coding",
      "answerOption" : [{
        "valueCoding" : {
          "code" : "2",
          "display" : "Mono"
        }
      },
      {
        "valueCoding" : {
          "code" : "3",
          "display" : "Dual"
        }
      },
      {
        "valueCoding" : {
          "code" : "0",
          "display" : "Nein"
        }
      }]
    },
    {
      "linkId" : "10091",
      "text" : "Heparin",
      "type" : "coding",
      "answerOption" : [{
        "valueCoding" : {
          "code" : "1",
          "display" : "Keines"
        }
      },
      {
        "valueCoding" : {
          "code" : "2",
          "display" : "Low"
        }
      },
      {
        "valueCoding" : {
          "code" : "3",
          "display" : "Medium"
        }
      },
      {
        "valueCoding" : {
          "code" : "4",
          "display" : "High"
        }
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://hl7.org/fhir/questionnaire-item-control",
            "code" : "radio-button",
            "display" : "Radio Button"
          }]
        }
      }],
      "linkId" : "10092",
      "text" : "PTA/Stent der ACI",
      "type" : "coding",
      "answerOption" : [{
        "valueCoding" : {
          "code" : "1",
          "display" : "ja"
        }
      },
      {
        "valueCoding" : {
          "code" : "0",
          "display" : "nein"
        }
      },
      {
        "valueCoding" : {
          "code" : "2",
          "display" : "vorgesehen"
        }
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://hl7.org/fhir/questionnaire-item-control",
            "code" : "radio-button",
            "display" : "Radio Button"
          }]
        }
      }],
      "linkId" : "10093",
      "text" : "CEA",
      "type" : "coding",
      "answerOption" : [{
        "valueCoding" : {
          "code" : "1",
          "display" : "ja"
        }
      },
      {
        "valueCoding" : {
          "code" : "0",
          "display" : "nein"
        }
      },
      {
        "valueCoding" : {
          "code" : "2",
          "display" : "vorgesehen"
        }
      }]
    }]
  },
  {
    "linkId" : "gruppe-therapie-icb",
    "text" : "Therapie intrazerebrale Blutung",
    "type" : "group",
    "enableWhen" : [{
      "question" : "2006",
      "operator" : "=",
      "answerCoding" : {
        "code" : "1"
      }
    },
    {
      "question" : "7001",
      "operator" : "=",
      "answerCoding" : {
        "code" : "2"
      }
    }],
    "enableBehavior" : "all",
    "item" : [{
      "linkId" : "10060",
      "text" : "Externe Ventrikel-Drainage",
      "type" : "boolean"
    },
    {
      "linkId" : "10061",
      "text" : "Lumbale Drainage",
      "type" : "boolean"
    },
    {
      "linkId" : "10062",
      "text" : "Intraventrikuläre Lyse",
      "type" : "boolean"
    },
    {
      "linkId" : "10063",
      "text" : "Operative Ausräumung",
      "type" : "boolean"
    },
    {
      "linkId" : "10064",
      "text" : "Hypothermie",
      "type" : "boolean"
    }]
  }]
}

```
