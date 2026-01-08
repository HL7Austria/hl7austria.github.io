# ELGA.MOPED\LKF Abrechnungsgruppe - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **LKF Abrechnungsgruppe**

## ValueSet: LKF Abrechnungsgruppe (Experimental) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/ValueSet/LKFAbrechnungsGruppeVS | *Version*:0.1.0 | |
| Draft as of 2025-10-15 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:LKFAbrechnungsGruppeVS |

 
LKF Abrechnungsgruppe 

 **References** 

* [MOPED ARKRequest](StructureDefinition-MopedARKRequest.md)
* [MOPED LKFRequest](StructureDefinition-MopedLKFRequest.md)

### Logical Definition (CLD)

This value set includes codes based on the following rules:

* Include all codes defined in [`https://elga.moped.at/CodeSystem/LKFHauptdiagnosegruppenCS`](CodeSystem-LKFHauptdiagnosegruppenCS.md)version 📦0.1.0
* Include all codes defined in [`https://elga.moped.at/CodeSystem/LKFmedizinischeEinzelleistungenCS`](CodeSystem-LKFmedizinischeEinzelleistungenCS.md)version 📦0.1.0

 

### Expansion

This value set contains 425 concepts

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
  "id" : "LKFAbrechnungsGruppeVS",
  "url" : "https://elga.moped.at/ValueSet/LKFAbrechnungsGruppeVS",
  "version" : "0.1.0",
  "name" : "LKFAbrechnungsGruppeVS",
  "title" : "LKF Abrechnungsgruppe",
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
  "description" : "LKF Abrechnungsgruppe",
  "compose" : {
    "include" : [
      {
        "system" : "https://elga.moped.at/CodeSystem/LKFHauptdiagnosegruppenCS"
      },
      {
        "system" : "https://elga.moped.at/CodeSystem/LKFmedizinischeEinzelleistungenCS"
      }
    ]
  }
}

```
