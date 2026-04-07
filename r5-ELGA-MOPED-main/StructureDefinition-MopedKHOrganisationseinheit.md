# ELGA.MOPED\MOPED KH Organisationseinheiten - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MOPED KH Organisationseinheiten**

## Resource Profile: MOPED KH Organisationseinheiten 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/MopedKHOrganisationseinheit | *Version*:0.1.0 | |
| Draft as of 2026-04-07 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MopedKHOrganisationseinheit |

 
MOPED Profil für Organisationseinheiten innerhalb einer Krankenanstalt. 

**Usages:**

* Refer to this Profile: [MOPED Composition](StructureDefinition-MopedComposition.md), [MOPED Procedure](StructureDefinition-MopedProcedure.md) and [MOPED TransferEncounter](StructureDefinition-MopedTransferEncounter.md)
* Examples for this Profile: [HealthcareService/AbteilungHerzJesu1](HealthcareService-AbteilungHerzJesu1.md), [HealthcareService/AbteilungKHRied1](HealthcareService-AbteilungKHRied1.md), [HealthcareService/AbteilungKHRied2](HealthcareService-AbteilungKHRied2.md), [HealthcareService/AbteilungKHRied3](HealthcareService-AbteilungKHRied3.md)... Show 9 more, [HealthcareService/AbteilungKHRied4](HealthcareService-AbteilungKHRied4.md), [HealthcareService/KHK999ABT11111100](HealthcareService-KHK999ABT11111100.md), [HealthcareService/KHK999ABT12111100](HealthcareService-KHK999ABT12111100.md), [HealthcareService/KHK999ABT12118102](HealthcareService-KHK999ABT12118102.md), [HealthcareService/KHK999ABT16075000](HealthcareService-KHK999ABT16075000.md), [HealthcareService/KHK999ABT16111111](HealthcareService-KHK999ABT16111111.md), [HealthcareService/KHK999ABT16111112](HealthcareService-KHK999ABT16111112.md), [HealthcareService/KHK999ABT16211100](HealthcareService-KHK999ABT16211100.md) and [HealthcareService/KHK999ABT16518011](HealthcareService-KHK999ABT16518011.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/MopedKHOrganisationseinheit)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MopedKHOrganisationseinheit.csv), [Excel](StructureDefinition-MopedKHOrganisationseinheit.xlsx), [Schematron](StructureDefinition-MopedKHOrganisationseinheit.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MopedKHOrganisationseinheit",
  "url" : "https://elga.moped.at/StructureDefinition/MopedKHOrganisationseinheit",
  "version" : "0.1.0",
  "name" : "MopedKHOrganisationseinheit",
  "title" : "MOPED KH Organisationseinheiten",
  "status" : "draft",
  "date" : "2026-04-07T06:39:12+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "MOPED Profil für Organisationseinheiten innerhalb einer Krankenanstalt.",
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
        "targetProfile" : ["https://elga.moped.at/StructureDefinition/KHOrganization"]
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
