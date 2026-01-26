# ELGA.MOPED\LGF Organization - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **LGF Organization**

## Resource Profile: LGF Organization 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/LGFOrganization | *Version*:0.1.0 | |
| Draft as of 2026-01-26 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:LGFOrganization |

 
MOPED Profil für LGF Organizations 

**Usages:**

* Refer to this Profile: [MOPED Composition](StructureDefinition-MopedComposition.md)
* Examples for this Profile: [Wiener Gesundheitsfonds (WGF)](Organization-OrganizationLGF.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/LGFOrganization)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-LGFOrganization.csv), [Excel](StructureDefinition-LGFOrganization.xlsx), [Schematron](StructureDefinition-LGFOrganization.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "LGFOrganization",
  "url" : "https://elga.moped.at/StructureDefinition/LGFOrganization",
  "version" : "0.1.0",
  "name" : "LGFOrganization",
  "title" : "LGF Organization",
  "status" : "draft",
  "date" : "2026-01-26T07:12:25+00:00",
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
  "description" : "MOPED Profil für LGF Organizations",
  "fhirVersion" : "5.0.0",
  "mapping" : [
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
      }
    ]
  }
}

```
