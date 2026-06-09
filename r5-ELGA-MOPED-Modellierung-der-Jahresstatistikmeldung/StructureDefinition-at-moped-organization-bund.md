# ELGA.MOPED\AT MOPED Organization Bund Profil - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT MOPED Organization Bund Profil**

## Resource Profile: AT MOPED Organization Bund Profil 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/at-moped-organization-bund | *Version*:0.1.0 | |
| Draft as of 2026-06-09 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:AtMopedOrganizationBund |

 
MOPED Profil der Organization Ressource für den Bund 

**Usages:**

* This Profile is not used by any profiles in this Specification

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/elga.moped|current/StructureDefinition/StructureDefinition-at-moped-organization-bund.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-moped-organization-bund.csv), [Excel](StructureDefinition-at-moped-organization-bund.xlsx), [Schematron](StructureDefinition-at-moped-organization-bund.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-moped-organization-bund",
  "url" : "https://elga.moped.at/StructureDefinition/at-moped-organization-bund",
  "version" : "0.1.0",
  "name" : "AtMopedOrganizationBund",
  "title" : "AT MOPED Organization Bund Profil",
  "status" : "draft",
  "date" : "2026-06-09T11:53:00+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "MOPED Profil der Organization Ressource für den Bund",
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "servd",
    "uri" : "http://www.omg.org/spec/ServD/1.0/",
    "name" : "ServD"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Organization",
  "baseDefinition" : "http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-organization",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Organization",
      "path" : "Organization"
    }]
  }
}

```
