# ELGA.MOPED\Claim Type ValueSet - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Claim Type ValueSet**

## ValueSet: Claim Type ValueSet 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/ValueSet/MopedClaimTypeVS | *Version*:0.1.0 | |
| Draft as of 2026-03-24 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MopedClaimTypeVS |

 
ValueSet für die Arten der Claims/ClaimResponses 

 **References** 

* [MOPED ARKRequest](StructureDefinition-MopedARKRequest.md)
* [MOPED ARKRequest](StructureDefinition-MopedARKRequest.md)
* [MOPED ARKResponse](StructureDefinition-MopedARKResponse.md)
* [MOPED ARKResponse](StructureDefinition-MopedARKResponse.md)
* [MOPED LKFRequest](StructureDefinition-MopedLKFRequest.md)
* [MOPED LKFRequest](StructureDefinition-MopedLKFRequest.md)
* [MOPED LKFResponse](StructureDefinition-MopedLKFResponse.md)
* [MOPED LKFResponse](StructureDefinition-MopedLKFResponse.md)
* [MOPED VAERequest](StructureDefinition-MopedVAERequest.md)
* [MOPED VAERequest](StructureDefinition-MopedVAERequest.md)
* [MOPED VAEResponse](StructureDefinition-MopedVAEResponse.md)
* [MOPED VAEResponse](StructureDefinition-MopedVAEResponse.md)

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
  "id" : "MopedClaimTypeVS",
  "url" : "https://elga.moped.at/ValueSet/MopedClaimTypeVS",
  "version" : "0.1.0",
  "name" : "MopedClaimTypeVS",
  "title" : "Claim Type ValueSet",
  "status" : "draft",
  "date" : "2026-03-24T19:35:33+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "ValueSet für die Arten der Claims/ClaimResponses",
  "compose" : {
    "include" : [{
      "system" : "https://elga.moped.at/CodeSystem/MopedClaimTypeCS",
      "concept" : [{
        "code" : "VAEREQ",
        "display" : "VAE Request"
      },
      {
        "code" : "VAERESP",
        "display" : "VAE Response"
      },
      {
        "code" : "LKFREQ",
        "display" : "LKF Request"
      },
      {
        "code" : "LKFRESP",
        "display" : "LKF Response"
      },
      {
        "code" : "ARKREQ",
        "display" : "ARK Request"
      },
      {
        "code" : "ARKRESP",
        "display" : "ARK Response"
      }]
    }]
  }
}

```
