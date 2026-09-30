# HL7.AT.FHIR.ELGA.EDIAG.R4\AT e-Diagnose Procedure Code - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT e-Diagnose Procedure Code**

## ValueSet: AT e-Diagnose Procedure Code (Experimental) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/ediag/r4/ValueSet/at-ediag-procedure-code | *Version*:0.1.0 | |
| Draft as of 2026-09-30 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:AtEDiagProcedureCode |

 
Value-Set für die Codierung von Prozeduren. 

 **References** 

* [AT ELGA e-Diagnose Procedure](StructureDefinition-at-elga-ediag-procedure.md)

* Dieses Value-Set wurde für die e-Diagnose entworfen und wird auf den [österreichische e-Health Terminologieserver](https://termgit.elga.gv.at/) verschoben, abhängig vom Ergebnis des Ballots.
* Der IG Publisher baut aktuell auf SNOMED Intl. Version http://snomed.info/sct/900000000000207008/version/20250201 auf, weshalb weniger Konzepte in diesem Value-Set angezeigt werden als in der aktuellen Version von SNOMED CT verfügbar sind. Dieses Problem wird bereinigt, sobald das Value-Set auf den österreichische e-Health Terminologieserver verschoben wird.
* Aktuell werden österreichische Übersetzungen auf Basis der Austrian Extension in dem Value-Set noch nicht aufgelöst. Dieses Problem wird bereinigt, sobald das Value-Set auf den österreichische e-Health Terminologieserver verschoben wird.

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
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-09-30T11:14:45+00:00",
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
  "description" : "Value-Set für die Codierung von Prozeduren.",
  "compose" : {
    "include" : [{
      "system" : "http://snomed.info/sct",
      "filter" : [{
        "property" : "constraint",
        "op" : "=",
        "value" : "< 416940007 |History of procedure (situation)| . 363589002 |Associated procedure (attribute)|"
      }]
    }]
  }
}

```
