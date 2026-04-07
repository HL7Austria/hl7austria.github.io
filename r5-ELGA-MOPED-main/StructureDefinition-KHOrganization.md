# ELGA.MOPED\KH Organization - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **KH Organization**

## Resource Profile: KH Organization 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/KHOrganization | *Version*:0.1.0 | |
| Draft as of 2026-04-07 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:KHOrganization |

 
MOPED Profil für KH Organizations 

**Usages:**

* Refer to this Profile: [MOPED ARKRequest](StructureDefinition-MopedARKRequest.md), [MOPED Composition](StructureDefinition-MopedComposition.md), [MOPED Coverage](StructureDefinition-MopedCoverage.md), [MOPED Encounter](StructureDefinition-MopedEncounter.md)... Show 8 more, [MOPED KH Organisationseinheiten](StructureDefinition-MopedKHOrganisationseinheit.md), [MOPED LKFRequest](StructureDefinition-MopedLKFRequest.md), [MOPED LKFResponse](StructureDefinition-MopedLKFResponse.md), [MOPED Procedure](StructureDefinition-MopedProcedure.md), [Moped QuestionnaireResponse fallbezogen](StructureDefinition-MopedQuestionnaireResponseFallbezogen.md), [Moped QuestionnaireResponse nicht fallbezogen](StructureDefinition-MopedQuestionnaireResponseNichtFallbezogen.md), [MOPED VAERequest](StructureDefinition-MopedVAERequest.md) and [MOPED VAEResponse](StructureDefinition-MopedVAEResponse.md)
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
  "date" : "2026-04-07T10:38:55+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "MOPED Profil für KH Organizations",
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
    },
    {
      "id" : "Organization.identifier:VPNR",
      "path" : "Organization.identifier",
      "sliceName" : "VPNR",
      "short" : "KaOrg: Vertragspartnernummer der Krankenanstalt"
    },
    {
      "id" : "Organization.identifier:KANR",
      "path" : "Organization.identifier",
      "sliceName" : "KANR",
      "short" : "KaOrg: Krankenanstaltennummer des Bundesministeriums"
    },
    {
      "id" : "Organization.type",
      "path" : "Organization.type",
      "min" : 1,
      "max" : "1",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://termgit.elga.gv.at/CodeSystem/elga-gtelvogdarollen",
          "code" : "300",
          "display" : "Allgemeine Krankenanstalt"
        }]
      }
    }]
  }
}

```
