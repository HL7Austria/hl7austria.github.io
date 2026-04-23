# ELGA.MOPED\register-questionnaire - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **register-questionnaire**

## Questionnaire: register-questionnaire 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/Questionnaire/register-questionnaire | *Version*:0.1.0 | |
| Draft as of 2026-04-23 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*: |



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "register-questionnaire",
  "url" : "https://elga.moped.at/Questionnaire/register-questionnaire",
  "version" : "0.1.0",
  "title" : "register-questionnaire",
  "status" : "draft",
  "date" : "2026-04-23T07:59:48+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "item" : [{
    "linkId" : "550421449442",
    "text" : "Meldungsnummer",
    "type" : "string",
    "required" : false,
    "maxLength" : 100
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/minLength",
      "valueInteger" : 4
    }],
    "linkId" : "550421449443",
    "text" : "Anstaltsnummer",
    "type" : "string",
    "required" : true,
    "maxLength" : 4,
    "item" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://hl7.org/fhir/questionnaire-item-control",
            "code" : "help",
            "display" : "Help-Button"
          }],
          "text" : "Help-Button"
        }
      }],
      "linkId" : "550421449443_helpText",
      "text" : "Code bei Statistik Austria anfordern",
      "type" : "display"
    }]
  },
  {
    "linkId" : "550421449444",
    "text" : "VBPK-AS",
    "type" : "string",
    "required" : false,
    "maxLength" : 172,
    "item" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://hl7.org/fhir/questionnaire-item-control",
            "code" : "help",
            "display" : "Help-Button"
          }],
          "text" : "Help-Button"
        }
      }],
      "linkId" : "550421449444_helpText",
      "text" : "verschlüsseltes bereichsspezifisches Personenkennzeichen Amtliche Statistik",
      "type" : "display"
    }]
  },
  {
    "extension" : [{
      "url" : "http://hl7.org/fhir/StructureDefinition/minLength",
      "valueInteger" : 10
    }],
    "linkId" : "550421449445",
    "text" : "Sozialversicherungsnummer",
    "type" : "string",
    "enableWhen" : [{
      "question" : "550421449444",
      "operator" : "exists",
      "answerBoolean" : false
    }],
    "enableBehavior" : "any",
    "required" : false,
    "maxLength" : 10
  },
  {
    "linkId" : "550421449446",
    "text" : "Aufenthalt am",
    "type" : "date",
    "required" : true,
    "item" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://hl7.org/fhir/questionnaire-item-control",
            "code" : "help",
            "display" : "Help-Button"
          }],
          "text" : "Help-Button"
        }
      }],
      "linkId" : "550421449446_helpText",
      "text" : "Datum des Patientenkontakts",
      "type" : "display"
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
    "linkId" : "550421449447",
    "text" : "Histopathologisches Grading",
    "type" : "coding",
    "required" : true,
    "answerOption" : [{
      "valueCoding" : {
        "code" : "1",
        "display" : "\"Grad I gut differenziert differenziert o.n.A.\""
      }
    },
    {
      "valueCoding" : {
        "code" : "2",
        "display" : "\"Grad II mäßig differenziert mäßig gut differenziert mittelgradig differenziert\""
      }
    },
    {
      "valueCoding" : {
        "code" : "3",
        "display" : "\"Grad III schlecht differenziert\""
      }
    },
    {
      "valueCoding" : {
        "code" : "4",
        "display" : "\"Grad IV undifferenziert anaplastisch\""
      }
    },
    {
      "valueCoding" : {
        "code" : "9",
        "display" : "Grading bzw. Bestimmung des Zelltyps nicht durchgeführt, nicht angegeben oder entfällt"
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
    "linkId" : "550421449448",
    "text" : "Diagnosestellung",
    "type" : "coding",
    "required" : true,
    "answerOption" : [{
      "valueCoding" : {
        "code" : "1",
        "display" : "rein klinisch"
      }
    },
    {
      "valueCoding" : {
        "code" : "2",
        "display" : "mit klinischen Hilfsmitteln"
      }
    },
    {
      "valueCoding" : {
        "code" : "3",
        "display" : "endoskopisch"
      }
    },
    {
      "valueCoding" : {
        "code" : "4",
        "display" : "explorativ-operativ"
      }
    },
    {
      "valueCoding" : {
        "code" : "5",
        "display" : "zytologisch"
      }
    },
    {
      "valueCoding" : {
        "code" : "6",
        "display" : "bioptisch"
      }
    },
    {
      "valueCoding" : {
        "code" : "7",
        "display" : "operativ"
      }
    },
    {
      "valueCoding" : {
        "code" : "8",
        "display" : "autoptisch"
      }
    },
    {
      "valueCoding" : {
        "code" : "9",
        "display" : "unbekannt"
      },
      "initialSelected" : true
    }],
    "item" : [{
      "extension" : [{
        "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
        "valueCodeableConcept" : {
          "coding" : [{
            "system" : "http://hl7.org/fhir/questionnaire-item-control",
            "code" : "help",
            "display" : "Help-Button"
          }],
          "text" : "Help-Button"
        }
      }],
      "linkId" : "550421449448_helpText",
      "text" : "Art der Diagnose, die letztendlich zur Diagnosestellung geführt hat.",
      "type" : "display"
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
    "linkId" : "550421449449",
    "text" : "Behandlung",
    "type" : "coding",
    "required" : false,
    "repeats" : true,
    "answerOption" : [{
      "valueCoding" : {
        "code" : "00",
        "display" : "sonstige (7)"
      }
    },
    {
      "valueCoding" : {
        "code" : "10",
        "display" : "chirurgisch radikal (1)"
      }
    },
    {
      "valueCoding" : {
        "code" : "20",
        "display" : "chirurgisch palliativ (2)"
      }
    },
    {
      "valueCoding" : {
        "code" : "30",
        "display" : "strahlentherapeutisch (3)"
      }
    },
    {
      "valueCoding" : {
        "code" : "40",
        "display" : "chemotherapeutisch (4)"
      }
    },
    {
      "valueCoding" : {
        "code" : "50",
        "display" : "hormonal (5)"
      }
    },
    {
      "valueCoding" : {
        "code" : "60",
        "display" : "immunotherapeutisch (6)"
      }
    }]
  }]
}

```
