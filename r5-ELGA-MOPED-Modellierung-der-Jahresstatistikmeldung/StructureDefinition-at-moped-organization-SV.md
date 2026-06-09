# ELGA.MOPED\AT MOPED Organization SV Profil - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT MOPED Organization SV Profil**

## Resource Profile: AT MOPED Organization SV Profil 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/at-moped-organization-SV | *Version*:0.1.0 | |
| Draft as of 2026-06-09 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:AtMopedOrganizationSV |

 
MOPED Profil der Organization Ressource für die SV 

**Usages:**

* Refer to this Profile: [MOPED ARKRequest](StructureDefinition-MopedARKRequest.md), [AT MOPED Claim LKFRequest generisches Profil](StructureDefinition-at-moped-claim-lkfrequest-generisch.md), [AT MOPED Claim VAERequest generisches Profil](StructureDefinition-at-moped-claim-vaerequest-generisch.md), [AT MOPED ClaimResponse VAEResponse generisches Profil](StructureDefinition-at-moped-claimresponse-vaeresponse-generisch.md)... Show 2 more, [AT MOPED Composition generisches Profil](StructureDefinition-at-moped-composition-generisch.md) and [AT MOPED Coverage Versicherter Basis Profil](StructureDefinition-at-moped-coverage-versicherter-basis.md)
* Examples for this Profile: [Österreichische Gesundheitskasse Wien](Organization-SV11.md), [Österreichische Gesundheitskasse Niederösterreich](Organization-SV12.md), [Österreichische Gesundheitskasse Burgenland](Organization-SV13.md), [Österreichische Gesundheitskasse Oberösterreich](Organization-SV14.md)... Show 5 more, [Österreichische Gesundheitskasse Steiermark](Organization-SV15.md), [Österreichische Gesundheitskasse Kärnten](Organization-SV16.md), [Österreichische Gesundheitskasse Salzburg](Organization-SV17.md), [Österreichische Gesundheitskasse Tirol](Organization-SV18.md) and [Österreichische Gesundheitskasse Vorarlberg](Organization-SV19.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/elga.moped|current/StructureDefinition/StructureDefinition-at-moped-organization-SV.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-moped-organization-SV.csv), [Excel](StructureDefinition-at-moped-organization-SV.xlsx), [Schematron](StructureDefinition-at-moped-organization-SV.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-moped-organization-SV",
  "url" : "https://elga.moped.at/StructureDefinition/at-moped-organization-SV",
  "version" : "0.1.0",
  "name" : "AtMopedOrganizationSV",
  "title" : "AT MOPED Organization SV Profil",
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
  "description" : "MOPED Profil der Organization Ressource für die SV",
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
      "id" : "Organization.identifier",
      "path" : "Organization.identifier",
      "min" : 2
    },
    {
      "id" : "Organization.identifier:SVT",
      "path" : "Organization.identifier",
      "sliceName" : "SVT",
      "short" : "CodeSystem: e-card Sozialversicherungsträger Codesystem",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Organization.identifier:SVT.system",
      "path" : "Organization.identifier.system",
      "min" : 1,
      "fixedUri" : "http://svc.co.at/CodeSystem/ecard-svt-cs"
    },
    {
      "id" : "Organization.identifier:LSVT",
      "path" : "Organization.identifier",
      "sliceName" : "LSVT",
      "short" : "L-Codes der Sozialversicherungsträger",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Organization.identifier:LSVT.system",
      "path" : "Organization.identifier.system",
      "min" : 1,
      "fixedUri" : "http://example.org/lsvt-code"
    },
    {
      "id" : "Organization.type",
      "path" : "Organization.type",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "https://termgit.elga.gv.at/CodeSystem/elga-gtelvogdarollen",
          "code" : "406",
          "display" : "Sozialversicherung"
        }]
      }
    }]
  }
}

```
