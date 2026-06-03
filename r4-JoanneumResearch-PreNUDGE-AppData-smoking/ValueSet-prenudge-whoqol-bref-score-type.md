# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\AT PreNUDGE WHOQOL-BREF Score Type ValueSet - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT PreNUDGE WHOQOL-BREF Score Type ValueSet**

## ValueSet: AT PreNUDGE WHOQOL-BREF Score Type ValueSet 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/ValueSet/prenudge-whoqol-bref-score-type | *Version*:0.1.0 | |
| Active as of 2026-06-03 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:AtPrenudgeValueSetQolWHOQOLBrefScoreTypeVS |
| **Copyright/Legal**: Description: Contains information protected by copyright of SNOMED International. Any use of SNOMED CT in Austria requires a valid affiliate license or sublicense. The corresponding license is free of charge, provided that the use only takes place in Austria and fulfills the conditions of the Affiliate License Agreement. Affiliate licenses can be requested directly from the respective NRC via the Member Licensing and Distribution Service (MLDS).https://wiki.hl7.at/index.php?title=SCT:SNOMED_CTBeschreibung: Enthält durch SNOMED International urheberrechtlich geschützte Information. Jede Verwendung von SNOMED CT in Österreich erfordert eine aufrechte Affiliate Lizenz oder eine Sublizenz. Die entsprechende Lizenz ist kostenlos, vorausgesetzt die Verwendung findet nur in Österreich statt und erfüllt die Bedingungen des Affiliate License Agreements. Affiliate Lizenzen können über das Member Licensing and Distribution Service (MLDS) direkt beim jeweiligen NRC beantragt werden.https://wiki.hl7.at/index.php?title=SCT:SNOMED_CT | | |

 
ValueSet containing SNOMED CT codes for differentiating WHOQOL-BREF overall and domain scores. 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

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
  "id" : "prenudge-whoqol-bref-score-type",
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/ValueSet/prenudge-whoqol-bref-score-type",
  "version" : "0.1.0",
  "name" : "AtPrenudgeValueSetQolWHOQOLBrefScoreTypeVS",
  "title" : "AT PreNUDGE WHOQOL-BREF Score Type ValueSet",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-03T13:38:36+00:00",
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
  "description" : "ValueSet containing SNOMED CT codes for differentiating WHOQOL-BREF overall and domain scores.",
  "copyright" : "Description: Contains information protected by copyright of SNOMED International. Any use of SNOMED CT in Austria requires a valid affiliate license or sublicense. The corresponding license is free of charge, provided that the use only takes place in Austria and fulfills the conditions of the Affiliate License Agreement. Affiliate licenses can be requested directly from the respective NRC via the Member Licensing and Distribution Service (MLDS).https://wiki.hl7.at/index.php?title=SCT:SNOMED_CT\n\nBeschreibung: Enthält durch SNOMED International urheberrechtlich geschützte Information. Jede Verwendung von SNOMED CT in Österreich erfordert eine aufrechte Affiliate Lizenz oder eine Sublizenz. Die entsprechende Lizenz ist kostenlos, vorausgesetzt die Verwendung findet nur in Österreich statt und erfüllt die Bedingungen des Affiliate License Agreements. Affiliate Lizenzen können über das Member Licensing and Distribution Service (MLDS) direkt beim jeweiligen NRC beantragt werden.https://wiki.hl7.at/index.php?title=SCT:SNOMED_CT",
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "60132005",
        "display" : "Generalized"
      },
      {
        "code" : "19388002",
        "display" : "Physical"
      },
      {
        "code" : "60224009",
        "display" : "Psychologic"
      },
      {
        "code" : "272151006",
        "display" : "Relationships"
      },
      {
        "code" : "276339004",
        "display" : "Environment"
      }]
    }]
  }
}

```
