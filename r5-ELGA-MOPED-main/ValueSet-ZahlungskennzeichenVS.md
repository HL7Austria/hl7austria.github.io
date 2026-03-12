# ELGA.MOPED\ValueSet Zahlungskennzeichen ARK - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ValueSet Zahlungskennzeichen ARK**

## ValueSet: ValueSet Zahlungskennzeichen ARK (Experimental) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/ValueSet/ZahlungskennzeichenVS | *Version*:0.1.0 | |
| Draft as of 2026-03-12 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:ZahlungskennzeichenVS |

 
ValueSet für das Zahlungskennzeichen ARK 

 **References** 

* [Zahlungskennzeichen](StructureDefinition-moped-ext-Zahlungskennzeichen.md)

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
  "id" : "ZahlungskennzeichenVS",
  "url" : "https://elga.moped.at/ValueSet/ZahlungskennzeichenVS",
  "version" : "0.1.0",
  "name" : "ZahlungskennzeichenVS",
  "title" : "ValueSet Zahlungskennzeichen ARK",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-03-12T09:42:23+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "ValueSet für das Zahlungskennzeichen ARK",
  "compose" : {
    "include" : [{
      "system" : "https://elga.moped.at/CodeSystem/ZahlungskennzeichenRegressCS"
    },
    {
      "system" : "https://elga.moped.at/CodeSystem/ZahlungskennzeichenAuslaenderverrechnungCS"
    }]
  }
}

```
