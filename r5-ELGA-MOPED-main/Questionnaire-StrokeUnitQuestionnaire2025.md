# ELGA.MOPED\Stroke Unit Registermeldung – Patientendaten - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Stroke Unit Registermeldung – Patientendaten**

## Questionnaire: Stroke Unit Registermeldung – Patientendaten 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/Questionnaire/StrokeUnitQuestionnaire2025 | *Version*:0.1.0 | |
| Active as of 2026-03-29 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:StrokeUnitQuestionnaire |

 
Fragen zur Registermeldung Stroke Unit – Abschnitt Patientendaten 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "StrokeUnitQuestionnaire2025",
  "url" : "https://elga.moped.at/Questionnaire/StrokeUnitQuestionnaire2025",
  "version" : "0.1.0",
  "name" : "StrokeUnitQuestionnaire",
  "title" : "Stroke Unit Registermeldung – Patientendaten",
  "status" : "active",
  "date" : "2026-03-29T08:30:46+00:00",
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
        "linkId" : "2060",
        "text" : "Bereichsspezifisches Personenkennzeichen Gesundheit (bPK GH)",
        "type" : "string"
      },
      {
        "linkId" : "2061",
        "text" : "Fremd-bPK amtliche Statistik (fremd-bPK AS)",
        "type" : "string"
      },
      {
        "linkId" : "2040",
        "text" : "Vorname",
        "type" : "string",
        "enableWhen" : [{
          "question" : "2060",
          "operator" : "exists",
          "answerBoolean" : false
        },
        {
          "question" : "2061",
          "operator" : "exists",
          "answerBoolean" : false
        }],
        "enableBehavior" : "any",
        "disabledDisplay" : "hidden",
        "maxLength" : 64
      },
      {
        "linkId" : "2041",
        "text" : "Nachname",
        "type" : "string",
        "enableWhen" : [{
          "question" : "2060",
          "operator" : "exists",
          "answerBoolean" : false
        },
        {
          "question" : "2061",
          "operator" : "exists",
          "answerBoolean" : false
        }],
        "enableBehavior" : "any",
        "maxLength" : 64
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
          "valueDate" : "1900-01-01"
        },
        {
          "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
          "valueDate" : "2026-01-01"
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
        "valueDate" : "2024-01-01"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
        "valueDate" : "2026-01-01"
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
        "valueDate" : "2024-01-01"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
        "valueDate" : "2026-01-01"
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
          "valueDate" : "2015-01-01"
        },
        {
          "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
          "valueDate" : "2026-01-01"
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
          "valueDate" : "2015-01-01"
        },
        {
          "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
          "valueDate" : "2026-01-01"
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
          "valueDate" : "2015-01-01"
        },
        {
          "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
          "valueDate" : "2026-01-01"
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
          "valueDate" : "2015-01-01"
        },
        {
          "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
          "valueDate" : "2026-01-01"
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
          "url" : "http://hl7.org/fhir/uv/sdc/StructureDefinition/sdc-questionnaire-openLabel",
          "valueString" : "Sonstiger Verschluss (bitte angeben)"
        },
        {
          "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
          "valueCodeableConcept" : {
            "coding" : [{
              "system" : "http://hl7.org/fhir/questionnaire-item-control",
              "code" : "check-box",
              "display" : "Check-box"
            }]
          }
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
    "enableBehavior" : "all",
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
        "valueDate" : "2015-01-01"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
        "valueDate" : "2026-01-01"
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
  },
  {
    "linkId" : "gruppe-therapie-icb-ischämisch",
    "text" : "Therapie ischämischer Schlaganfall oder intrazerebrale Blutung",
    "type" : "group",
    "enableWhen" : [{
      "question" : "2006",
      "operator" : "=",
      "answerCoding" : {
        "code" : "1",
        "display" : "ja"
      }
    }],
    "enableBehavior" : "any",
    "item" : [{
      "linkId" : "10014",
      "text" : "Nasogastrische Sonde",
      "type" : "boolean"
    },
    {
      "linkId" : "10017",
      "text" : "Op. Dekompression",
      "type" : "boolean"
    },
    {
      "linkId" : "10070",
      "text" : "Antagonisierung (N)OAK",
      "type" : "boolean"
    },
    {
      "linkId" : "10071",
      "text" : "Falls Antagonisierung \"Ja\"",
      "type" : "coding",
      "enableWhen" : [{
        "question" : "10070",
        "operator" : "=",
        "answerBoolean" : true
      }],
      "answerOption" : [{
        "valueCoding" : {
          "code" : "1",
          "display" : "PPSB"
        }
      },
      {
        "valueCoding" : {
          "code" : "2",
          "display" : "FFP"
        }
      },
      {
        "valueCoding" : {
          "code" : "3",
          "display" : "Idarucizumab"
        }
      },
      {
        "valueCoding" : {
          "code" : "4",
          "display" : "Anderes spezifisches Antidot"
        }
      }]
    },
    {
      "linkId" : "10080",
      "text" : "Physiotherapie",
      "type" : "coding",
      "answerOption" : [{
        "valueCoding" : {
          "code" : "1",
          "display" : "Ja, Beginn innerhalb von 24h"
        }
      },
      {
        "valueCoding" : {
          "code" : "2",
          "display" : "Ja, Beginn nach 24h"
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
      "linkId" : "10081",
      "text" : "Ergotherapie",
      "type" : "coding",
      "answerOption" : [{
        "valueCoding" : {
          "code" : "1",
          "display" : "Ja, Beginn innerhalb von 24h"
        }
      },
      {
        "valueCoding" : {
          "code" : "2",
          "display" : "Ja, Beginn nach 24h"
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
      "linkId" : "10082",
      "text" : "Logopädie",
      "type" : "coding",
      "answerOption" : [{
        "valueCoding" : {
          "code" : "1",
          "display" : "Ja, Beginn innerhalb von 24h"
        }
      },
      {
        "valueCoding" : {
          "code" : "2",
          "display" : "Ja, Beginn nach 24h"
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
      "linkId" : "10083",
      "text" : "Schlucktest (z.B. GUSS) durchgeführt",
      "type" : "boolean"
    }]
  },
  {
    "linkId" : "gruppe-basisdaten-endovaskulär",
    "text" : "Basisdaten und Ausgangsbefund (endovaskuläres Protokoll)",
    "type" : "group",
    "enableWhen" : [{
      "question" : "10090",
      "operator" : "=",
      "answerBoolean" : true
    }],
    "item" : [{
      "linkId" : "20050",
      "text" : "Zuweisung in anderes Zentrum",
      "type" : "boolean"
    },
    {
      "linkId" : "20051",
      "text" : "Wenn ja, in welches Zentrum?",
      "type" : "coding",
      "enableWhen" : [{
        "question" : "20050",
        "operator" : "=",
        "answerBoolean" : true
      }],
      "answerOption" : [{
        "valueCoding" : {
          "code" : "1",
          "display" : "Klinikum Klagenfurt am Wörthersee"
        }
      },
      {
        "valueCoding" : {
          "code" : "5",
          "display" : "Landesklinikum Wr. Neustadt"
        }
      },
      {
        "valueCoding" : {
          "code" : "7",
          "display" : "Universitätsklinikum Tulln"
        }
      },
      {
        "valueCoding" : {
          "code" : "8",
          "display" : "Universitätsklinikum St. Pölten"
        }
      },
      {
        "valueCoding" : {
          "code" : "9",
          "display" : "Linz Kepler Universitätsklinikum Med Campus III"
        }
      },
      {
        "valueCoding" : {
          "code" : "11",
          "display" : "Linz Kepler Universitätsklinikum Neuromed Campus"
        }
      },
      {
        "valueCoding" : {
          "code" : "16",
          "display" : "Christian-Doppler-Klinik Salzburg"
        }
      },
      {
        "valueCoding" : {
          "code" : "19",
          "display" : "Landeskrankenhaus Universitätsklinikum Graz"
        }
      },
      {
        "valueCoding" : {
          "code" : "22",
          "display" : "Landeskrankenhaus Universitätskliniken Innsbruck"
        }
      },
      {
        "valueCoding" : {
          "code" : "25",
          "display" : "Universtätsklinikum AKH Wien"
        }
      },
      {
        "valueCoding" : {
          "code" : "26",
          "display" : "Krankenhaus der Barmherzigen Brüder Wien"
        }
      },
      {
        "valueCoding" : {
          "code" : "29",
          "display" : "Wiener Gesundheitsverbund Klinik Landstraße"
        }
      },
      {
        "valueCoding" : {
          "code" : "34",
          "display" : "Landeskrankenhaus Feldkirch"
        }
      }]
    },
    {
      "linkId" : "20048",
      "text" : "Dokumentierendes Zentrum",
      "type" : "coding",
      "answerOption" : [{
        "valueCoding" : {
          "code" : "1",
          "display" : "eigenes Zentrum"
        }
      },
      {
        "valueCoding" : {
          "code" : "0",
          "display" : "anderes Zentrum"
        }
      }]
    },
    {
      "linkId" : "20052",
      "text" : "Intervenierendes Zentrum",
      "type" : "coding",
      "answerConstraint" : "optionsOnly",
      "answerOption" : [{
        "valueCoding" : {
          "code" : "1",
          "display" : "Klinikum Klagenfurt am Wörthersee"
        }
      },
      {
        "valueCoding" : {
          "code" : "5",
          "display" : "Landesklinikum Wr. Neustadt"
        }
      },
      {
        "valueCoding" : {
          "code" : "7",
          "display" : "Universitätsklinikum Tulln"
        }
      },
      {
        "valueCoding" : {
          "code" : "8",
          "display" : "Universitätsklinikum St. Pölten"
        }
      },
      {
        "valueCoding" : {
          "code" : "9",
          "display" : "Linz Kepler Universitätsklinikum Med Campus III"
        }
      },
      {
        "valueCoding" : {
          "code" : "11",
          "display" : "Linz Kepler Universitätsklinikum Neuromed Campus"
        }
      },
      {
        "valueCoding" : {
          "code" : "16",
          "display" : "Christian-Doppler-Klinik Salzburg"
        }
      },
      {
        "valueCoding" : {
          "code" : "19",
          "display" : "Landeskrankenhaus Universitätsklinikum Graz"
        }
      },
      {
        "valueCoding" : {
          "code" : "22",
          "display" : "Landeskrankenhaus Universitätskliniken Innsbruck"
        }
      },
      {
        "valueCoding" : {
          "code" : "25",
          "display" : "Universtätsklinikum AKH Wien"
        }
      },
      {
        "valueCoding" : {
          "code" : "26",
          "display" : "Krankenhaus der Barmherzigen Brüder Wien"
        }
      },
      {
        "valueCoding" : {
          "code" : "29",
          "display" : "Wiener Gesundheitsverbund Klinik Landstraße"
        }
      },
      {
        "valueCoding" : {
          "code" : "34",
          "display" : "Landeskrankenhaus Feldkirch"
        }
      }]
    }]
  },
  {
    "linkId" : "gruppe-therapie-endovaskuläre",
    "text" : "Therapie, Intervention, Komplikationen (endovaskuläres Protokoll)",
    "type" : "group",
    "enableWhen" : [{
      "question" : "10090",
      "operator" : "=",
      "answerBoolean" : true
    }],
    "enableBehavior" : "all",
    "item" : [{
      "linkId" : "20080",
      "text" : "IV Thrombolyse",
      "type" : "boolean"
    },
    {
      "linkId" : "20081",
      "text" : "IA Thrombolyse",
      "type" : "boolean"
    },
    {
      "linkId" : "20104",
      "text" : "wenn IA-Thrombolyse, welches Trombolytikum",
      "type" : "coding",
      "enableWhen" : [{
        "question" : "20081",
        "operator" : "=",
        "answerBoolean" : true
      }],
      "answerOption" : [{
        "valueCoding" : {
          "code" : "0",
          "display" : "rTPA"
        }
      },
      {
        "valueCoding" : {
          "code" : "3",
          "display" : "andere"
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
      "linkId" : "20105",
      "text" : "wenn rTPA: Gesamtdosis von IA rTPA in mg",
      "type" : "integer",
      "enableWhen" : [{
        "question" : "20104",
        "operator" : "=",
        "answerCoding" : {
          "code" : "0",
          "display" : "rTPA"
        }
      }]
    },
    {
      "linkId" : "20082",
      "text" : "Thrombektomie",
      "type" : "boolean"
    },
    {
      "linkId" : "20102",
      "text" : "ASPECT Score erfasst",
      "type" : "boolean"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
        "valueInteger" : 0
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
        "valueInteger" : 10
      }],
      "linkId" : "200601",
      "text" : "ASPECT Score",
      "type" : "integer",
      "enableWhen" : [{
        "question" : "20102",
        "operator" : "=",
        "answerBoolean" : true
      }]
    },
    {
      "linkId" : "group-sonstige-medikation",
      "text" : "Sonstige periproz. antiaggregatorische Medikation",
      "type" : "group",
      "item" : [{
        "linkId" : "20108",
        "text" : "ASS",
        "type" : "boolean"
      },
      {
        "linkId" : "20109",
        "text" : "Clopidogrel",
        "type" : "boolean"
      },
      {
        "linkId" : "20110",
        "text" : "GPIIb/IIIa Antagonisten",
        "type" : "boolean"
      },
      {
        "linkId" : "20111",
        "text" : "Heparin",
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
        "linkId" : "20161",
        "text" : "Ballonkatheter",
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
        "linkId" : "20090",
        "text" : "Stentretriever",
        "type" : "boolean",
        "enableWhen" : [{
          "question" : "20082",
          "operator" : "=",
          "answerBoolean" : true
        }]
      },
      {
        "linkId" : "20091",
        "text" : "Aspiration",
        "type" : "boolean",
        "enableWhen" : [{
          "question" : "20082",
          "operator" : "=",
          "answerBoolean" : true
        }]
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
          "valueDate" : "2015-01-01"
        },
        {
          "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
          "valueDate" : "2026-01-01"
        }],
        "linkId" : "20175",
        "text" : "Datum Angiographiebeginn",
        "type" : "date",
        "enableWhen" : [{
          "question" : "20082",
          "operator" : "=",
          "answerBoolean" : true
        }]
      },
      {
        "linkId" : "20176",
        "text" : "Uhrzeit Angiographiebeginn",
        "type" : "time",
        "enableWhen" : [{
          "question" : "20082",
          "operator" : "=",
          "answerBoolean" : true
        }]
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
          "valueDate" : "2015-01-01"
        },
        {
          "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
          "valueDate" : "2026-01-01"
        }],
        "linkId" : "20177",
        "text" : "Datum Gefäßrekanalisation",
        "type" : "date",
        "enableWhen" : [{
          "question" : "20082",
          "operator" : "=",
          "answerBoolean" : true
        }]
      },
      {
        "linkId" : "20178",
        "text" : "Uhrzeit Gefäßrekanalisation",
        "type" : "time",
        "enableWhen" : [{
          "question" : "20082",
          "operator" : "=",
          "answerBoolean" : true
        }]
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
          "valueCodeableConcept" : {
            "coding" : [{
              "system" : "http://hl7.org/fhir/questionnaire-item-control",
              "code" : "drop-down",
              "display" : "Drop down"
            }]
          }
        }],
        "linkId" : "201621",
        "text" : "Anzahl der Passagen",
        "type" : "coding",
        "enableWhen" : [{
          "question" : "20082",
          "operator" : "=",
          "answerBoolean" : true
        }],
        "answerOption" : [{
          "valueCoding" : {
            "code" : "0",
            "display" : "eins"
          }
        },
        {
          "valueCoding" : {
            "code" : "1",
            "display" : "zwei"
          }
        },
        {
          "valueCoding" : {
            "code" : "2",
            "display" : "drei"
          }
        },
        {
          "valueCoding" : {
            "code" : "3",
            "display" : "vier"
          }
        },
        {
          "valueCoding" : {
            "code" : "4",
            "display" : ">=5"
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
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
          "valueCodeableConcept" : {
            "coding" : [{
              "system" : "http://hl7.org/fhir/questionnaire-item-control",
              "code" : "check-box",
              "display" : "Check-box"
            }]
          }
        }],
        "linkId" : "20128",
        "text" : "angiographischer Gefäßbefund",
        "type" : "coding",
        "enableWhen" : [{
          "question" : "20082",
          "operator" : "=",
          "answerBoolean" : true
        }],
        "repeats" : true,
        "answerOption" : [{
          "valueCoding" : {
            "code" : "7",
            "display" : "bereits erfolgte, vollständige Rekanalisation"
          }
        },
        {
          "valueCoding" : {
            "code" : "0",
            "display" : "M1-Verschluß"
          }
        },
        {
          "valueCoding" : {
            "code" : "1",
            "display" : "M2-Verschluß"
          }
        },
        {
          "valueCoding" : {
            "code" : "2",
            "display" : "T-Gabelverschluß"
          }
        },
        {
          "valueCoding" : {
            "code" : "3",
            "display" : "distaler ACI-Verschluß, T-Gabel jedoch offen"
          }
        },
        {
          "valueCoding" : {
            "code" : "8",
            "display" : "Verschluss der proximalen ACI"
          }
        },
        {
          "valueCoding" : {
            "code" : "4",
            "display" : "Basilaris-Verschluß"
          }
        },
        {
          "valueCoding" : {
            "code" : "5",
            "display" : "V4-Verschluß"
          }
        },
        {
          "valueCoding" : {
            "code" : "6",
            "display" : "andere"
          }
        },
        {
          "valueCoding" : {
            "code" : "9",
            "display" : "Stenose der proximalen ACI (wenn >=70%)"
          }
        },
        {
          "valueCoding" : {
            "code" : "10",
            "display" : "A. c. posterior-Verschluss"
          }
        },
        {
          "valueCoding" : {
            "code" : "11",
            "display" : "A. c. anterior-Verschluss"
          }
        }]
      },
      {
        "linkId" : "20129",
        "text" : "Wenn andere: Welcher",
        "type" : "string",
        "enableWhen" : [{
          "question" : "20082",
          "operator" : "=",
          "answerBoolean" : true
        },
        {
          "question" : "20128",
          "operator" : "=",
          "answerCoding" : {
            "code" : "6",
            "display" : "andere, bitte spezifizieren"
          }
        }],
        "enableBehavior" : "all",
        "maxLength" : 64
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
        "linkId" : "20150",
        "text" : "Intubation für Angiographie",
        "type" : "coding",
        "enableWhen" : [{
          "question" : "20082",
          "operator" : "=",
          "answerBoolean" : true
        }],
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
        "linkId" : "20045",
        "text" : "Permanenter Stent",
        "type" : "boolean",
        "enableWhen" : [{
          "question" : "20082",
          "operator" : "=",
          "answerBoolean" : true
        }]
      },
      {
        "linkId" : "20046",
        "text" : "Wenn permanenter Stent Ja:",
        "type" : "coding",
        "enableWhen" : [{
          "question" : "20045",
          "operator" : "=",
          "answerBoolean" : true
        },
        {
          "question" : "20082",
          "operator" : "=",
          "answerBoolean" : true
        }],
        "enableBehavior" : "all",
        "answerOption" : [{
          "valueCoding" : {
            "code" : "1",
            "display" : "Carotis Interna (extrakraniell)"
          }
        },
        {
          "valueCoding" : {
            "code" : "2",
            "display" : "Intrakranielle Gefäße"
          }
        },
        {
          "valueCoding" : {
            "code" : "3",
            "display" : "andere extrakranielle Gefäße"
          }
        }]
      },
      {
        "linkId" : "20179",
        "text" : "Initialer TICI-Score",
        "type" : "coding",
        "enableWhen" : [{
          "question" : "20082",
          "operator" : "=",
          "answerBoolean" : true
        }],
        "answerOption" : [{
          "valueCoding" : {
            "code" : "0",
            "display" : "Grad 0"
          }
        },
        {
          "valueCoding" : {
            "code" : "1",
            "display" : "Grad 1"
          }
        },
        {
          "valueCoding" : {
            "code" : "2",
            "display" : "Grad 2a"
          }
        },
        {
          "valueCoding" : {
            "code" : "3",
            "display" : "Grad 2b"
          }
        },
        {
          "valueCoding" : {
            "code" : "5",
            "display" : "Grad 3"
          }
        },
        {
          "valueCoding" : {
            "code" : "6",
            "display" : "unbekannt"
          }
        }]
      },
      {
        "linkId" : "20133",
        "text" : "TICI-Score bei Angio-Ende",
        "type" : "coding",
        "enableWhen" : [{
          "question" : "20082",
          "operator" : "=",
          "answerBoolean" : true
        }],
        "answerOption" : [{
          "valueCoding" : {
            "code" : "0",
            "display" : "Grad 0"
          }
        },
        {
          "valueCoding" : {
            "code" : "1",
            "display" : "Grad 1"
          }
        },
        {
          "valueCoding" : {
            "code" : "2",
            "display" : "Grad 2a"
          }
        },
        {
          "valueCoding" : {
            "code" : "3",
            "display" : "Grad 2b"
          }
        },
        {
          "valueCoding" : {
            "code" : "5",
            "display" : "Grad 3"
          }
        },
        {
          "valueCoding" : {
            "code" : "6",
            "display" : "unbekannt"
          }
        }]
      }]
    }]
  },
  {
    "linkId" : "gruppe-komplikationen-endovaskuläre",
    "text" : "Prozedurale Komplikationen (endovaskuläres Protokoll)",
    "type" : "group",
    "enableWhen" : [{
      "question" : "10090",
      "operator" : "=",
      "answerBoolean" : true
    }],
    "item" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://hl7.org/fhir/questionnaire-item-control",
            "code" : "check-box",
            "display" : "Check-box"
          }]
        }
      }],
      "linkId" : "20135",
      "text" : "Prozedurale Komplikationen aufgetreten",
      "type" : "coding",
      "required" : false,
      "repeats" : true,
      "answerOption" : [{
        "valueCoding" : {
          "code" : "20136",
          "display" : "periprozedurale Dissektion (nicht flussrelevant)"
        }
      },
      {
        "valueCoding" : {
          "code" : "20137",
          "display" : "periprozedurale Dissektion (flussrelevant)"
        }
      },
      {
        "valueCoding" : {
          "code" : "20138",
          "display" : "intrazerebrale Blutung (ICB)"
        }
      },
      {
        "valueCoding" : {
          "code" : "20139",
          "display" : "SAB"
        }
      },
      {
        "valueCoding" : {
          "code" : "20140",
          "display" : "Thrombembolische Komplikationen"
        }
      },
      {
        "valueCoding" : {
          "code" : "20141",
          "display" : "Reokklusion des Zielgefäßes"
        }
      },
      {
        "valueCoding" : {
          "code" : "20142",
          "display" : "Komplikationen an Punktionsstelle, z.B. Pseudoaneurysma/OP-würdige Extravasation"
        }
      },
      {
        "valueCoding" : {
          "code" : "20143",
          "display" : "andere"
        }
      }]
    },
    {
      "linkId" : "20180",
      "text" : "Welche andere Komplikationen ?",
      "type" : "text",
      "enableWhen" : [{
        "question" : "20135",
        "operator" : "=",
        "answerCoding" : {
          "code" : "20143",
          "display" : "andere"
        }
      }],
      "maxLength" : 64
    },
    {
      "linkId" : "20187",
      "text" : "Zeitpunkt der ICB",
      "type" : "coding",
      "enableWhen" : [{
        "question" : "20135",
        "operator" : "=",
        "answerCoding" : {
          "code" : "20138",
          "display" : "intrazerebrale Blutung (ICB)"
        }
      }],
      "answerOption" : [{
        "valueCoding" : {
          "code" : "0",
          "display" : "innerhalb von 24 Stunden nach Intervention"
        }
      },
      {
        "valueCoding" : {
          "code" : "1",
          "display" : "später"
        }
      }]
    },
    {
      "linkId" : "20145",
      "text" : "ECASS-Klassifikation der ICB",
      "type" : "coding",
      "enableWhen" : [{
        "question" : "20135",
        "operator" : "=",
        "answerCoding" : {
          "code" : "20138",
          "display" : "intrazerebrale Blutung (ICB)"
        }
      }],
      "answerOption" : [{
        "valueCoding" : {
          "code" : "0",
          "display" : "Haemorrhagic infarction 1 (HI I): small petechiae along the margins of the infarct"
        }
      },
      {
        "valueCoding" : {
          "code" : "1",
          "display" : "Haemorrhagic infarction 2 (HI II): confluent petechiae within the infarcted area but no space-occupying effect"
        }
      },
      {
        "valueCoding" : {
          "code" : "2",
          "display" : "parenchymal haemorrhage 1 (PH I): blood clots in 30% or less of the infarcted area with some slight space-occupying effect"
        }
      },
      {
        "valueCoding" : {
          "code" : "3",
          "display" : "Parenchymal haemorrhage 2 (PH II): blood clots in more than 30% of the infarcted area with substantial space-occupying effect"
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
      "linkId" : "20146",
      "text" : "Besteht klinische Verschlechterung (um NIHSS >=4 Punkte) die auf ICB zu beziehen ist?",
      "type" : "coding",
      "enableWhen" : [{
        "question" : "20135",
        "operator" : "=",
        "answerCoding" : {
          "code" : "20138",
          "display" : "intrazerebrale Blutung (ICB)"
        }
      }],
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
      "linkId" : "20144",
      "text" : "Patient an prozeduralen Kompliationen verstorben?",
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
    "linkId" : "gruppe-bildgebung-endovaskulär",
    "text" : "Postinterventionelle Bildgebung (endovaskuläres Protokoll)",
    "type" : "group",
    "enableWhen" : [{
      "question" : "10090",
      "operator" : "=",
      "answerBoolean" : true
    }],
    "item" : [{
      "linkId" : "20222",
      "text" : "Postinterventionelle Bildgebung",
      "type" : "boolean"
    },
    {
      "linkId" : "20223",
      "text" : "Bildgebendes Verfahren",
      "type" : "coding",
      "enableWhen" : [{
        "question" : "20222",
        "operator" : "=",
        "answerBoolean" : true
      }],
      "answerOption" : [{
        "valueCoding" : {
          "code" : "1",
          "display" : "CT"
        }
      },
      {
        "valueCoding" : {
          "code" : "2",
          "display" : "MRI"
        }
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
        "valueDate" : "2024-01-01"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
        "valueDate" : "2026-01-01"
      }],
      "linkId" : "20220",
      "text" : "Datum postinterventionelle Bildgebung",
      "type" : "date",
      "enableWhen" : [{
        "question" : "20222",
        "operator" : "=",
        "answerBoolean" : true
      }]
    },
    {
      "linkId" : "20221",
      "text" : "Uhrzeit postinterventionelle Bildgebung",
      "type" : "time",
      "enableWhen" : [{
        "question" : "20222",
        "operator" : "=",
        "answerBoolean" : true
      }]
    },
    {
      "linkId" : "gruppe-infarktgröße-endovaskulär",
      "text" : "Finale Infarktgröße in der Bildgebung nach der Intervention",
      "type" : "group",
      "enableWhen" : [{
        "question" : "20222",
        "operator" : "=",
        "answerBoolean" : true
      }],
      "item" : [{
        "linkId" : "20190",
        "text" : "<1/3 ACM",
        "type" : "boolean"
      },
      {
        "linkId" : "20191",
        "text" : "1/3 - 2/3 ACM",
        "type" : "boolean"
      },
      {
        "linkId" : "20192",
        "text" : "> 2/3 ACM",
        "type" : "boolean"
      },
      {
        "linkId" : "20193",
        "text" : "Infarkt A. c. anterior",
        "type" : "boolean"
      },
      {
        "linkId" : "20194",
        "text" : "Infarkt A. c. posterior",
        "type" : "boolean"
      },
      {
        "linkId" : "20195",
        "text" : "Infarkt PICA",
        "type" : "boolean"
      },
      {
        "linkId" : "20196",
        "text" : "Infarkt SCA",
        "type" : "boolean"
      },
      {
        "linkId" : "20197",
        "text" : "hint. Zirkulation: kein Infarkt im Hirnstamm",
        "type" : "boolean"
      },
      {
        "linkId" : "20198",
        "text" : "hint. Zirkulation: minimale Infarkte im Hirnstamm (Rami ad pontem)",
        "type" : "boolean"
      },
      {
        "linkId" : "20199",
        "text" : "hint. Zirkulation: ausgedehnte Infarkte im Hirnstamm",
        "type" : "boolean"
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
        "valueInteger" : 0
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
        "valueInteger" : 99
      }],
      "linkId" : "20185",
      "text" : "Gesamtsumme NIH-SS nach 24 Stunden",
      "type" : "integer"
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
      "linkId" : "20225",
      "text" : "mRS",
      "type" : "coding",
      "answerOption" : [{
        "valueCoding" : {
          "code" : "0",
          "display" : "0"
        }
      },
      {
        "valueCoding" : {
          "code" : "1",
          "display" : "1"
        }
      },
      {
        "valueCoding" : {
          "code" : "2",
          "display" : "2"
        }
      },
      {
        "valueCoding" : {
          "code" : "3",
          "display" : "3"
        }
      },
      {
        "valueCoding" : {
          "code" : "4",
          "display" : "4"
        }
      },
      {
        "valueCoding" : {
          "code" : "5",
          "display" : "5"
        }
      },
      {
        "valueCoding" : {
          "code" : "6",
          "display" : "6"
        }
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
        "valueDate" : "2015-01-01"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
        "valueDate" : "2026-01-01"
      }],
      "linkId" : "20163",
      "text" : "Wenn mRS 6 (Tod bei Entlassung), dann Todesdatum:",
      "type" : "date",
      "enableWhen" : [{
        "question" : "20225",
        "operator" : "=",
        "answerCoding" : {
          "code" : "6",
          "display" : "6"
        }
      }]
    },
    {
      "linkId" : "20164",
      "text" : "Wenn mRS 6 (Tod bei Entlassung), dann Todesursache:",
      "type" : "coding",
      "enableWhen" : [{
        "question" : "20225",
        "operator" : "=",
        "answerCoding" : {
          "code" : "6",
          "display" : "6"
        }
      }],
      "answerOption" : [{
        "valueCoding" : {
          "code" : "0",
          "display" : "interventionsassoziiert zerebrovaskulär"
        }
      },
      {
        "valueCoding" : {
          "code" : "1",
          "display" : "interventionsassoziiert, nicht zerebrovaskulär"
        }
      },
      {
        "valueCoding" : {
          "code" : "2",
          "display" : "zerebrovaskulär, nicht interventionsassoziiert"
        }
      },
      {
        "valueCoding" : {
          "code" : "3",
          "display" : "andere Ursache"
        }
      },
      {
        "valueCoding" : {
          "code" : "4",
          "display" : "unbekannt"
        }
      }]
    },
    {
      "linkId" : "20165",
      "text" : "Beschreibung Todesursache",
      "type" : "string",
      "enableWhen" : [{
        "question" : "20164",
        "operator" : "=",
        "answerCoding" : {
          "code" : "3",
          "display" : "andere Ursache"
        }
      }],
      "maxLength" : 64
    }]
  },
  {
    "linkId" : "gruppe-entlassung",
    "text" : "Entlassung",
    "type" : "group",
    "enableWhen" : [{
      "question" : "2006",
      "operator" : "=",
      "answerCoding" : {
        "code" : "1",
        "display" : "ja"
      }
    }],
    "enableBehavior" : "any",
    "item" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
        "valueDate" : "2015-01-01"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
        "valueDate" : "2026-01-01"
      }],
      "linkId" : "11001",
      "text" : "Entlassungsdatum",
      "type" : "date"
    },
    {
      "linkId" : "11002",
      "text" : "ICD 10 Diagnose",
      "type" : "coding",
      "answerOption" : [{
        "valueCoding" : {
          "code" : "1",
          "display" : "I60.- Subarachnodialblutung"
        }
      },
      {
        "valueCoding" : {
          "code" : "2",
          "display" : "I61.- Intrazerebrale Blutung"
        }
      },
      {
        "valueCoding" : {
          "code" : "4",
          "display" : "I63.- Hirninfarkt"
        }
      },
      {
        "valueCoding" : {
          "code" : "11",
          "display" : "G45.-zerebrale transitorische ischämische Attacken oder verwandte Syndrome"
        }
      }]
    },
    {
      "linkId" : "gruppe-monitoring",
      "text" : "Monitoring",
      "type" : "group",
      "item" : [{
        "linkId" : "11003",
        "text" : "Entlassungsart",
        "type" : "coding",
        "answerOption" : [{
          "valueCoding" : {
            "code" : "1",
            "display" : "Nach Hause"
          }
        },
        {
          "valueCoding" : {
            "code" : "2",
            "display" : "Neurolog. Akutbett"
          }
        },
        {
          "valueCoding" : {
            "code" : "3",
            "display" : "Neurolog. Phase B"
          }
        },
        {
          "valueCoding" : {
            "code" : "4",
            "display" : "Neurolog. Phase C im Haus"
          }
        },
        {
          "valueCoding" : {
            "code" : "5",
            "display" : "Neurolog. Phase C außer Haus"
          }
        },
        {
          "valueCoding" : {
            "code" : "6",
            "display" : "Tagesklinik im Haus"
          }
        },
        {
          "valueCoding" : {
            "code" : "7",
            "display" : "Tagesklinik außer Haus"
          }
        },
        {
          "valueCoding" : {
            "code" : "8",
            "display" : "Neurolog. Phase D außer Haus"
          }
        },
        {
          "valueCoding" : {
            "code" : "9",
            "display" : "Geriatrische Abteilung im Haus"
          }
        },
        {
          "valueCoding" : {
            "code" : "10",
            "display" : "Geriatrische Abteilung außer Haus"
          }
        },
        {
          "valueCoding" : {
            "code" : "11",
            "display" : "Neurochirurg. Abteilung im Haus"
          }
        },
        {
          "valueCoding" : {
            "code" : "12",
            "display" : "Neurochirurg. Abteilung außer Haus"
          }
        },
        {
          "valueCoding" : {
            "code" : "14",
            "display" : "Andere Fachabteilung im Haus"
          }
        },
        {
          "valueCoding" : {
            "code" : "15",
            "display" : "Andere Fachabteilung außer Haus"
          }
        },
        {
          "valueCoding" : {
            "code" : "16",
            "display" : "Intensivstation"
          }
        },
        {
          "valueCoding" : {
            "code" : "17",
            "display" : "Pflegeheim"
          }
        },
        {
          "valueCoding" : {
            "code" : "18",
            "display" : "Altersheim"
          }
        },
        {
          "valueCoding" : {
            "code" : "19",
            "display" : "Verstorben"
          }
        },
        {
          "valueCoding" : {
            "code" : "20",
            "display" : "Palliatives Setting im Haus"
          }
        }]
      },
      {
        "linkId" : "11004",
        "text" : "Todesursache",
        "type" : "coding",
        "enableWhen" : [{
          "question" : "11003",
          "operator" : "=",
          "answerCoding" : {
            "code" : "19",
            "display" : "Verstorben"
          }
        }],
        "answerOption" : [{
          "valueCoding" : {
            "code" : "1",
            "display" : "Hirnödem"
          }
        },
        {
          "valueCoding" : {
            "code" : "2",
            "display" : "Reinisult"
          }
        },
        {
          "valueCoding" : {
            "code" : "3",
            "display" : "Herzinfarkt"
          }
        },
        {
          "valueCoding" : {
            "code" : "4",
            "display" : "andere kardiale Ursachen"
          }
        },
        {
          "valueCoding" : {
            "code" : "5",
            "display" : "Lungenembolie"
          }
        },
        {
          "valueCoding" : {
            "code" : "6",
            "display" : "Interkurrente andere Erkrankungen"
          }
        },
        {
          "valueCoding" : {
            "code" : "7",
            "display" : "Konsumierende andere Erkrankungen"
          }
        },
        {
          "valueCoding" : {
            "code" : "8",
            "display" : "andere"
          }
        }]
      },
      {
        "linkId" : "11005",
        "text" : "Welche andere Todesursache",
        "type" : "string",
        "enableWhen" : [{
          "question" : "11004",
          "operator" : "=",
          "answerCoding" : {
            "code" : "8",
            "display" : "andere"
          }
        },
        {
          "question" : "11003",
          "operator" : "=",
          "answerCoding" : {
            "code" : "19",
            "display" : "Verstorben"
          }
        }],
        "enableBehavior" : "all",
        "maxLength" : 64
      },
      {
        "linkId" : "11006",
        "text" : "Todesursache autoptisch gesichert",
        "type" : "boolean",
        "enableWhen" : [{
          "question" : "11003",
          "operator" : "=",
          "answerCoding" : {
            "code" : "19",
            "display" : "Verstorben"
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
          "valueInteger" : 42
        }],
        "linkId" : "12020",
        "text" : "Gesamtsumme NIH - SS bei Entlassung",
        "type" : "integer",
        "enableWhen" : [{
          "question" : "11003",
          "operator" : "=",
          "answerCoding" : {
            "code" : "1",
            "display" : "Nach Hause"
          }
        },
        {
          "question" : "11003",
          "operator" : "=",
          "answerCoding" : {
            "code" : "2",
            "display" : "Neurolog. Akutbett"
          }
        },
        {
          "question" : "11003",
          "operator" : "=",
          "answerCoding" : {
            "code" : "3",
            "display" : "Neurolog. Phase B"
          }
        },
        {
          "question" : "11003",
          "operator" : "=",
          "answerCoding" : {
            "code" : "4",
            "display" : "Neurolog. Phase C im Haus"
          }
        },
        {
          "question" : "11003",
          "operator" : "=",
          "answerCoding" : {
            "code" : "5",
            "display" : "Neurolog. Phase C außer Haus"
          }
        },
        {
          "question" : "11003",
          "operator" : "=",
          "answerCoding" : {
            "code" : "6",
            "display" : "Tagesklinik im Haus"
          }
        },
        {
          "question" : "11003",
          "operator" : "=",
          "answerCoding" : {
            "code" : "7",
            "display" : "Tagesklinik außer Haus"
          }
        },
        {
          "question" : "11003",
          "operator" : "=",
          "answerCoding" : {
            "code" : "8",
            "display" : "Neurolog. Phase D außer Haus"
          }
        },
        {
          "question" : "11003",
          "operator" : "=",
          "answerCoding" : {
            "code" : "9",
            "display" : "Geriatrische Abteilung im Haus"
          }
        },
        {
          "question" : "11003",
          "operator" : "=",
          "answerCoding" : {
            "code" : "10",
            "display" : "Geriatrische Abteilung außer Haus"
          }
        },
        {
          "question" : "11003",
          "operator" : "=",
          "answerCoding" : {
            "code" : "11",
            "display" : "Neurochirurg. Abteilung im Haus"
          }
        },
        {
          "question" : "11003",
          "operator" : "=",
          "answerCoding" : {
            "code" : "12",
            "display" : "Neurochirurg. Abteilung außer Haus"
          }
        },
        {
          "question" : "11003",
          "operator" : "=",
          "answerCoding" : {
            "code" : "14",
            "display" : "Andere Fachabteilung im Haus"
          }
        },
        {
          "question" : "11003",
          "operator" : "=",
          "answerCoding" : {
            "code" : "15",
            "display" : "Andere Fachabteilung außer Haus"
          }
        },
        {
          "question" : "11003",
          "operator" : "=",
          "answerCoding" : {
            "code" : "16",
            "display" : "Intensivstation"
          }
        },
        {
          "question" : "11003",
          "operator" : "=",
          "answerCoding" : {
            "code" : "17",
            "display" : "Pflegeheim"
          }
        },
        {
          "question" : "11003",
          "operator" : "=",
          "answerCoding" : {
            "code" : "18",
            "display" : "Altersheim"
          }
        },
        {
          "question" : "11003",
          "operator" : "=",
          "answerCoding" : {
            "code" : "20",
            "display" : "Palliatives Setting im Haus"
          }
        }],
        "enableBehavior" : "any"
      }]
    },
    {
      "linkId" : "gruppe-entlassung-rankinskala",
      "text" : "RANKINSKALA bei Entlassung",
      "type" : "group",
      "item" : [{
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
          "valueInteger" : 0
        },
        {
          "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
          "valueInteger" : 6
        }],
        "linkId" : "14001",
        "text" : "Rankinskala bei der Entlassung",
        "type" : "integer"
      }]
    }]
  },
  {
    "linkId" : "group-ergänzende-diagnostik",
    "text" : "Ergänzende Diagnostik",
    "type" : "group",
    "enableWhen" : [{
      "question" : "2006",
      "operator" : "=",
      "answerCoding" : {
        "code" : "1",
        "display" : "ja"
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
      "linkId" : "27024",
      "text" : "TTE",
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
      "linkId" : "27025",
      "text" : "TEE",
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
    "linkId" : "group-komplikationen",
    "text" : "Komplikationen",
    "type" : "group",
    "enableWhen" : [{
      "question" : "2006",
      "operator" : "=",
      "answerCoding" : {
        "code" : "1",
        "display" : "ja"
      }
    }],
    "item" : [{
      "linkId" : "15015",
      "text" : "Komplikationen",
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
      }],
      "linkId" : "999359609780",
      "text" : "Welche",
      "type" : "coding",
      "enableWhen" : [{
        "question" : "15015",
        "operator" : "=",
        "answerBoolean" : true
      }],
      "repeats" : true,
      "answerOption" : [{
        "valueCoding" : {
          "code" : "15001",
          "display" : "Reinsult (neues Ereignis anderes Territorium)"
        }
      },
      {
        "valueCoding" : {
          "code" : "15014",
          "display" : "Progressive Stroke"
        }
      },
      {
        "valueCoding" : {
          "code" : "15002",
          "display" : "Klin. Relevante Einblutung"
        }
      },
      {
        "valueCoding" : {
          "code" : "15003",
          "display" : "Hirnödem"
        }
      },
      {
        "valueCoding" : {
          "code" : "15004",
          "display" : "Epil. Anfall"
        }
      },
      {
        "valueCoding" : {
          "code" : "15005",
          "display" : "Hydrocephalus"
        }
      },
      {
        "valueCoding" : {
          "code" : "15006",
          "display" : "Kardiale Arrythmien"
        }
      },
      {
        "valueCoding" : {
          "code" : "15007",
          "display" : "Herz-Kreislaufdekompensation"
        }
      },
      {
        "valueCoding" : {
          "code" : "15008",
          "display" : "Pulmonalembolie"
        }
      },
      {
        "valueCoding" : {
          "code" : "15009",
          "display" : "Sepsis"
        }
      },
      {
        "valueCoding" : {
          "code" : "15010",
          "display" : "Harnwegsinfekt"
        }
      },
      {
        "valueCoding" : {
          "code" : "15011",
          "display" : "Pneumonie"
        }
      },
      {
        "valueCoding" : {
          "code" : "15012",
          "display" : "Extrazerebrale Blutung"
        }
      },
      {
        "valueCoding" : {
          "code" : "15013",
          "display" : "Tiefe Beinvenenthrombose"
        }
      },
      {
        "valueCoding" : {
          "code" : "15016",
          "display" : "Herzinfarkt"
        }
      },
      {
        "valueCoding" : {
          "code" : "15018",
          "display" : "Delir"
        }
      },
      {
        "valueCoding" : {
          "code" : "15019",
          "display" : "Progression bei primärem ICH"
        }
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
        "valueDate" : "2015-01-01"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
        "valueDate" : "2026-01-01"
      }],
      "linkId" : "150181",
      "text" : "Datum Diagnose Delir",
      "type" : "date",
      "enableWhen" : [{
        "question" : "999359609780",
        "operator" : "=",
        "answerCoding" : {
          "code" : "15018",
          "display" : "Delir"
        }
      }]
    },
    {
      "linkId" : "150182",
      "text" : "Selbst-/Fremdgefährdung",
      "type" : "boolean",
      "enableWhen" : [{
        "question" : "999359609780",
        "operator" : "=",
        "answerCoding" : {
          "code" : "15018",
          "display" : "Delir"
        }
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
        "valueDate" : "2015-01-01"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
        "valueDate" : "2026-01-01"
      }],
      "linkId" : "15017",
      "text" : "Datum Einblutung",
      "type" : "date",
      "enableWhen" : [{
        "question" : "999359609780",
        "operator" : "=",
        "answerCoding" : {
          "code" : "15002",
          "display" : "Klin. Relevante Einblutung"
        }
      }]
    }]
  },
  {
    "linkId" : "group-klassifikation",
    "text" : "Klassifikation",
    "type" : "group",
    "enableWhen" : [{
      "question" : "2006",
      "operator" : "=",
      "answerCoding" : {
        "code" : "1",
        "display" : "ja"
      }
    }],
    "item" : [{
      "linkId" : "16008",
      "text" : "Ischämie",
      "type" : "boolean"
    },
    {
      "linkId" : "16004",
      "text" : "Art der Ischämie",
      "type" : "coding",
      "enableWhen" : [{
        "question" : "16008",
        "operator" : "=",
        "answerBoolean" : true
      }],
      "answerOption" : [{
        "valueCoding" : {
          "code" : "1",
          "display" : "TIA"
        }
      },
      {
        "valueCoding" : {
          "code" : "3",
          "display" : "Hirninfarkt"
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
        "valueInteger" : 7
      }],
      "linkId" : "16035",
      "text" : "ABCD2 Score",
      "type" : "integer",
      "enableWhen" : [{
        "question" : "16004",
        "operator" : "=",
        "answerCoding" : {
          "code" : "1",
          "display" : "TIA"
        }
      }],
      "required" : false
    },
    {
      "linkId" : "gruppe-ursache-ischämie",
      "text" : "Ursache der Ischämie",
      "type" : "group",
      "enableWhen" : [{
        "question" : "16008",
        "operator" : "=",
        "answerBoolean" : true
      }],
      "item" : [{
        "linkId" : "16009",
        "text" : "Mikroangiopathie",
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
        "linkId" : "16010",
        "text" : "Thromboembolie aus kardialer Quelle (kardiogen-embolisch)",
        "type" : "coding",
        "answerOption" : [{
          "valueCoding" : {
            "code" : "0",
            "display" : "nein"
          }
        },
        {
          "valueCoding" : {
            "code" : "2",
            "display" : "wahrscheinlich"
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
        "linkId" : "16011",
        "text" : "Makroangiopathie",
        "type" : "coding",
        "answerOption" : [{
          "valueCoding" : {
            "code" : "0",
            "display" : "nein"
          }
        },
        {
          "valueCoding" : {
            "code" : "2",
            "display" : "wahrscheinlich"
          }
        }]
      },
      {
        "linkId" : "16012",
        "text" : "Hämodynamisch",
        "type" : "boolean"
      },
      {
        "linkId" : "16013",
        "text" : "Koagulopathie",
        "type" : "boolean"
      },
      {
        "linkId" : "16014",
        "text" : "Arterielle Dissektion",
        "type" : "boolean"
      },
      {
        "linkId" : "16019",
        "text" : "ESUS",
        "type" : "boolean"
      },
      {
        "linkId" : "16018",
        "text" : "Ätiopathogenese derzeit unbekannt",
        "type" : "boolean"
      },
      {
        "linkId" : "16040",
        "text" : "Andere Ursache",
        "type" : "boolean"
      },
      {
        "linkId" : "16041",
        "text" : "Welche",
        "type" : "string",
        "enableWhen" : [{
          "question" : "16040",
          "operator" : "=",
          "answerBoolean" : true
        }],
        "maxLength" : 64
      },
      {
        "linkId" : "16005",
        "text" : "Intrazerebrale Blutung",
        "type" : "boolean"
      }]
    },
    {
      "linkId" : "gruppe-ursache-intrazerebralen-blutung",
      "text" : "Ursache der intrazerebralen Blutung",
      "type" : "group",
      "enableWhen" : [{
        "question" : "16005",
        "operator" : "=",
        "answerBoolean" : true
      }],
      "item" : [{
        "linkId" : "16020",
        "text" : "Hypertonie",
        "type" : "boolean"
      },
      {
        "linkId" : "16021",
        "text" : "Gefäßmalformation",
        "type" : "boolean"
      },
      {
        "linkId" : "16022",
        "text" : "Amyloidangiopathie",
        "type" : "boolean"
      },
      {
        "linkId" : "16023",
        "text" : "Medikamentöse Ursache",
        "type" : "boolean"
      },
      {
        "linkId" : "16050",
        "text" : "Andere Ursache",
        "type" : "boolean"
      },
      {
        "linkId" : "16051",
        "text" : "Welche",
        "type" : "string",
        "enableWhen" : [{
          "question" : "16050",
          "operator" : "=",
          "answerBoolean" : true
        }],
        "maxLength" : 64
      }]
    },
    {
      "linkId" : "16006",
      "text" : "Subarachnoidalblutung",
      "type" : "boolean"
    },
    {
      "linkId" : "16030",
      "text" : "Falls Subarachnoidalblutung \"Ja\"",
      "type" : "coding",
      "enableWhen" : [{
        "question" : "16006",
        "operator" : "=",
        "answerBoolean" : true
      }],
      "answerOption" : [{
        "valueCoding" : {
          "code" : "1",
          "display" : "aneurysmatisch"
        }
      },
      {
        "valueCoding" : {
          "code" : "2",
          "display" : "perimesencephal"
        }
      },
      {
        "valueCoding" : {
          "code" : "3",
          "display" : "konvexal"
        }
      }]
    },
    {
      "linkId" : "16007",
      "text" : "Hirnvenenthrombose",
      "type" : "boolean"
    }]
  },
  {
    "linkId" : "group-followup",
    "text" : "Follow Up nach 3 Monaten",
    "type" : "group",
    "enableWhen" : [{
      "question" : "2006",
      "operator" : "=",
      "answerCoding" : {
        "code" : "1",
        "display" : "ja"
      }
    },
    {
      "question" : "11003",
      "operator" : "!=",
      "answerCoding" : {
        "code" : "19",
        "display" : "Verstorben"
      }
    }],
    "enableBehavior" : "all",
    "item" : [{
      "linkId" : "21000",
      "text" : "Follow up",
      "type" : "boolean"
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
        "valueDate" : "2015-01-01"
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
        "valueDate" : "2026-01-01"
      }],
      "linkId" : "21004",
      "text" : "Follow-up Datum",
      "type" : "date",
      "enableWhen" : [{
        "question" : "21000",
        "operator" : "=",
        "answerBoolean" : true
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
      "linkId" : "21005",
      "text" : "Follow-up Typ",
      "type" : "coding",
      "enableWhen" : [{
        "question" : "21000",
        "operator" : "=",
        "answerBoolean" : true
      }],
      "answerOption" : [{
        "valueCoding" : {
          "code" : "1",
          "display" : "telefonisch"
        }
      },
      {
        "valueCoding" : {
          "code" : "2",
          "display" : "persönlich"
        }
      }]
    },
    {
      "linkId" : "21006",
      "text" : "Follow-up mit",
      "type" : "coding",
      "enableWhen" : [{
        "question" : "21000",
        "operator" : "=",
        "answerBoolean" : true
      }],
      "answerOption" : [{
        "valueCoding" : {
          "code" : "1",
          "display" : "Patienten"
        }
      },
      {
        "valueCoding" : {
          "code" : "2",
          "display" : "Patienten und Angehörigen / Pflegepersonal"
        }
      },
      {
        "valueCoding" : {
          "code" : "3",
          "display" : "Angehörigen oder Pflegepersonal"
        }
      },
      {
        "valueCoding" : {
          "code" : "4",
          "display" : "Hausarzt / Facharzt"
        }
      },
      {
        "valueCoding" : {
          "code" : "5",
          "display" : "Krankenakte"
        }
      }]
    },
    {
      "linkId" : "21010",
      "text" : "Patientenstatus",
      "type" : "coding",
      "enableWhen" : [{
        "question" : "21000",
        "operator" : "=",
        "answerBoolean" : true
      }],
      "answerOption" : [{
        "valueCoding" : {
          "code" : "1",
          "display" : "Lebend, kooperativ"
        }
      },
      {
        "valueCoding" : {
          "code" : "3",
          "display" : "Verstorben"
        }
      },
      {
        "valueCoding" : {
          "code" : "4",
          "display" : "Lebend, keine weiteren Daten erhältlich"
        }
      }]
    },
    {
      "linkId" : "group-falls-verstorben",
      "text" : "Falls verstorben",
      "type" : "group",
      "enableWhen" : [{
        "question" : "21010",
        "operator" : "=",
        "answerCoding" : {
          "code" : "3",
          "display" : "Verstorben"
        }
      }],
      "item" : [{
        "linkId" : "21022",
        "text" : "Sterbedatum bekannt",
        "type" : "boolean"
      },
      {
        "extension" : [{
          "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
          "valueDate" : "2015-01-01"
        },
        {
          "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
          "valueDate" : "2026-01-01"
        }],
        "linkId" : "21020",
        "text" : "Sterbedatum",
        "type" : "date",
        "enableWhen" : [{
          "question" : "21022",
          "operator" : "=",
          "answerBoolean" : true
        }]
      },
      {
        "linkId" : "21030",
        "text" : "Todesursache",
        "type" : "coding",
        "answerOption" : [{
          "valueCoding" : {
            "code" : "1",
            "display" : "Hirnödem"
          }
        },
        {
          "valueCoding" : {
            "code" : "2",
            "display" : "Rezidivschlaganfall"
          }
        },
        {
          "valueCoding" : {
            "code" : "3",
            "display" : "Herzinfarkt"
          }
        },
        {
          "valueCoding" : {
            "code" : "4",
            "display" : "Andere kardiale Ursachen"
          }
        },
        {
          "valueCoding" : {
            "code" : "5",
            "display" : "Lungenembolie"
          }
        },
        {
          "valueCoding" : {
            "code" : "6",
            "display" : "Interkurrente andere Erkrankungen"
          }
        },
        {
          "valueCoding" : {
            "code" : "7",
            "display" : "Konsumierende andere Erkrankungen"
          }
        },
        {
          "valueCoding" : {
            "code" : "8",
            "display" : "Andere"
          }
        }]
      },
      {
        "linkId" : "21031",
        "text" : "Welche andere Todesursache",
        "type" : "string",
        "enableWhen" : [{
          "question" : "21030",
          "operator" : "=",
          "answerCoding" : {
            "code" : "8",
            "display" : "Andere"
          }
        }],
        "maxLength" : 64
      }]
    }]
  },
  {
    "linkId" : "group-soziale-situation",
    "text" : "Soziale Situation",
    "type" : "group",
    "enableWhen" : [{
      "question" : "21010",
      "operator" : "=",
      "answerCoding" : {
        "code" : "1",
        "display" : "Lebend, kooperativ"
      }
    },
    {
      "question" : "21000",
      "operator" : "=",
      "answerBoolean" : true
    },
    {
      "question" : "2006",
      "operator" : "=",
      "answerCoding" : {
        "code" : "1",
        "display" : "ja"
      }
    }],
    "enableBehavior" : "all",
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
      "linkId" : "23005",
      "text" : "Rehabilitation",
      "type" : "coding",
      "enableBehavior" : "any",
      "answerOption" : [{
        "valueCoding" : {
          "code" : "1",
          "display" : "Rehabilitation"
        }
      },
      {
        "valueCoding" : {
          "code" : "2",
          "display" : "Keine Rehabilitation"
        }
      },
      {
        "valueCoding" : {
          "code" : "3",
          "display" : "Keine Information"
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
      "linkId" : "2300X",
      "text" : "Art der Rehabilitation",
      "type" : "coding",
      "enableWhen" : [{
        "question" : "23005",
        "operator" : "=",
        "answerCoding" : {
          "code" : "1",
          "display" : "Rehabilitation"
        }
      }],
      "answerOption" : [{
        "valueCoding" : {
          "code" : "23006",
          "display" : "Stationäre Rehabilitation"
        }
      },
      {
        "valueCoding" : {
          "code" : "23007",
          "display" : "Ambulante Rehabilitation"
        }
      },
      {
        "valueCoding" : {
          "code" : "23008",
          "display" : "Rehabilitation zu Hause"
        }
      }]
    },
    {
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://hl7.org/fhir/questionnaire-item-control",
            "code" : "drop-down",
            "display" : "Drop down"
          }]
        }
      }],
      "linkId" : "23010",
      "text" : "Wohnsituation",
      "type" : "coding",
      "answerOption" : [{
        "valueCoding" : {
          "code" : "1",
          "display" : "Zuhause alleine"
        }
      },
      {
        "valueCoding" : {
          "code" : "2",
          "display" : "Zuhause mit Verwandten / Bekannten"
        }
      },
      {
        "valueCoding" : {
          "code" : "3",
          "display" : "Pensionistenheim"
        }
      },
      {
        "valueCoding" : {
          "code" : "4",
          "display" : "Pflegeheim"
        }
      },
      {
        "valueCoding" : {
          "code" : "5",
          "display" : "Krankenhaus"
        }
      }]
    }]
  },
  {
    "linkId" : "gruppe-barthel",
    "text" : "BARTHEL-Index Follow Up",
    "type" : "group",
    "enableWhen" : [{
      "question" : "21010",
      "operator" : "=",
      "answerCoding" : {
        "code" : "1",
        "display" : "Lebend, kooperativ"
      }
    },
    {
      "question" : "2006",
      "operator" : "=",
      "answerCoding" : {
        "code" : "1",
        "display" : "ja"
      }
    }],
    "enableBehavior" : "all",
    "item" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/maxValue",
        "valueInteger" : 100
      },
      {
        "url" : "http://hl7.org/fhir/StructureDefinition/minValue",
        "valueInteger" : 0
      }],
      "linkId" : "24011",
      "text" : "Gesamtsumme Barthel-Index bei Follow Up",
      "type" : "integer",
      "enableWhen" : [{
        "question" : "21010",
        "operator" : "=",
        "answerCoding" : {
          "code" : "1",
          "display" : "Lebend, kooperativ"
        }
      }],
      "required" : false
    }]
  },
  {
    "linkId" : "gruppe-rankin-skala",
    "text" : "RANKINSKALA bei Follow Up",
    "type" : "group",
    "enableWhen" : [{
      "question" : "2006",
      "operator" : "=",
      "answerCoding" : {
        "code" : "1",
        "display" : "ja"
      }
    },
    {
      "question" : "21010",
      "operator" : "!=",
      "answerCoding" : {
        "code" : "4",
        "display" : "Lebend, keine weiteren Daten erhältlich"
      }
    },
    {
      "question" : "21000",
      "operator" : "=",
      "answerBoolean" : true
    }],
    "enableBehavior" : "all",
    "item" : [{
      "linkId" : "25001",
      "text" : "Rankinskala Follow Up",
      "type" : "coding",
      "answerOption" : [{
        "valueCoding" : {
          "code" : "0",
          "display" : "Keine Einschränkung"
        }
      },
      {
        "valueCoding" : {
          "code" : "1",
          "display" : "Trotz vorhandener Symptome keine nennenswerte Beeinträchtigung bei der Durchführung täglicher Verrichtungen"
        }
      },
      {
        "valueCoding" : {
          "code" : "2",
          "display" : "Leichte Beeinträchtigung: nicht mehr möglich alle Aktivitäten wie vorher durchzuführen, kann sich jedoch ohne fremde Hilfe um die eigenen Angelegenheiten kümmern"
        }
      },
      {
        "valueCoding" : {
          "code" : "3",
          "display" : "Geringe Beeinträchtigung: angewiesen auf etwas Hilfe, kann ohne Unterstützung gehen"
        }
      },
      {
        "valueCoding" : {
          "code" : "4",
          "display" : "Deutliche Beeinträchtigung: kann nicht ohne Hilfe gehen und ist auf Hilfe anderer Personen bei Körperpflege angewiesen"
        }
      },
      {
        "valueCoding" : {
          "code" : "5",
          "display" : "Schwere Beeinträchtigung: bettlägerig, inkontinent, auf permanente Pflege angewiesen"
        }
      },
      {
        "valueCoding" : {
          "code" : "6",
          "display" : "Tod"
        }
      }]
    }]
  },
  {
    "linkId" : "gruppe-sekundärprophylaxe",
    "text" : "Sekundärprophylaxe",
    "type" : "group",
    "enableWhen" : [{
      "question" : "21000",
      "operator" : "=",
      "answerBoolean" : true
    },
    {
      "question" : "21010",
      "operator" : "=",
      "answerCoding" : {
        "code" : "1",
        "display" : "Lebend, kooperativ"
      }
    }],
    "enableBehavior" : "all",
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
      "linkId" : "26019",
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
      "linkId" : "26020",
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
      "linkId" : "26021",
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
      "linkId" : "26022",
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
      "linkId" : "26023",
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
      "linkId" : "26024",
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
      "linkId" : "26005",
      "text" : "Andere",
      "type" : "boolean"
    },
    {
      "linkId" : "26025",
      "text" : "Welche andere Antithrombotica",
      "type" : "string",
      "enableWhen" : [{
        "question" : "26005",
        "operator" : "=",
        "answerBoolean" : true
      }],
      "maxLength" : 64
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
      "linkId" : "26032",
      "text" : "Regelmäßig Lipidsenker",
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
      "linkId" : "26033",
      "text" : "Regelmäßig Blutdruckkontrollen",
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
      "linkId" : "26034",
      "text" : "Regelmäßig Antihypertensiva",
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
      "linkId" : "26035",
      "text" : "Regelmäßig Antidiabetica",
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
      "linkId" : "26036",
      "text" : "Regelmäßig Antidepressiva",
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
      "linkId" : "26030",
      "text" : "PFO Verschluss",
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
      "linkId" : "26031",
      "text" : "Herzohrverschluss",
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
      "linkId" : "26037",
      "text" : "Vor dem Schlaganfall Raucher",
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
      "linkId" : "26038",
      "text" : "Seither abstinent (Rauchen)",
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
    "linkId" : "gruppe-rezidivereignisse",
    "text" : "Rezidivereignisse (nach Entlassung von der SU)",
    "type" : "group",
    "enableWhen" : [{
      "question" : "21000",
      "operator" : "=",
      "answerBoolean" : true
    },
    {
      "question" : "21010",
      "operator" : "=",
      "answerCoding" : {
        "code" : "1",
        "display" : "Lebend, kooperativ"
      }
    }],
    "enableBehavior" : "all",
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
      "linkId" : "26040",
      "text" : "Ischämischer Reinsult",
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
      "linkId" : "26041",
      "text" : "Myokardinfarkt",
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
      "linkId" : "26042",
      "text" : "TIA",
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
      "linkId" : "26043",
      "text" : "ICH",
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
  }]
}

```
