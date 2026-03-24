# ELGA.MOPED\LKF K05 Questionnaire - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **LKF K05 Questionnaire**

## Questionnaire: LKF K05 Questionnaire 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/Questionnaire/LKFK05Questionnaire | *Version*:0.1.0 | |
| Active as of 2026-03-24 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*: |

 
K05 Questionnaire - KA-Statistik (Personal des ärztlichen Dienstes) 



## Resource Content

```json
{
  "resourceType" : "Questionnaire",
  "id" : "LKFK05Questionnaire",
  "url" : "https://elga.moped.at/Questionnaire/LKFK05Questionnaire",
  "version" : "0.1.0",
  "title" : "LKF K05 Questionnaire",
  "status" : "active",
  "date" : "2026-03-24T19:35:33+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "K05 Questionnaire - KA-Statistik (Personal des ärztlichen Dienstes)",
  "item" : [{
    "linkId" : "sazartenkennzeichen",
    "text" : "Sazartenkennzeichen",
    "type" : "string",
    "maxLength" : 3
  },
  {
    "linkId" : "jahr",
    "text" : "Jahr",
    "type" : "date"
  },
  {
    "linkId" : "krankenanstaltennummer",
    "text" : "Krankenanstaltennummer",
    "type" : "string",
    "maxLength" : 6
  },
  {
    "linkId" : "fachhauptbereichsindex",
    "text" : "Fachhauptbereichsindex",
    "type" : "string",
    "maxLength" : 2
  },
  {
    "linkId" : "facharzte-kopfzahl",
    "text" : "Fachärzte/-ärztinnen – Kopfzahl",
    "type" : "integer",
    "maxLength" : 6
  },
  {
    "linkId" : "allgemeinmedizin-kopfzahl",
    "text" : "Ärzte/Ärztinnen für Allgemeinmedizin – Kopfzahl",
    "type" : "integer",
    "maxLength" : 6
  },
  {
    "linkId" : "facharzte-ausbildung-kopfzahl",
    "text" : "Fachärzte/-ärztinnen in Ausbildung – Kopfzahl",
    "type" : "integer",
    "maxLength" : 6
  },
  {
    "linkId" : "allgemeinmedizin-ausbildung-kopfzahl",
    "text" : "Ärzte/Ärztinnen für Allgemeinmedizin in Ausbildung – Kopfzahl",
    "type" : "integer",
    "maxLength" : 6
  },
  {
    "linkId" : "facharzte-vollzeitäquivalente",
    "text" : "Fachärzte/-ärztinnen – Vollzeitäquivalente",
    "type" : "decimal",
    "maxLength" : 9
  },
  {
    "linkId" : "allgemeinmedizin-vollzeitäquivalente",
    "text" : "Ärzte/Ärztinnen für Allgemeinmedizin – Vollzeitäquivalente",
    "type" : "decimal",
    "maxLength" : 9
  },
  {
    "linkId" : "facharzte-ausbildung-vollzeitäquivalente",
    "text" : "Fachärzte/-ärztinnen in Ausbildung – Vollzeitäquivalente",
    "type" : "decimal",
    "maxLength" : 9
  },
  {
    "linkId" : "allgemeinmedizin-ausbildung-vollzeitäquivalente",
    "text" : "Ärzte/Ärztinnen für Allgemeinmedizin in Ausbildung – Vollzeitäquivalente",
    "type" : "decimal",
    "maxLength" : 9
  }]
}

```
