# ELGA.MOPED\Entlassungsart des Patienten ambulant - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Entlassungsart des Patienten ambulant**

## ValueSet: Entlassungsart des Patienten ambulant (Experimental) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/ValueSet/EntlassungsartAVS | *Version*:0.1.0 | |
| Draft as of 2026-03-29 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:EntlassungsartAVS |

 
ValueSet für die ambulante Entlassungsart des Patienten 

 **References** 

* Included into [EntlassungsartVS](ValueSet-EntlassungsartVS.md)
* [MOPED Encounter Ambulant](StructureDefinition-MopedEncounterA.md)

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
  "id" : "EntlassungsartAVS",
  "url" : "https://elga.moped.at/ValueSet/EntlassungsartAVS",
  "version" : "0.1.0",
  "name" : "EntlassungsartAVS",
  "title" : "Entlassungsart des Patienten ambulant",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-03-29T16:14:43+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "ValueSet für die ambulante Entlassungsart des Patienten",
  "compose" : {
    "include" : [{
      "system" : "https://elga.moped.at/CodeSystem/EntlassungsartCS",
      "concept" : [{
        "code" : "LKF_1"
      },
      {
        "code" : "LKF_2"
      },
      {
        "code" : "LKF_3"
      },
      {
        "code" : "LKF_5"
      },
      {
        "code" : "LKF_6"
      },
      {
        "code" : "LKF_7"
      },
      {
        "code" : "LKF_8"
      },
      {
        "code" : "LKF_9"
      }]
    }]
  }
}

```
