# HL7.AT.FHIR.ELGA.EMED.R4\ELGA_MedikationRezeptart - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ELGA_MedikationRezeptart**

## ValueSet: ELGA_MedikationRezeptart 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://termgit.elga.gv.at/ValueSet/elga-medikationrezeptart | *Version*:0.1.0 | |
| Active as of 2024-03-25 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:elga-medikationrezeptart |
| *Other Identifiers:*OID:1.2.40.0.34.10.68 (use: official, ) | | |

 
**Description:** ELGA ValueSet for Prescription type 
**Beschreibung:** ELGA ValueSet für RezeptArt 

 **References** 

* [At ELGA e-Medikation MedicationRequest Geplante Abgabe](StructureDefinition-at-elga-emed-medicationrequest-geplanteabgabe.md)

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
  "id" : "elga-medikationrezeptart",
  "meta" : {
    "profile" : ["http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-valueset"]
  },
  "url" : "https://termgit.elga.gv.at/ValueSet/elga-medikationrezeptart",
  "identifier" : [{
    "use" : "official",
    "system" : "urn:ietf:rfc:3986",
    "value" : "urn:oid:1.2.40.0.34.10.68"
  }],
  "version" : "0.1.0",
  "name" : "elga-medikationrezeptart",
  "title" : "ELGA_MedikationRezeptart",
  "status" : "active",
  "date" : "2024-03-25",
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
  "description" : "**Description:** ELGA ValueSet for Prescription type\n\n**Beschreibung:** ELGA ValueSet für RezeptArt",
  "compose" : {
    "include" : [{
      "extension" : [{
        "url" : "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-ext-valueset-systemoid",
        "valueOid" : "urn:oid:1.2.40.0.10.1.4.3.4.3.3"
      }],
      "system" : "https://termgit.elga.gv.at/CodeSystem/medikationrezeptart",
      "version" : "1.0.0+20230131",
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
    }]
  }
}

```
