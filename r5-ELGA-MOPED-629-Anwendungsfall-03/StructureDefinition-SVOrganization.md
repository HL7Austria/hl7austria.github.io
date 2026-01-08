# ELGA.MOPED\SV Organization - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **SV Organization**

## Resource Profile: SV Organization 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/SVOrganization | *Version*:0.1.0 | |
| Draft as of 2025-10-15 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:SVOrganization |

 
MOPED Profil für SV Organizations 

**Usages:**

* Refer to this Profile: [MOPED ARKRequest](StructureDefinition-MopedARKRequest.md), [MOPED Composition](StructureDefinition-MopedComposition.md), [MOPED Coverage](StructureDefinition-MopedCoverage.md), [MOPED LKFRequest](StructureDefinition-MopedLKFRequest.md)...Show 2 more,[MOPED VAERequest](StructureDefinition-MopedVAERequest.md)and[MOPED VAEResponse](StructureDefinition-MopedVAEResponse.md)
* Examples for this Profile: [Österreichische Gesundheitskasse Wien](Organization-SV11.md), [Österreichische Gesundheitskasse Niederösterreich](Organization-SV12.md), [Österreichische Gesundheitskasse Burgenland](Organization-SV13.md), [Österreichische Gesundheitskasse Oberösterreich](Organization-SV14.md)...Show 5 more,[Österreichische Gesundheitskasse Steiermark](Organization-SV15.md),[Österreichische Gesundheitskasse Kärnten](Organization-SV16.md),[Österreichische Gesundheitskasse Salzburg](Organization-SV17.md),[Österreichische Gesundheitskasse Tirol](Organization-SV18.md)and[Österreichische Gesundheitskasse Vorarlberg](Organization-SV19.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/SVOrganization)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-SVOrganization.csv), [Excel](StructureDefinition-SVOrganization.xlsx), [Schematron](StructureDefinition-SVOrganization.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "SVOrganization",
  "url" : "https://elga.moped.at/StructureDefinition/SVOrganization",
  "version" : "0.1.0",
  "name" : "SVOrganization",
  "title" : "SV Organization",
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
  "description" : "MOPED Profil für SV Organizations",
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
              "code" : "406",
              "display" : "Sozialversicherung"
            }
          ]
        }
      }
    ]
  }
}

```
