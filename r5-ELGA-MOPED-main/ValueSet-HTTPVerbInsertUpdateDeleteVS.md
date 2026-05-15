# ELGA.MOPED\HTTP Verb Insert Update Delete - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HTTP Verb Insert Update Delete**

## ValueSet: HTTP Verb Insert Update Delete 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/ValueSet/HTTPVerbInsertUpdateDeleteVS | *Version*:0.1.0 | |
| Draft as of 2026-05-15 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:HTTPVerbInsertUpdateDeleteVS |

 
HTTP Verben für das Einmelden von Ressourcen, welche nur initial eingemeldet und dann nicht mehr verändert werden dürfen. 

 **References** 

* [MOPED Input Bundle KA](StructureDefinition-MopedInputBundleKA.md)
* [MOPED QuestionnaireResponse einmelden Bundle](StructureDefinition-MopedQuestionnaireResponseEinmeldenBundle.md)

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
  "id" : "HTTPVerbInsertUpdateDeleteVS",
  "url" : "https://elga.moped.at/ValueSet/HTTPVerbInsertUpdateDeleteVS",
  "version" : "0.1.0",
  "name" : "HTTPVerbInsertUpdateDeleteVS",
  "title" : "HTTP Verb Insert Update Delete",
  "status" : "draft",
  "date" : "2026-05-15T09:26:31+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "HTTP Verben für das Einmelden von Ressourcen, welche nur initial eingemeldet und dann nicht mehr verändert werden dürfen.",
  "compose" : {
    "include" : [{
      "system" : "http://hl7.org/fhir/http-verb",
      "concept" : [{
        "code" : "POST"
      },
      {
        "code" : "DELETE"
      },
      {
        "code" : "PUT"
      }]
    }]
  }
}

```
