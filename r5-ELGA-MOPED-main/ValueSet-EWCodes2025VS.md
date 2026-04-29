# ELGA.MOPED\Akzeptierte Errors/Warnings - Codes 2025 - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Akzeptierte Errors/Warnings - Codes 2025**

## ValueSet: Akzeptierte Errors/Warnings - Codes 2025 (Experimental) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/ValueSet/EWCodes2025VS | *Version*:0.1.0 | |
| Draft as of 2026-04-29 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:EWCodes2025VS |

 
Der entsprechende Error-/Warning-/Hinweis-Code des unplausiblen/hinweisbezogenen Wertes 

 **References** 

* [Error/Warning](StructureDefinition-moped-ext-fehlerWarnung.md)

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R5/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "EWCodes2025VS",
  "url" : "https://elga.moped.at/ValueSet/EWCodes2025VS",
  "version" : "0.1.0",
  "name" : "EWCodes2025VS",
  "title" : "Akzeptierte Errors/Warnings - Codes 2025",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-04-29T09:14:27+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "Der entsprechende Error-/Warning-/Hinweis-Code des unplausiblen/hinweisbezogenen Wertes",
  "compose" : {
    "include" : [{
      "system" : "https://elga.moped.at/CodeSystem/EWCodes2025CS"
    }]
  }
}

```
