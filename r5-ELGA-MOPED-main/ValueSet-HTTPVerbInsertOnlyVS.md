# ELGA.MOPED\HTTP Verb Insert Only - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HTTP Verb Insert Only**

## ValueSet: HTTP Verb Insert Only 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/ValueSet/HTTPVerbInsertOnlyVS | *Version*:0.1.0 | |
| Draft as of 2026-04-29 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:HTTPVerbInsertOnlyVS |

 
HTTP Verben für das Einmelden von Ressourcen, welche nur initial eingemeldet und dann nicht mehr verändert werden dürfen. 

 **References** 

* [MOPED Abrechnen Bundle KH](StructureDefinition-MopedAbrechnenBundleKH.md)
* [MOPED Anfragen Bundle KH](StructureDefinition-MopedAnfragenBundleKH.md)
* [MOPED Antworten Bundle SV](StructureDefinition-MopedAntwortenBundleSV.md)
* [MOPED Entscheiden Bundle LGF](StructureDefinition-MopedEntscheidenLGFBundle.md)
* [MOPED Input Bundle KH](StructureDefinition-MopedInputBundleKH.md)
* [MOPED Melden Bundle LGF](StructureDefinition-MopedMeldenLGFBundle.md)

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
  "id" : "HTTPVerbInsertOnlyVS",
  "url" : "https://elga.moped.at/ValueSet/HTTPVerbInsertOnlyVS",
  "version" : "0.1.0",
  "name" : "HTTPVerbInsertOnlyVS",
  "title" : "HTTP Verb Insert Only",
  "status" : "draft",
  "date" : "2026-04-29T07:28:34+00:00",
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
      }]
    }]
  }
}

```
