# ELGA.MOPED\HTTP Verb Update Only - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HTTP Verb Update Only**

## ValueSet: HTTP Verb Update Only 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/ValueSet/HTTPVerbUpdateOnlyVS | *Version*:0.1.0 | |
| Draft as of 2026-04-07 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:HTTPVerbUpdateOnlyVS |

 
HTTP Verben für das Einmelden von Ressourcen, welche nach dem initialen Einmelden nur aktualisiert werden dürfen. 

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
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R5/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "HTTPVerbUpdateOnlyVS",
  "url" : "https://elga.moped.at/ValueSet/HTTPVerbUpdateOnlyVS",
  "version" : "0.1.0",
  "name" : "HTTPVerbUpdateOnlyVS",
  "title" : "HTTP Verb Update Only",
  "status" : "draft",
  "date" : "2026-04-07T06:39:12+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "HTTP Verben für das Einmelden von Ressourcen, welche nach dem initialen Einmelden nur aktualisiert werden dürfen.",
  "compose" : {
    "include" : [{
      "system" : "http://hl7.org/fhir/http-verb",
      "concept" : [{
        "code" : "PUT"
      }]
    }]
  }
}

```
