# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\AT PreNUDGE Blood Glucose Meal Context - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT PreNUDGE Blood Glucose Meal Context**

## ValueSet: AT PreNUDGE Blood Glucose Meal Context 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/ValueSet/prenudge-bloodglucose-mealcontext | *Version*:0.1.0 | |
| Active as of 2026-06-29 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:AtPrenudgeValueSetBloodglucoseMealcontextSnomedVS |
| **Copyright/Legal**: Description: Contains information protected by copyright of SNOMED International. Any use of SNOMED CT in Austria requires a valid affiliate license or sublicense. The corresponding license is free of charge, provided that the use only takes place in Austria and fulfills the conditions of the Affiliate License Agreement. Affiliate licenses can be requested directly from the respective NRC via the Member Licensing and Distribution Service (MLDS).https://wiki.hl7.at/index.php?title=SCT:SNOMED_CTBeschreibung: Enthält durch SNOMED International urheberrechtlich geschützte Information. Jede Verwendung von SNOMED CT in Österreich erfordert eine aufrechte Affiliate Lizenz oder eine Sublizenz. Die entsprechende Lizenz ist kostenlos, vorausgesetzt die Verwendung findet nur in Österreich statt und erfüllt die Bedingungen des Affiliate License Agreements. Affiliate Lizenzen können über das Member Licensing and Distribution Service (MLDS) direkt beim jeweiligen NRC beantragt werden.https://wiki.hl7.at/index.php?title=SCT:SNOMED_CT | | |

 
Meal context used in the PreNUDGE Blood Glucose questionnaire and observation. 

 **References** 

* [AT PreNUDGE Observation Blood Glucose (only in mg/dL)](StructureDefinition-at-prenudge-bloodglucose-observation.md)
* [Blutzucker bei der letzten Messung](Questionnaire-BloodGlucoseQuestionnaire.md)

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

IG © 2026+
[The PreNUDGE Consortium](https://prenudge.at). Package hl7.at.fhir.prenudge.appdata.r4#0.1.0 based on
[FHIR® 4.0.1](http://hl7.org/fhir/R4/). Generated
2026-06-29

Links:
[Table of Contents](toc.md)|
[QA Report](qa.md)

## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "prenudge-bloodglucose-mealcontext",
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/ValueSet/prenudge-bloodglucose-mealcontext",
  "version" : "0.1.0",
  "name" : "AtPrenudgeValueSetBloodglucoseMealcontextSnomedVS",
  "title" : "AT PreNUDGE Blood Glucose Meal Context",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-29T13:58:40+00:00",
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
  "description" : "Meal context used in the PreNUDGE Blood Glucose questionnaire and observation.",
  "copyright" : "Description: Contains information protected by copyright of SNOMED International. Any use of SNOMED CT in Austria requires a valid affiliate license or sublicense. The corresponding license is free of charge, provided that the use only takes place in Austria and fulfills the conditions of the Affiliate License Agreement. Affiliate licenses can be requested directly from the respective NRC via the Member Licensing and Distribution Service (MLDS).https://wiki.hl7.at/index.php?title=SCT:SNOMED_CT\n\nBeschreibung: Enthält durch SNOMED International urheberrechtlich geschützte Information. Jede Verwendung von SNOMED CT in Österreich erfordert eine aufrechte Affiliate Lizenz oder eine Sublizenz. Die entsprechende Lizenz ist kostenlos, vorausgesetzt die Verwendung findet nur in Österreich statt und erfüllt die Bedingungen des Affiliate License Agreements. Affiliate Lizenzen können über das Member Licensing and Distribution Service (MLDS) direkt beim jeweiligen NRC beantragt werden.https://wiki.hl7.at/index.php?title=SCT:SNOMED_CT",
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "16985007",
        "display" : "Fasting",
        "designation" : [{
          "use" : {
            "system" : "http://snomed.info/sct",
            "code" : "405672008",
            "display" : "Direct questioning"
          },
          "value" : "Nüchtern (nach mindestens 8 Stunden ohne Nahrungsaufnahme)"
        }]
      },
      {
        "code" : "307165006",
        "display" : "Before meal",
        "designation" : [{
          "use" : {
            "system" : "http://snomed.info/sct",
            "code" : "405672008",
            "display" : "Direct questioning"
          },
          "value" : "Vor dem Essen"
        }]
      },
      {
        "code" : "24863003",
        "display" : "Postprandial",
        "designation" : [{
          "use" : {
            "system" : "http://snomed.info/sct",
            "code" : "405672008",
            "display" : "Direct questioning"
          },
          "value" : "Nach dem Essen"
        }]
      }]
    }]
  }
}

```
