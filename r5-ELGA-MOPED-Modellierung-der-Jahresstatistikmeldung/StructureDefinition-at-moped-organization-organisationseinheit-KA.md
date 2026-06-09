# ELGA.MOPED\AT MOPED Organization Organisationseinheite KA Profil - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT MOPED Organization Organisationseinheite KA Profil**

## Resource Profile: AT MOPED Organization Organisationseinheite KA Profil 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/at-moped-organization-organisationseinheit-KA | *Version*:0.1.0 | |
| Draft as of 2026-06-09 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:AtMopedOrganizationOrganisationseinheitKA |

 
MOPED Profil der Organization Ressource für Organisationseinheiten innerhalb einer Krankenanstalt. 

**Usages:**

* Refer to this Profile: [AT MOPED Composition generisches Profil](StructureDefinition-at-moped-composition-generisch.md), [AT MOPED Encounter Bewegung generisches Profil](StructureDefinition-at-moped-encounter-bewegung-generisch.md) and [AT MOPED Procedure generisches Profil](StructureDefinition-at-moped-procedure-generisch.md)
* Examples for this Profile: [HealthcareService/AbteilungHerzJesu1](HealthcareService-AbteilungHerzJesu1.md), [HealthcareService/AbteilungKARied1](HealthcareService-AbteilungKARied1.md), [HealthcareService/AbteilungKARied2](HealthcareService-AbteilungKARied2.md), [HealthcareService/AbteilungKARied3](HealthcareService-AbteilungKARied3.md) and [HealthcareService/AbteilungKARied4](HealthcareService-AbteilungKARied4.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/elga.moped|current/StructureDefinition/StructureDefinition-at-moped-organization-organisationseinheit-KA.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-moped-organization-organisationseinheit-KA.csv), [Excel](StructureDefinition-at-moped-organization-organisationseinheit-KA.xlsx), [Schematron](StructureDefinition-at-moped-organization-organisationseinheit-KA.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-moped-organization-organisationseinheit-KA",
  "url" : "https://elga.moped.at/StructureDefinition/at-moped-organization-organisationseinheit-KA",
  "version" : "0.1.0",
  "name" : "AtMopedOrganizationOrganisationseinheitKA",
  "title" : "AT MOPED Organization Organisationseinheite KA Profil",
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
  "description" : "MOPED Profil der Organization Ressource für Organisationseinheiten innerhalb einer Krankenanstalt.",
  "fhirVersion" : "5.0.0",
  "kind" : "resource",
  "abstract" : false,
  "type" : "HealthcareService",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/HealthcareService",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "HealthcareService",
      "path" : "HealthcareService"
    },
    {
      "id" : "HealthcareService.extension",
      "path" : "HealthcareService.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "HealthcareService.extension:Kostenstelle",
      "path" : "HealthcareService.extension",
      "sliceName" : "Kostenstelle",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://elga.moped.at/StructureDefinition/moped-ext-Kostenstelle"]
      }]
    },
    {
      "id" : "HealthcareService.identifier",
      "path" : "HealthcareService.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "HealthcareService.identifier:Funktionscode",
      "path" : "HealthcareService.identifier",
      "sliceName" : "Funktionscode",
      "short" : "Funktionscode inkl. Subcode der Abteilung laut LKF",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "HealthcareService.identifier:Funktionscode.system",
      "path" : "HealthcareService.identifier.system",
      "min" : 1,
      "fixedUri" : "http://example.org/lkf-system/funktionscode"
    },
    {
      "id" : "HealthcareService.providedBy",
      "path" : "HealthcareService.providedBy",
      "short" : "Krankenanstalt zu welcher die Abteilung gehört",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://elga.moped.at/StructureDefinition/at-moped-organization-KA"]
      }]
    },
    {
      "id" : "HealthcareService.category",
      "path" : "HealthcareService.category",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/service-category",
          "code" : "35"
        }]
      }
    },
    {
      "id" : "HealthcareService.type",
      "path" : "HealthcareService.type",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://terminology.hl7.org/CodeSystem/service-type",
          "code" : "361"
        }]
      }
    },
    {
      "id" : "HealthcareService.location",
      "path" : "HealthcareService.location",
      "short" : "Angabe des spezifischen Standorts",
      "min" : 1
    }]
  }
}

```
