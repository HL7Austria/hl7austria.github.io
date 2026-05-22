# ELGA.MOPED\Spezielle Organisationsform - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Spezielle Organisationsform**

## ValueSet: Spezielle Organisationsform (Experimental) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/ValueSet/SpezielleOrganisationsformVS | *Version*:0.1.0 | |
| Draft as of 2026-05-22 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:SpezielleOrganisationsformVS |

 
Die spezielle Organisationsform der stationären Versorgung ist im Kostenstellenplan zusätzlich zum Funktionscode mit einer entsprechenden Kennzeichnung zu versehen. 

 **References** 

* [Kostenstelle](StructureDefinition-moped-ext-Kostenstelle.md)

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
  "id" : "SpezielleOrganisationsformVS",
  "url" : "https://elga.moped.at/ValueSet/SpezielleOrganisationsformVS",
  "version" : "0.1.0",
  "name" : "SpezielleOrganisationsformVS",
  "title" : "Spezielle Organisationsform",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-05-22T08:08:56+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "Die spezielle Organisationsform der stationären Versorgung ist im Kostenstellenplan \nzusätzlich zum Funktionscode mit einer entsprechenden Kennzeichnung zu versehen.",
  "compose" : {
    "include" : [{
      "system" : "https://elga.moped.at/CodeSystem/SpezielleOrganisationsformenCS"
    },
    {
      "system" : "https://elga.moped.at/CodeSystem/SpezielleBetriebsformenCS"
    }]
  }
}

```
