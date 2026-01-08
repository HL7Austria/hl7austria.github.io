# ELGA.MOPED\Verdacht auf Arbeits- oder Schuelerunfall ValueSet - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Verdacht auf Arbeits- oder Schuelerunfall ValueSet**

## ValueSet: Verdacht auf Arbeits- oder Schuelerunfall ValueSet (Experimental) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/ValueSet/VerdachtArbeitsSchuelerunfallVS | *Version*:0.1.0 | |
| Draft as of 2025-10-15 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:VerdachtArbeitsSchuelerunfallVS |

 
ValueSet für den Verdacht auf einen Arbeits- oder Schuelerunfall 

 **References** 

* [MOPED VAERequest](StructureDefinition-MopedVAERequest.md)

### Logical Definition (CLD)

This value set includes codes based on the following rules:

* Import all the codes that are contained in [ActIncidentCode](http://terminology.hl7.org/6.5.0/ValueSet-v3-ActIncidentCode.html)
* Include all codes defined in [`https://elga.moped.at/CodeSystem/VerdachtArbeitsSchuelerunfallCS`](CodeSystem-VerdachtArbeitsSchuelerunfallCS.md)version 📦0.1.0

 

### Expansion

This value set contains 9 concepts

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
  "id" : "VerdachtArbeitsSchuelerunfallVS",
  "url" : "https://elga.moped.at/ValueSet/VerdachtArbeitsSchuelerunfallVS",
  "version" : "0.1.0",
  "name" : "VerdachtArbeitsSchuelerunfallVS",
  "title" : "Verdacht auf Arbeits- oder Schuelerunfall ValueSet",
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
  "description" : "ValueSet für den Verdacht auf einen Arbeits- oder Schuelerunfall",
  "compose" : {
    "include" : [
      {
        "valueSet" : ["http://terminology.hl7.org/ValueSet/v3-ActIncidentCode"]
      },
      {
        "system" : "https://elga.moped.at/CodeSystem/VerdachtArbeitsSchuelerunfallCS"
      }
    ]
  }
}

```
