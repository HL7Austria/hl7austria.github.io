# ELGA.MOPED\Entlassungsart des Patienten ambulant + stationär - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Entlassungsart des Patienten ambulant + stationär**

## ValueSet: Entlassungsart des Patienten ambulant + stationär 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/ValueSet/EntlassungsartVS | *Version*:0.1.0 | |
| Draft as of 2026-04-08 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:EntlassungsartVS |

 
ValueSet für die Entlassungsart des Patienten 

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
  "id" : "EntlassungsartVS",
  "url" : "https://elga.moped.at/ValueSet/EntlassungsartVS",
  "version" : "0.1.0",
  "name" : "EntlassungsartVS",
  "title" : "Entlassungsart des Patienten ambulant + stationär",
  "status" : "draft",
  "date" : "2026-04-08T06:34:39+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "ValueSet für die Entlassungsart des Patienten",
  "compose" : {
    "include" : [{
      "valueSet" : ["https://elga.moped.at/ValueSet/EntlassungsartAVS"]
    },
    {
      "valueSet" : ["https://elga.moped.at/ValueSet/EntlassungsartSVS"]
    }]
  }
}

```
