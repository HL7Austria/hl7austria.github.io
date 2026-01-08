# ELGA.MOPED\KH Organization - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **KH Organization**

## Resource Profile: KH Organization 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/KHOrganization | *Version*:0.1.0 | |
| Draft as of 2025-10-15 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:KHOrganization |

 
MOPED Profil für KH Organizations 

**Usages:**

* Refer to this Profile: [MOPED ARKRequest](StructureDefinition-MopedARKRequest.md), [MOPED Composition](StructureDefinition-MopedComposition.md), [MOPED LKFRequest](StructureDefinition-MopedLKFRequest.md), [MOPED Procedure](StructureDefinition-MopedProcedure.md)...Show 3 more,[Moped QuestionnaireResponse](StructureDefinition-MopedQuestionnaireResponse.md),[MOPED VAERequest](StructureDefinition-MopedVAERequest.md)and[MOPED VAEResponse](StructureDefinition-MopedVAEResponse.md)
* Examples for this Profile: [Testkrankenhaus](Organization-KHK999.md), [Herz Jesu-Krankenhaus](Organization-OrganizationHerzJesuKrankenhaus.md) and [Krankenhaus der Barmherzigen Schwestern vom Hl. Vinzenz von Paul Ried](Organization-OrganizationKrankenhausRied.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/KHOrganization)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-KHOrganization.csv), [Excel](StructureDefinition-KHOrganization.xlsx), [Schematron](StructureDefinition-KHOrganization.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "KHOrganization",
  "url" : "https://elga.moped.at/StructureDefinition/KHOrganization",
  "version" : "0.1.0",
  "name" : "KHOrganization",
  "title" : "KH Organization",
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
  "description" : "MOPED Profil für KH Organizations",
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
  "baseDefinition" : "http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-organization",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Organization",
        "path" : "Organization"
      },
      {
        "id" : "Organization.type",
        "path" : "Organization.type",
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://termgit.elga.gv.at/CodeSystem/elga-gtelvogdarollen",
              "code" : "300",
              "display" : "Allgemeine Krankenanstalt"
            }
          ]
        }
      }
    ]
  }
}

```
