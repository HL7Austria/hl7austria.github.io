# HL7.AT.FHIR.ELGA.EDIAG.R4\AT e-Diagnose Procedure Code - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT e-Diagnose Procedure Code**

## ValueSet: AT e-Diagnose Procedure Code (Experimental) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/ediag/r4/ValueSet/at-ediag-procedure-code | *Version*:0.1.0 | |
| Active as of 2026-09-17 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:AtEDiagProcedureCode |

 
Dieses Value-Set bildet die Prozeduren ab, die in der e-Diagnose dokumentiert werden können. 

 **References** 

* [AT ELGA e-Diagnose Procedure](StructureDefinition-at-elga-ediag-procedure.md)

Zu diesem Value-Set sind folgende Punkte zu berücksichtigen:

* Dieses Value-Set kopiert die Definition vom [ValueSet: Procedures - IPS](http://hl7.org/fhir/uv/ips/ValueSet/procedures-uv-ips). Wenn man die ECL, auf der dieses Value-Set basiert, über SNOMED CT auswertet, erhält man ca. 60000 Konzepte. Im Gegensatz zu den hier angegebenen 983 Konzepten. Dazu wurde auch auf chat.fhir.org nachgefragt: [https://chat.fhir.org/#narrow/channel/207835-IPS/topic/Number.20of.20concepts.20in.20ProceduresUvIps](https://chat.fhir.org/#narrow/channel/207835-IPS/topic/Number.20of.20concepts.20in.20ProceduresUvIps)
* Zudem kann sich ganz generell die Menge der Konzepte im Rahmen der e-Diagnose noch ändern.

### Logical Definition (CLD)

 

### Expansion

-------

 Explanation of the columns that may appear on this page: 

| | |
| :--- | :--- |
| Level | A few code lists that FHIR defines are hierarchical - each code is assigned a level. In this scheme, some codes are under other codes, and imply that the code they are under also applies |
| System | The source of the definition of the code (when the value set draws in codes defined elsewhere) |
| Code | The code (used as the code in the resource instance) |
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "at-ediag-procedure-code",
  "url" : "https://fhir.hl7.at/elga/ediag/r4/ValueSet/at-ediag-procedure-code",
  "version" : "0.1.0",
  "name" : "AtEDiagProcedureCode",
  "title" : "AT e-Diagnose Procedure Code",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-09-17T12:50:52+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "http://elga.gv.at"
    }]
  },
  {
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at",
      "use" : "work"
    }]
  }],
  "description" : "Dieses Value-Set bildet die Prozeduren ab, die in der e-Diagnose dokumentiert werden können.",
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "filter" : [{
        "property" : "concept",
        "op" : "descendent-of",
        "value" : "71388002"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "787480003"
      }]
    }],
    "exclude" : [{
      "system" : "http://snomed.info/sct",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "14734007"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "59524001"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "389067005"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "442006003"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "225288009"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "308335008"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "710135002"
      }]
    },
    {
      "system" : "http://snomed.info/sct",
      "filter" : [{
        "property" : "concept",
        "op" : "is-a",
        "value" : "389084004"
      }]
    }]
  }
}

```
