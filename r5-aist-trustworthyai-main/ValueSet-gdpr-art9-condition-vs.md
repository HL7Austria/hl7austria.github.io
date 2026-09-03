# GDPR Article 9 Condition Value Set - v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **GDPR Article 9 Condition Value Set**

## ValueSet: GDPR Article 9 Condition Value Set 

| | |
| :--- | :--- |
| *Official URL*:http://example.org/fhir/eu-ai-transparency/ValueSet/gdpr-art9-condition-vs | *Version*:0.1.0 |
| Active as of 2026-09-03 | *Computable Name*:GDPRArt9ConditionVS |

 
Selected Article 9(2) GDPR conditions relevant to processing health data and other special categories of personal data in this implementation guide. 

 **References** 

* [EU AI Provenance](StructureDefinition-eu-ai-provenance.md)

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
  "id" : "gdpr-art9-condition-vs",
  "url" : "http://example.org/fhir/eu-ai-transparency/ValueSet/gdpr-art9-condition-vs",
  "version" : "0.1.0",
  "name" : "GDPRArt9ConditionVS",
  "title" : "GDPR Article 9 Condition Value Set",
  "status" : "active",
  "experimental" : false,
  "date" : "2026-09-03T11:53:05+00:00",
  "publisher" : "Selina Adlberger",
  "description" : "Selected Article 9(2) GDPR conditions relevant to processing health data and other special categories of personal data in this implementation guide.",
  "compose" : {
    "include" : [{
      "system" : "http://example.org/fhir/eu-ai-transparency/CodeSystem/gdpr-art9-codesystem"
    }]
  }
}

```
