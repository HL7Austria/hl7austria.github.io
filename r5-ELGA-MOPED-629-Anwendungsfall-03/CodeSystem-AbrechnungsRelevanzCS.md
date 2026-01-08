# ELGA.MOPED\Abrechnungsrelevanz der medizinischen Leistung - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Abrechnungsrelevanz der medizinischen Leistung**

## CodeSystem: Abrechnungsrelevanz der medizinischen Leistung (Experimental) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/CodeSystem/AbrechnungsRelevanzCS | *Version*:0.1.0 | |
| Active as of 2025-10-15 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:AbrechnungsRelevanzCS |

 
Abrechnungsrelevanz der medizinischen Leistung 

 This Code system is referenced in the content logical definition of the following value sets: 

* [AbrechnungsRelevanzVS](ValueSet-AbrechnungsRelevanzVS.md)



## Resource Content

```json
{
  "resourceType" : "CodeSystem",
  "id" : "AbrechnungsRelevanzCS",
  "url" : "https://elga.moped.at/CodeSystem/AbrechnungsRelevanzCS",
  "version" : "0.1.0",
  "name" : "AbrechnungsRelevanzCS",
  "title" : "Abrechnungsrelevanz der medizinischen Leistung",
  "status" : "active",
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
  "description" : "Abrechnungsrelevanz der medizinischen Leistung",
  "caseSensitive" : true,
  "content" : "complete",
  "count" : 3,
  "concept" : [
    {
      "code" : "J",
      "display" : "Ja (Die Leistung ist bei der Bepunktung zu berücksichtigen.)"
    },
    {
      "code" : "N",
      "display" : "Nein (Die Leistung ist bei der Bepunktung nicht zu berücksichtigen.)"
    },
    {
      "code" : "K",
      "display" : "Nein (Die Leistung ist bei der Bepunktung nicht zu berücksichtigen, wird aber von einem Sozialversicherungsträger vergütet.)"
    }
  ]
}

```
