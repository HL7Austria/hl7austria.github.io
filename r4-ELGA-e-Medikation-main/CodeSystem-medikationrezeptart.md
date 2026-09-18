# HL7.AT.FHIR.ELGA.EMED.R4\MedikationRezeptart - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MedikationRezeptart**

## CodeSystem: MedikationRezeptart 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://termgit.elga.gv.at/CodeSystem/medikationrezeptart | *Version*:0.1.1 | |
| Active as of 2015-03-31 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:medikationrezeptart |
| *Other Identifiers:*OID:1.2.40.0.10.1.4.3.4.3.3 (use: official, ) | | |

 
**Description:** ELGA Codelist for Prescription type 
**Beschreibung:** ELGA Codeliste für RezeptArt 

 This Code system is referenced in the content logical definition of the following value sets: 

* [ELGA_MedikationRezeptart](ValueSet-elga-medikationrezeptart.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "medikationrezeptart",
  "url" : "https://termgit.elga.gv.at/CodeSystem/medikationrezeptart",
  "identifier" : [{
    "use" : "official",
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:1.2.40.0.10.1.4.3.4.3.3"
  }],
  "version" : "0.1.1",
  "name" : "medikationrezeptart",
  "title" : "MedikationRezeptart",
  "status" : "active",
  "date" : "2015-03-31",
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
  "description" : "**Description:** ELGA Codelist for Prescription type\n\n**Beschreibung:** ELGA Codeliste für RezeptArt",
  "content" : "complete",
  "count" : 3,
  "concept" : [{
    "code" : "KASSEN",
    "display" : "Kassenrezept"
  },
  {
    "code" : "PRIVAT",
    "display" : "Privatrezept"
  },
  {
    "code" : "SUBST",
    "display" : "Substitutionsrezept"
  }]
}

```
