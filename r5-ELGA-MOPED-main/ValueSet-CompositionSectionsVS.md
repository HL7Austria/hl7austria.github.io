# ELGA.MOPED\Moped Composition Sections ValueSet - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Moped Composition Sections ValueSet**

## ValueSet: Moped Composition Sections ValueSet (Experimental) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/ValueSet/CompositionSectionsVS | *Version*:0.1.0 | |
| Draft as of 2026-03-01 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:CompositionSectionsVS |

 
ValueSet für die Moped Sections der Composition Ressource 

 **References** 

* [MOPED Composition](StructureDefinition-MopedComposition.md)

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
  "id" : "CompositionSectionsVS",
  "url" : "https://elga.moped.at/ValueSet/CompositionSectionsVS",
  "version" : "0.1.0",
  "name" : "CompositionSectionsVS",
  "title" : "Moped Composition Sections ValueSet",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-03-01T19:57:07+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "ValueSet für die Moped Sections der Composition Ressource",
  "compose" : {
    "include" : [{
      "system" : "https://elga.moped.at/CodeSystem/CompositionSectionsCS"
    },
    {
      "system" : "https://elga.moped.at/CodeSystem/MopedEncounterTypesCS",
      "concept" : [{
        "code" : "ENC"
      },
      {
        "code" : "TENC"
      }]
    },
    {
      "system" : "https://elga.moped.at/CodeSystem/MopedClaimTypeCS",
      "concept" : [{
        "code" : "ARKREQ"
      },
      {
        "code" : "ARKRESP"
      },
      {
        "code" : "VAEREQ"
      },
      {
        "code" : "VAERESP"
      },
      {
        "code" : "LKFREQ"
      },
      {
        "code" : "LKFRESP"
      }]
    }]
  }
}

```
