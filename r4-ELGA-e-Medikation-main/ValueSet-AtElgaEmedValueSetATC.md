# HL7.AT.FHIR.ELGA.EMED.R4\ELGA Dosage Category Status ValueSet - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ELGA Dosage Category Status ValueSet**

## ValueSet: ELGA Dosage Category Status ValueSet (Experimental) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/emed/r4/ValueSet/AtElgaEmedValueSetATC | *Version*:0.1.0 | |
| Active as of 2026-09-23 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:AtElgaEmedValueSetATC |

 
Zulässige Ausprägungen der Kategorie einer Dosierung in ELGA. 

 **References** 

* [AT ELGA e-Medikation Medication Magistrale Medikation](StructureDefinition-at-elga-emed-medication-magistrale-zubereitung.md)

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
| Display | The display (used in the*display*element of a[Coding](http://hl7.org/fhir/R4/datatypes.html#Coding)). If there is no display, implementers should not simply display the code, but map the concept into their application |
| Definition | An explanation of the meaning of the concept |
| Comments | Additional notes about how to use the code |



## Resource Content

```json
{
  "resourceType" : "ValueSet",
  "id" : "AtElgaEmedValueSetATC",
  "url" : "https://fhir.hl7.at/elga/emed/r4/ValueSet/AtElgaEmedValueSetATC",
  "version" : "0.1.0",
  "name" : "AtElgaEmedValueSetATC",
  "title" : "ELGA Dosage Category Status ValueSet",
  "status" : "active",
  "experimental" : true,
  "date" : "2026-09-23T16:50:58+00:00",
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
  "description" : "Zulässige Ausprägungen der Kategorie einer Dosierung in ELGA.",
  "compose" : {
    "include" : [{
      "system" : "https://termgit.elga.gv.at/CodeSystem/atc-deutsch-wido"
    }]
  }
}

```
