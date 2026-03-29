# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\AT PreNUDGE Alcohol Use Frequency - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT PreNUDGE Alcohol Use Frequency**

## ValueSet: AT PreNUDGE Alcohol Use Frequency 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/ValueSet/prenudge-alcoholuse-frequency | *Version*:0.1.0 | |
| Active as of 2026-03-29 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:AtPrenudgeValueSetAlcoholUseFrequencySnomedVS |
| **Copyright/Legal**: Description: Contains information protected by copyright of SNOMED International. Any use of SNOMED CT in Austria requires a valid affiliate license or sublicense. The corresponding license is free of charge, provided that the use only takes place in Austria and fulfills the conditions of the Affiliate License Agreement. Affiliate licenses can be requested directly from the respective NRC via the Member Licensing and Distribution Service (MLDS).https://wiki.hl7.at/index.php?title=SCT:SNOMED_CTBeschreibung: Enthält durch SNOMED International urheberrechtlich geschützte Information. Jede Verwendung von SNOMED CT in Österreich erfordert eine aufrechte Affiliate Lizenz oder eine Sublizenz. Die entsprechende Lizenz ist kostenlos, vorausgesetzt die Verwendung findet nur in Österreich statt und erfüllt die Bedingungen des Affiliate License Agreements. Affiliate Lizenzen können über das Member Licensing and Distribution Service (MLDS) direkt beim jeweiligen NRC beantragt werden.https://wiki.hl7.at/index.php?title=SCT:SNOMED_CT | | |

 
Frequencies used in the PreNUDGE alcoholuse questionnaire. 

 **References** 

* [Alkoholkonsum im letzten Jahr](Questionnaire-AlcoholUseQuestionnaire.md)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "prenudge-alcoholuse-frequency",
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/ValueSet/prenudge-alcoholuse-frequency",
  "version" : "0.1.0",
  "name" : "AtPrenudgeValueSetAlcoholUseFrequencySnomedVS",
  "title" : "AT PreNUDGE Alcohol Use Frequency",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-03-29T11:44:39+00:00",
  "publisher" : "The PreNUDGE Consortium",
  "contact" : [{
    "name" : "The PreNUDGE Consortium",
    "telecom" : [{
      "system" : "url",
      "value" : "https://prenudge.at"
    }]
  },
  {
    "name" : "The PreNUDGE Consortium",
    "telecom" : [{
      "system" : "url",
      "value" : "https://prenudge.at",
      "use" : "work"
    }]
  }],
  "description" : "Frequencies used in the PreNUDGE alcoholuse questionnaire.",
  "copyright" : "Description: Contains information protected by copyright of SNOMED International. Any use of SNOMED CT in Austria requires a valid affiliate license or sublicense. The corresponding license is free of charge, provided that the use only takes place in Austria and fulfills the conditions of the Affiliate License Agreement. Affiliate licenses can be requested directly from the respective NRC via the Member Licensing and Distribution Service (MLDS).https://wiki.hl7.at/index.php?title=SCT:SNOMED_CT\n\nBeschreibung: Enthält durch SNOMED International urheberrechtlich geschützte Information. Jede Verwendung von SNOMED CT in Österreich erfordert eine aufrechte Affiliate Lizenz oder eine Sublizenz. Die entsprechende Lizenz ist kostenlos, vorausgesetzt die Verwendung findet nur in Österreich statt und erfüllt die Bedingungen des Affiliate License Agreements. Affiliate Lizenzen können über das Member Licensing and Distribution Service (MLDS) direkt beim jeweiligen NRC beantragt werden.https://wiki.hl7.at/index.php?title=SCT:SNOMED_CT",
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "69620002",
        "display" : "Daily",
        "designation" : [{
          "use" : {
            "system" : "http://snomed.info/sct",
            "code" : "405672008",
            "display" : "Direct questioning"
          },
          "value" : "Täglich oder fast jeden Tag im letzten Jahr"
        }]
      },
      {
        "code" : "307447001",
        "display" : "Six times weekly",
        "designation" : [{
          "use" : {
            "system" : "http://snomed.info/sct",
            "code" : "405672008",
            "display" : "Direct questioning"
          },
          "value" : "An 5 bis 6 Tagen pro Woche"
        }]
      },
      {
        "code" : "396113003",
        "display" : "Three to four times a week",
        "designation" : [{
          "use" : {
            "system" : "http://snomed.info/sct",
            "code" : "405672008",
            "display" : "Direct questioning"
          },
          "value" : "An 3 bis 4 Tagen pro Woche"
        }]
      },
      {
        "code" : "229800002",
        "display" : "Twice weekly",
        "designation" : [{
          "use" : {
            "system" : "http://snomed.info/sct",
            "code" : "405672008",
            "display" : "Direct questioning"
          },
          "value" : "An 1 bis 2 Tagen pro Woche"
        }]
      },
      {
        "code" : "307452006",
        "display" : "Three times monthly",
        "designation" : [{
          "use" : {
            "system" : "http://snomed.info/sct",
            "code" : "405672008",
            "display" : "Direct questioning"
          },
          "value" : "An 2 bis 3 Tagen pro Monat"
        }]
      },
      {
        "code" : "307450003",
        "display" : "Once monthly",
        "designation" : [{
          "use" : {
            "system" : "http://snomed.info/sct",
            "code" : "405672008",
            "display" : "Direct questioning"
          },
          "value" : "Einmal pro Monat"
        }]
      },
      {
        "code" : "445547001",
        "display" : "Every two months",
        "designation" : [{
          "use" : {
            "system" : "http://snomed.info/sct",
            "code" : "405672008",
            "display" : "Direct questioning"
          },
          "value" : "Weniger als einmal pro Monat"
        }]
      },
      {
        "code" : "105542008",
        "display" : "Current non-drinker of alcohol",
        "designation" : [{
          "use" : {
            "system" : "http://snomed.info/sct",
            "code" : "405672008",
            "display" : "Direct questioning"
          },
          "value" : "Nicht in den letzten 12 Monaten, da ich keinen Alkohol mehr trinke"
        }]
      },
      {
        "code" : "783261004",
        "display" : "Lifetime non-drinker of alcohol",
        "designation" : [{
          "use" : {
            "system" : "http://snomed.info/sct",
            "code" : "405672008",
            "display" : "Direct questioning"
          },
          "value" : "Nie oder lediglich einige wenige Schlucke in meinem Leben"
        }]
      }]
    }]
  }
}

```
