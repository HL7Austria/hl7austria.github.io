# ELGA.MOPED\Encounter Status bei der Aufnahme - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Encounter Status bei der Aufnahme**

## ValueSet: Encounter Status bei der Aufnahme (Experimental) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/ValueSet/MopedEncounterStatusAufnahmeVS | *Version*:0.1.0 | |
| Draft as of 2026-01-26 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MopedEncounterStatusAufnahmeVS |

 
Varianten des Encounter Status bei der Aufnahme 

 **References** 

* Included into [MopedEncounterStatusVS](ValueSet-MopedEncounterStatusVS.md)

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
  "id" : "MopedEncounterStatusAufnahmeVS",
  "url" : "https://elga.moped.at/ValueSet/MopedEncounterStatusAufnahmeVS",
  "version" : "0.1.0",
  "name" : "MopedEncounterStatusAufnahmeVS",
  "title" : "Encounter Status bei der Aufnahme",
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
  "description" : "Varianten des Encounter Status bei der Aufnahme",
  "compose" : {
    "include" : [
      {
        "system" : "http://hl7.org/fhir/encounter-status",
        "concept" : [
          {
            "code" : "planned"
          },
          {
            "code" : "in-progress"
          }
        ]
      }
    ]
  }
}

```
