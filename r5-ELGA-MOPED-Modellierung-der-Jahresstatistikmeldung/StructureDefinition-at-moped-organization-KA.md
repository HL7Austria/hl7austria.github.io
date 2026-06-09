# ELGA.MOPED\AT MOPED Organization KA Profil - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT MOPED Organization KA Profil**

## Resource Profile: AT MOPED Organization KA Profil 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/at-moped-organization-KA | *Version*:0.1.0 | |
| Draft as of 2026-06-09 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:AtMopedOrganizationKA |

 
MOPED Profil der Organization Ressource für KA Organizations 

**Usages:**

* Refer to this Profile: [MOPED ARKRequest](StructureDefinition-MopedARKRequest.md), [AT MOPED Claim LKFRequest generisches Profil](StructureDefinition-at-moped-claim-lkfrequest-generisch.md), [AT MOPED Claim VAERequest generisches Profil](StructureDefinition-at-moped-claim-vaerequest-generisch.md), [AT MOPED ClaimResponse LKFResponse generisches Profil](StructureDefinition-at-moped-claimresponse-lkfresponse-generisch.md)... Show 8 more, [AT MOPED ClaimResponse VAEResponse generisches Profil](StructureDefinition-at-moped-claimresponse-vaeresponse-generisch.md), [AT MOPED Composition generisches Profil](StructureDefinition-at-moped-composition-generisch.md), [AT MOPED Coverage Versicherter Basis Profil](StructureDefinition-at-moped-coverage-versicherter-basis.md), [AT MOPED Encounter Aufenthalt/Besuch generisches Profil](StructureDefinition-at-moped-encounter-aufenthaltbesuch-generisch.md), [AT MOPED Organization Organisationseinheite KA Profil](StructureDefinition-at-moped-organization-organisationseinheit-KA.md), [AT MOPED Procedure generisches Profil](StructureDefinition-at-moped-procedure-generisch.md), [AT MOPED QuestionnaireResponse fallbezogenes Profil](StructureDefinition-at-moped-questionnaireresponse-fallbezogen.md) and [AT MOPED QuestionnaireResponse nicht fallbezogenes Profil](StructureDefinition-at-moped-questionnaireresponse-nicht-fallbezogen.md)
* Examples for this Profile: [Herz Jesu-Krankenhaus](Organization-OrganizationHerzJesuKrankenhaus.md) and [Krankenhaus der Barmherzigen Schwestern vom Hl. Vinzenz von Paul Ried](Organization-OrganizationKrankenhausRied.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/elga.moped|current/StructureDefinition/StructureDefinition-at-moped-organization-KA.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-moped-organization-KA.csv), [Excel](StructureDefinition-at-moped-organization-KA.xlsx), [Schematron](StructureDefinition-at-moped-organization-KA.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-moped-organization-KA",
  "url" : "https://elga.moped.at/StructureDefinition/at-moped-organization-KA",
  "version" : "0.1.0",
  "name" : "AtMopedOrganizationKA",
  "title" : "AT MOPED Organization KA Profil",
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
  "description" : "MOPED Profil der Organization Ressource für KA Organizations",
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
