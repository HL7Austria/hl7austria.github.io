# ELGA.MOPED\vbPK ValueSet - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **vbPK ValueSet**

## ValueSet: vbPK ValueSet (Experimental) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/ValueSet/VBPKValueSet | *Version*:0.1.0 | |
| Draft as of 2026-05-15 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:VBPKValueSet |

 
ValueSet für die vbPKs 

 **References** 

This value set is not used here; it may be used elsewhere (e.g. specifications and/or implementations that use this content)

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
  "id" : "VBPKValueSet",
  "url" : "https://elga.moped.at/ValueSet/VBPKValueSet",
  "version" : "0.1.0",
  "name" : "VBPKValueSet",
  "title" : "vbPK ValueSet",
  "status" : "draft",
  "experimental" : true,
  "date" : "2026-05-15T09:26:31+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "ValueSet für die vbPKs",
  "compose" : {
    "include" : [{
      "system" : "urn:ietf:rfc:3986",
      "concept" : [{
        "code" : "urn:oid:1.2.40.0.34.4.22.1",
        "display" : "vbPK GH oid"
      },
      {
        "code" : "urn:oid:1.2.40.0.34.4.22.2",
        "display" : "vbPK SV oid"
      },
      {
        "code" : "urn:oid:1.2.40.0.34.4.22.3",
        "display" : "vbPK AS oid"
      }]
    }]
  }
}

```
