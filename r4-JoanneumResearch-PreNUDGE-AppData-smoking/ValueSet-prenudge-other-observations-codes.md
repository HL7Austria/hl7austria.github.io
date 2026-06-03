# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\AT PreNUDGE Other Observations Codes - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT PreNUDGE Other Observations Codes**

## ValueSet: AT PreNUDGE Other Observations Codes 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/ValueSet/prenudge-other-observations-codes | *Version*:0.1.0 | |
| Active as of 2026-06-03 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:AtPrenudgeValueSetOtherObservationsCodes |
| **Copyright/Legal**: Description: Contains information protected by copyright of SNOMED International. Any use of SNOMED CT in Austria requires a valid affiliate license or sublicense. The corresponding license is free of charge, provided that the use only takes place in Austria and fulfills the conditions of the Affiliate License Agreement. Affiliate licenses can be requested directly from the respective NRC via the Member Licensing and Distribution Service (MLDS).https://wiki.hl7.at/index.php?title=SCT:SNOMED_CT This material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc.Beschreibung: Enthält durch SNOMED International urheberrechtlich geschützte Information. Jede Verwendung von SNOMED CT in Österreich erfordert eine aufrechte Affiliate Lizenz oder eine Sublizenz. Die entsprechende Lizenz ist kostenlos, vorausgesetzt die Verwendung findet nur in Österreich statt und erfüllt die Bedingungen des Affiliate License Agreements. Affiliate Lizenzen können über das Member Licensing and Distribution Service (MLDS) direkt beim jeweiligen NRC beantragt werden.https://wiki.hl7.at/index.php?title=SCT:SNOMED_CT Dieses Material enthält Inhalte aus LOINC (http://loinc.org). LOINC ist urheberrechtlich geschützt © 1995-2020 durch das Regenstrief Institute, Inc. und den Logical Observation Identifiers Names and Codes (LOINC) Committee und steht kostenfrei unter der Lizenz unter http://loinc.org/license zur Verfügung. LOINC® ist eine eingetragene Marke des Regenstrief Institute, Inc. in den Vereinigten Staaten. | | |

 
Allowed observation codes for the 'Other' observation profile. 

 **References** 

* [AT PreNUDGE Observation Other not Quantities](StructureDefinition-at-prenudge-observation-other-not-quantities.md)
* [AT PreNUDGE Observation Other Quantities](StructureDefinition-at-prenudge-observation-other-quantities.md)

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
  "id" : "prenudge-other-observations-codes",
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/ValueSet/prenudge-other-observations-codes",
  "version" : "0.1.0",
  "name" : "AtPrenudgeValueSetOtherObservationsCodes",
  "title" : "AT PreNUDGE Other Observations Codes",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-06-03T12:49:02+00:00",
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
  "description" : "Allowed observation codes for the 'Other' observation profile.",
  "copyright" : "Description: Contains information protected by copyright of SNOMED International. Any use of SNOMED CT in Austria requires a valid affiliate license or sublicense. The corresponding license is free of charge, provided that the use only takes place in Austria and fulfills the conditions of the Affiliate License Agreement. Affiliate licenses can be requested directly from the respective NRC via the Member Licensing and Distribution Service (MLDS).https://wiki.hl7.at/index.php?title=SCT:SNOMED_CT\nThis material contains content from LOINC (http://loinc.org). LOINC is copyright © 1995-2020, Regenstrief Institute, Inc. and the Logical Observation Identifiers Names and Codes (LOINC) Committee and is available at no cost under the license at http://loinc.org/license. LOINC® is a registered United States trademark of Regenstrief Institute, Inc.\n\nBeschreibung: Enthält durch SNOMED International urheberrechtlich geschützte Information. Jede Verwendung von SNOMED CT in Österreich erfordert eine aufrechte Affiliate Lizenz oder eine Sublizenz. Die entsprechende Lizenz ist kostenlos, vorausgesetzt die Verwendung findet nur in Österreich statt und erfüllt die Bedingungen des Affiliate License Agreements. Affiliate Lizenzen können über das Member Licensing and Distribution Service (MLDS) direkt beim jeweiligen NRC beantragt werden.https://wiki.hl7.at/index.php?title=SCT:SNOMED_CT\nDieses Material enthält Inhalte aus LOINC (http://loinc.org). LOINC ist urheberrechtlich geschützt © 1995-2020 durch das Regenstrief Institute, Inc. und den Logical Observation Identifiers Names and Codes (LOINC) Committee und steht kostenfrei unter der Lizenz unter http://loinc.org/license zur Verfügung. LOINC® ist eine eingetragene Marke des Regenstrief Institute, Inc. in den Vereinigten Staaten.\n",
  "compose" : {
    "include" : [{
      "system" : "http://loinc.org",
      "concept" : [{
        "code" : "66270-0",
        "display" : "Activity intensity"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "concept" : [{
        "code" : "82832008",
        "display" : "General body state finding (finding)"
      }]
    }]
  }
}

```
