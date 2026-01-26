# ELGA.MOPED\LKF K02 Questionnaire - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **LKF K02 Questionnaire**

## Questionnaire: LKF K02 Questionnaire 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/Questionnaire/LKFK02Questionnaire | *Version*:0.1.0 | |
| Draft as of 2026-01-26 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*: |

 
K02 Questionnaire - KA-Stammdaten 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "LKFK02Questionnaire",
  "url" : "https://elga.moped.at/Questionnaire/LKFK02Questionnaire",
  "version" : "0.1.0",
  "title" : "LKF K02 Questionnaire",
  "status" : "draft",
  "date" : "2026-01-26T07:03:23+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [
    {
      "name" : "ELGA GmbH",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://elga.gv.at"
        }
      ]
    }
  ],
  "description" : "K02 Questionnaire - KA-Stammdaten",
  "item" : [
    {
      "linkId" : "satzartenkennzeichen",
      "text" : "Satzartenkennzeichen",
      "type" : "string",
      "readOnly" : true,
      "maxLength" : 3,
      "initial" : [
        {
          "valueString" : "K02"
        }
      ]
    },
    {
      "linkId" : "jahr",
      "text" : "Jahr",
      "type" : "integer",
      "maxLength" : 4
    },
    {
      "linkId" : "krankenanstaltennummer",
      "text" : "Krankenanstaltennummer",
      "type" : "string",
      "maxLength" : 6
    },
    {
      "linkId" : "krankenanstalt-bezeichnung",
      "text" : "Krankenanstalt – Bezeichnung",
      "type" : "string",
      "maxLength" : 150
    },
    {
      "linkId" : "krankenanstalt-straße",
      "text" : "Krankenanstalt – Straße",
      "type" : "string",
      "maxLength" : 50
    },
    {
      "linkId" : "krankenanstalt-postleitzahl",
      "text" : "Krankenanstalt – Postleitzahl",
      "type" : "string",
      "maxLength" : 6
    },
    {
      "linkId" : "krankenanstalt-ort",
      "text" : "Krankenanstalt – Ort",
      "type" : "string",
      "maxLength" : 50
    },
    {
      "linkId" : "krankenanstalt-telefon",
      "text" : "Krankenanstalt – Telefon",
      "type" : "string",
      "maxLength" : 20
    },
    {
      "linkId" : "krankenanstalt-fax",
      "text" : "Krankenanstalt – Fax",
      "type" : "string",
      "maxLength" : 20
    },
    {
      "linkId" : "krankenanstalt-homepage",
      "text" : "Krankenanstalt – Homepage",
      "type" : "string",
      "maxLength" : 100
    },
    {
      "linkId" : "rechtsträger-bezeichnung",
      "text" : "Rechtsträger – Bezeichnung",
      "type" : "string",
      "maxLength" : 150
    },
    {
      "linkId" : "rechtsträger-straße",
      "text" : "Rechtsträger – Straße",
      "type" : "string",
      "maxLength" : 50
    },
    {
      "linkId" : "rechtsträger-postleitzahl",
      "text" : "Rechtsträger – Postleitzahl",
      "type" : "string",
      "maxLength" : 6
    },
    {
      "linkId" : "rechtsträger-ort",
      "text" : "Rechtsträger – Ort",
      "type" : "string",
      "maxLength" : 50
    },
    {
      "linkId" : "rechtsträger-telefon",
      "text" : "Rechtsträger – Telefon",
      "type" : "string",
      "maxLength" : 20
    },
    {
      "linkId" : "rechtsträger-fax",
      "text" : "Rechtsträger – Fax",
      "type" : "string",
      "maxLength" : 20
    },
    {
      "linkId" : "rechtsträger-homepage",
      "text" : "Rechtsträger – Homepage",
      "type" : "string",
      "maxLength" : 100
    },
    {
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/StructureDefinition/entryFormat",
          "valueString" : "NACHNAME/Vorname/Titel"
        },
        {
          "url" : "http://hl7.org/fhir/StructureDefinition/regex",
          "valueString" : "^[A-ZÄÖÜ]+\\/[A-ZÄÖÜ][a-zäöüß]+\\/[A-Za-zÄÖÜäöüß\\.]+$"
        }
      ],
      "linkId" : "ärztliche-leitung",
      "text" : "Ärztliche Leitung",
      "type" : "string",
      "maxLength" : 100,
      "item" : [
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
              "valueCodeableConcept" : {
                "coding" : [
                  {
                    "system" : "http://hl7.org/fhir/questionnaire-item-control",
                    "code" : "help",
                    "display" : "Help-Button"
                  }
                ],
                "text" : "Help-Button"
              }
            }
          ],
          "linkId" : "ärztliche-leitung_helpText",
          "text" : "Bitte geben Sie den Namen im Format NACHNAME/Vorname/Titel ein, z. B. MÜLLER/Anna/Dr.",
          "type" : "display"
        }
      ]
    },
    {
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/StructureDefinition/entryFormat",
          "valueString" : "NACHNAME/Vorname/Titel"
        },
        {
          "url" : "http://hl7.org/fhir/StructureDefinition/regex",
          "valueString" : "^[A-ZÄÖÜ]+\\/[A-ZÄÖÜ][a-zäöüß]+\\/[A-Za-zÄÖÜäöüß\\.]+$"
        }
      ],
      "linkId" : "verwaltungsleitung",
      "text" : "Verwaltungsleitung",
      "type" : "string",
      "maxLength" : 100,
      "item" : [
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
              "valueCodeableConcept" : {
                "coding" : [
                  {
                    "system" : "http://hl7.org/fhir/questionnaire-item-control",
                    "code" : "help",
                    "display" : "Help-Button"
                  }
                ],
                "text" : "Help-Button"
              }
            }
          ],
          "linkId" : "verwaltungsleitung_helpText",
          "text" : "Bitte geben Sie den Namen im Format NACHNAME/Vorname/Titel ein, z. B. MÜLLER/Anna/Dr.",
          "type" : "display"
        }
      ]
    },
    {
      "extension" : [
        {
          "url" : "http://hl7.org/fhir/StructureDefinition/entryFormat",
          "valueString" : "NACHNAME/Vorname/Titel"
        },
        {
          "url" : "http://hl7.org/fhir/StructureDefinition/regex",
          "valueString" : "^[A-ZÄÖÜ]+\\/[A-ZÄÖÜ][a-zäöüß]+\\/[A-Za-zÄÖÜäöüß\\.]+$"
        }
      ],
      "linkId" : "pflegedienstleitung",
      "text" : "Pflegedienstleitung",
      "type" : "string",
      "maxLength" : 100,
      "item" : [
        {
          "extension" : [
            {
              "url" : "http://hl7.org/fhir/StructureDefinition/questionnaire-itemControl",
              "valueCodeableConcept" : {
                "coding" : [
                  {
                    "system" : "http://hl7.org/fhir/questionnaire-item-control",
                    "code" : "help",
                    "display" : "Help-Button"
                  }
                ],
                "text" : "Help-Button"
              }
            }
          ],
          "linkId" : "pflegedienstleitung_helpText",
          "text" : "Bitte geben Sie den Namen im Format NACHNAME/Vorname/Titel ein, z. B. MÜLLER/Anna/Dr.",
          "type" : "display"
        }
      ]
    }
  ]
}

```
