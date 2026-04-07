# ELGA.MOPED\Sonderklasse ValueSet - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Sonderklasse ValueSet**

## ValueSet: Sonderklasse ValueSet (Experimental) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/ValueSet/SonderklasseVS | *Version*:0.1.0 | |
| Draft as of 2026-04-07 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:SonderklasseVS |

 
ValueSet für die Klasse (KaOrg) 

 **References** 

* [Supporting Info Extension for ClaimResponse - Vortageanzahl auf Kostenbeitrag](StructureDefinition-MopedSupportingInfoVortageanzahlAufKostenbeitrag.md)
* [MOPED VAERequest](StructureDefinition-MopedVAERequest.md)

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
  "id" : "SonderklasseVS",
  "url" : "https://elga.moped.at/ValueSet/SonderklasseVS",
  "version" : "0.1.0",
  "name" : "SonderklasseVS",
  "title" : "Sonderklasse ValueSet",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-04-07T19:20:35+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "ValueSet für die Klasse (KaOrg)",
  "compose" : {
    "include" : [{
      "system" : "https://elga.moped.at/CodeSystem/SonderklasseCS"
    }]
  }
}

```
