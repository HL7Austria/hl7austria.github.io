# ELGA.MOPED\Transportart - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Transportart**

## ValueSet: Transportart (Experimental) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/ValueSet/TransportartVS | *Version*:0.1.0 | |
| Draft as of 2026-01-26 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:TransportartVS |

 
ValueSet für die Transportart des Patienten 

 **References** 

* [MOPED Encounter](StructureDefinition-MopedEncounter.md)

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
  "id" : "TransportartVS",
  "url" : "https://elga.moped.at/ValueSet/TransportartVS",
  "version" : "0.1.0",
  "name" : "TransportartVS",
  "title" : "Transportart",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-01-26T07:03:23+00:00",
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
  "description" : "ValueSet für die Transportart des Patienten",
  "compose" : {
    "include" : [
      {
        "system" : "https://elga.moped.at/CodeSystem/TransportartCS"
      }
    ]
  }
}

```
