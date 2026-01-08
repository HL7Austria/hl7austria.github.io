# ELGA.MOPED\MOPED RelatedPerson Relationship Type ValueSet - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MOPED RelatedPerson Relationship Type ValueSet**

## ValueSet: MOPED RelatedPerson Relationship Type ValueSet (Experimental) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/ValueSet/MopedRelatedPersonRelationshipTypeVS | *Version*:0.1.0 | |
| Draft as of 2025-10-15 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MopedRelatedPersonRelationshipTypeVS |

 
A value set containing codes for the type of relationship of a related person to the patient. 

 **References** 

* [MOPED Hauptversicherter](StructureDefinition-Hauptversicherter.md)

### Logical Definition (CLD)

 

### Expansion

This value set contains 19 concepts

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
  "id" : "MopedRelatedPersonRelationshipTypeVS",
  "url" : "https://elga.moped.at/ValueSet/MopedRelatedPersonRelationshipTypeVS",
  "version" : "0.1.0",
  "name" : "MopedRelatedPersonRelationshipTypeVS",
  "title" : "MOPED RelatedPerson Relationship Type ValueSet",
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
  "description" : "A value set containing codes for the type of relationship of a related person to the patient.",
  "compose" : {
    "include" : [
      {
        "valueSet" : [
          "http://hl7.org/fhir/ValueSet/relatedperson-relationshiptype"
        ]
      },
      {
        "system" : "http://terminology.hl7.org/CodeSystem/v3-RoleCode",
        "concept" : [
          {
            "code" : "SELF",
            "display" : "self"
          }
        ]
      }
    ]
  }
}

```
