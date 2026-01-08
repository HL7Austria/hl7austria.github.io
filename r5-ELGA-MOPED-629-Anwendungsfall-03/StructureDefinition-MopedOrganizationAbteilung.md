# ELGA.MOPED\MOPED Organization Abteilung - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MOPED Organization Abteilung**

## Resource Profile: MOPED Organization Abteilung 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/MopedOrganizationAbteilung | *Version*:0.1.0 | |
| Draft as of 2025-10-15 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MopedOrganizationAbteilung |

 
MOPED Profil für Abteilungen innerhalb einer Krankenanstalt. 

**Usages:**

* Refer to this Profile: [MOPED Composition](StructureDefinition-MopedComposition.md), [MOPED Procedure](StructureDefinition-MopedProcedure.md) and [MOPED TransferEncounter](StructureDefinition-MopedTransferEncounter.md)
* Examples for this Profile: [Organization/AbteilungHerzJesu1](Organization-AbteilungHerzJesu1.md), [Organization/AbteilungKHRied1](Organization-AbteilungKHRied1.md), [Organization/AbteilungKHRied2](Organization-AbteilungKHRied2.md), [Organization/AbteilungKHRied3](Organization-AbteilungKHRied3.md)...Show 9 more,[Organization/AbteilungKHRied4](Organization-AbteilungKHRied4.md),[Organization/KHK999ABT11111100](Organization-KHK999ABT11111100.md),[Organization/KHK999ABT12111100](Organization-KHK999ABT12111100.md),[Organization/KHK999ABT12118102](Organization-KHK999ABT12118102.md),[Organization/KHK999ABT16075000](Organization-KHK999ABT16075000.md),[Organization/KHK999ABT16111111](Organization-KHK999ABT16111111.md),[Organization/KHK999ABT16111112](Organization-KHK999ABT16111112.md),[Organization/KHK999ABT16211100](Organization-KHK999ABT16211100.md)and[Organization/KHK999ABT16518011](Organization-KHK999ABT16518011.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/MopedOrganizationAbteilung)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MopedOrganizationAbteilung.csv), [Excel](StructureDefinition-MopedOrganizationAbteilung.xlsx), [Schematron](StructureDefinition-MopedOrganizationAbteilung.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MopedOrganizationAbteilung",
  "url" : "https://elga.moped.at/StructureDefinition/MopedOrganizationAbteilung",
  "version" : "0.1.0",
  "name" : "MopedOrganizationAbteilung",
  "title" : "MOPED Organization Abteilung",
  "status" : "draft",
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
  "description" : "MOPED Profil für Abteilungen innerhalb einer Krankenanstalt.",
  "fhirVersion" : "5.0.0",
  "mapping" : [
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 V2 Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "interface",
      "uri" : "http://hl7.org/fhir/interface",
      "name" : "Interface Pattern"
    },
    {
      "identity" : "servd",
      "uri" : "http://www.omg.org/spec/ServD/1.0/",
      "name" : "ServD"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Organization",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Organization",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Organization",
        "path" : "Organization"
      },
      {
        "id" : "Organization.extension",
        "path" : "Organization.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "Organization.extension:Kostenstelle",
        "path" : "Organization.extension",
        "sliceName" : "Kostenstelle",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://elga.moped.at/StructureDefinition/moped-ext-Kostenstelle"
            ]
          }
        ]
      },
      {
        "id" : "Organization.identifier",
        "path" : "Organization.identifier",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "system"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "Organization.identifier:Funktionscode",
        "path" : "Organization.identifier",
        "sliceName" : "Funktionscode",
        "short" : "Funktionscode der Abteilung laut LKF",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Organization.identifier:Funktionscode.system",
        "path" : "Organization.identifier.system",
        "min" : 1,
        "fixedUri" : "http://example.org/lkf-system/funktionscode"
      },
      {
        "id" : "Organization.identifier:Funktionssubcode",
        "path" : "Organization.identifier",
        "sliceName" : "Funktionssubcode",
        "short" : "Funktionssubcode der Abteilung laut LKF",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Organization.identifier:Funktionssubcode.system",
        "path" : "Organization.identifier.system",
        "min" : 1,
        "fixedUri" : "http://example.org/lkf-system/funktionssubcode"
      },
      {
        "id" : "Organization.type",
        "path" : "Organization.type",
        "fixedCodeableConcept" : {
          "coding" : [
            {
              "system" : "http://terminology.hl7.org/CodeSystem/organization-type",
              "code" : "dept"
            }
          ]
        }
      },
      {
        "id" : "Organization.partOf",
        "path" : "Organization.partOf",
        "short" : "Krankenanstalt zu welcher die Abteilung gehört",
        "type" : [
          {
            "extension" : [
              {
                "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy",
                "valueBoolean" : true
              }
            ],
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-organization"
            ]
          }
        ]
      }
    ]
  }
}

```
