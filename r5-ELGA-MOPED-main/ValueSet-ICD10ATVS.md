# ELGA.MOPED\ICD-10 AT - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ICD-10 AT**

## ValueSet: ICD-10 AT (Experimental) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/ValueSet/ICD10ATVS | *Version*:0.1.0 | |
| Draft as of 2026-03-15 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:ICD10ATVS |

 
ICD-10 BMSGPK 2025+ 

 **References** 

* [MOPED Condition](StructureDefinition-MopedCondition.md)

### Logical Definition (CLD)

 

### Expansion

No Expansion for this valueset (Unknown Code System)

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
  "id" : "ICD10ATVS",
  "url" : "https://elga.moped.at/ValueSet/ICD10ATVS",
  "version" : "0.1.0",
  "name" : "ICD10ATVS",
  "title" : "ICD-10 AT",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-03-15T19:53:47+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "ICD-10 BMSGPK 2025+",
  "compose" : {
    "include" : [{
      "system" : "https://termgit.elga.gv.at/CodeSystem/icd-10-bmsgpk-2025"
    }]
  }
}

```
