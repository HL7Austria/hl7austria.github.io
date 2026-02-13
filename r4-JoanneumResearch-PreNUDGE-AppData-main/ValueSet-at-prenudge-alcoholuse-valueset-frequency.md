# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\SNOMED CT AlcoholUse-Frequency - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SNOMED CT AlcoholUse-Frequency**

## ValueSet: SNOMED CT AlcoholUse-Frequency 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/ValueSet/at-prenudge-alcoholuse-valueset-frequency | *Version*:0.1.0 | |
| Active as of 2026-02-13 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:AtPrenudgeValueSetAlcoholUseFrequencySnomedVS |

 **References** 

* [Alkoholkonsum-Frequenz (letztes Jahr)](Questionnaire-AtPrenudgeQuestionnaireAlcoholUse.md)

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
  "id" : "at-prenudge-alcoholuse-valueset-frequency",
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/ValueSet/at-prenudge-alcoholuse-valueset-frequency",
  "version" : "0.1.0",
  "name" : "AtPrenudgeValueSetAlcoholUseFrequencySnomedVS",
  "title" : "SNOMED CT AlcoholUse-Frequency",
  "status" : "active",
  "date" : "2026-02-13T19:47:50+00:00",
  "publisher" : "The PreNUDGE Consortium",
  "contact" : [
    {
      "name" : "The PreNUDGE Consortium",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://prenudge.at"
        }
      ]
    },
    {
      "name" : "The PreNUDGE Consortium",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://prenudge.at",
          "use" : "work"
        }
      ]
    }
  ],
  "compose" : {
    "include" : [
      {
        "system" : "http://snomed.info/sct",
        "concept" : [
          {
            "code" : "69620002",
            "display" : "Daily",
            "designation" : [
              {
                "use" : {
                  "system" : "http://snomed.info/sct",
                  "code" : "405672008",
                  "display" : "Direct questioning"
                },
                "value" : "Täglich oder fast jeden Tag im letzten Jahr"
              }
            ]
          },
          {
            "code" : "307447001",
            "display" : "Six times weekly",
            "designation" : [
              {
                "use" : {
                  "system" : "http://snomed.info/sct",
                  "code" : "405672008",
                  "display" : "Direct questioning"
                },
                "value" : "An 5 bis 6 Tagen pro Woche"
              }
            ]
          },
          {
            "code" : "396113003",
            "display" : "Three to four times a week",
            "designation" : [
              {
                "use" : {
                  "system" : "http://snomed.info/sct",
                  "code" : "405672008",
                  "display" : "Direct questioning"
                },
                "value" : "An 3 bis 4 Tagen pro Woche"
              }
            ]
          },
          {
            "code" : "229800002",
            "display" : "Twice weekly",
            "designation" : [
              {
                "use" : {
                  "system" : "http://snomed.info/sct",
                  "code" : "405672008",
                  "display" : "Direct questioning"
                },
                "value" : "An 1 bis 2 Tagen pro Woche"
              }
            ]
          },
          {
            "code" : "307452006",
            "display" : "Three times monthly",
            "designation" : [
              {
                "use" : {
                  "system" : "http://snomed.info/sct",
                  "code" : "405672008",
                  "display" : "Direct questioning"
                },
                "value" : "An 2 bis 3 Tagen pro Monat"
              }
            ]
          },
          {
            "code" : "307450003",
            "display" : "Once monthly",
            "designation" : [
              {
                "use" : {
                  "system" : "http://snomed.info/sct",
                  "code" : "405672008",
                  "display" : "Direct questioning"
                },
                "value" : "Einmal pro Monat"
              }
            ]
          },
          {
            "code" : "445547001",
            "display" : "Every two months",
            "designation" : [
              {
                "use" : {
                  "system" : "http://snomed.info/sct",
                  "code" : "405672008",
                  "display" : "Direct questioning"
                },
                "value" : "Weniger als einmal pro Monat"
              }
            ]
          },
          {
            "code" : "105542008",
            "display" : "Current non-drinker of alcohol",
            "designation" : [
              {
                "use" : {
                  "system" : "http://snomed.info/sct",
                  "code" : "405672008",
                  "display" : "Direct questioning"
                },
                "value" : "Nicht in den letzten 12 Monaten, da ich keinen Alkohol mehr trinke"
              }
            ]
          },
          {
            "code" : "783261004",
            "display" : "Lifetime non-drinker of alcohol",
            "designation" : [
              {
                "use" : {
                  "system" : "http://snomed.info/sct",
                  "code" : "405672008",
                  "display" : "Direct questioning"
                },
                "value" : "Nie oder lediglich einige wenige Schlucke in meinem Leben"
              }
            ]
          }
        ]
      }
    ]
  }
}

```
