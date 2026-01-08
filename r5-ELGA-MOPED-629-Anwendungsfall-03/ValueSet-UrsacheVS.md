# ELGA.MOPED\Ursache für Behandlung - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Ursache für Behandlung**

## ValueSet: Ursache für Behandlung (Experimental) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/ValueSet/UrsacheVS | *Version*:0.1.0 | |
| Draft as of 2025-10-15 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:UrsacheVS |

 
ValueSet für die Ursache der Behandlung laut Ka-Org 

 **References** 

* [MOPED Encounter](StructureDefinition-MopedEncounter.md)

### Logical Definition (CLD)

* Include all codes defined in [`https://elga.moped.at/CodeSystem/UrsacheCS`](CodeSystem-UrsacheCS.md)version 📦0.1.0

 

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
  "id" : "UrsacheVS",
  "url" : "https://elga.moped.at/ValueSet/UrsacheVS",
  "version" : "0.1.0",
  "name" : "UrsacheVS",
  "title" : "Ursache für Behandlung",
  "status" : "draft",
  "experimental" : true,
  "date" : "2025-10-15T12:16:02+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [
    {
      "name" : "ELGA GmbH",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://elga.gv.at"
        }
      ]
    }
  ],
  "description" : "ValueSet für die Ursache der Behandlung laut Ka-Org",
  "compose" : {
    "include" : [
      {
        "system" : "https://elga.moped.at/CodeSystem/UrsacheCS"
      }
    ]
  }
}

```
