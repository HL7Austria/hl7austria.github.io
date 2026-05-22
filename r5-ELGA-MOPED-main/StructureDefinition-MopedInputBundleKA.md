# ELGA.MOPED\MOPED Input Bundle KA - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MOPED Input Bundle KA**

## Resource Profile: MOPED Input Bundle KA 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/MopedInputBundleKA | *Version*:0.1.0 | |
| Draft as of 2026-05-22 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MopedInputBundleKA |

 
Bundle für die Input-Ressourcen beim Update von Informationen zu einem Fall 

**Usages:**

* Derived from this Profile: [MOPED Aufnehmen Bundle KA](StructureDefinition-MopedAufnehmenBundleKA.md) and [MOPED Update Bundle KA](StructureDefinition-MopedUpdateBundleKA.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/MopedInputBundleKA)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MopedInputBundleKA.csv), [Excel](StructureDefinition-MopedInputBundleKA.xlsx), [Schematron](StructureDefinition-MopedInputBundleKA.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MopedInputBundleKA",
  "url" : "https://elga.moped.at/StructureDefinition/MopedInputBundleKA",
  "version" : "0.1.0",
  "name" : "MopedInputBundleKA",
  "title" : "MOPED Input Bundle KA",
  "status" : "draft",
  "date" : "2026-05-22T08:08:56+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at"
    }]
  }],
  "description" : "Bundle für die Input-Ressourcen beim Update von Informationen zu einem Fall",
  "fhirVersion" : "5.0.0",
  "kind" : "resource",
  "abstract" : false,
  "type" : "Bundle",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Bundle",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Bundle",
      "path" : "Bundle"
    },
    {
      "id" : "Bundle.type",
      "path" : "Bundle.type",
      "patternCode" : "transaction"
    },
    {
      "id" : "Bundle.entry",
      "path" : "Bundle.entry",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "resource"
        },
        {
          "type" : "value",
          "path" : "resource.ofType(Encounter).type"
        }],
        "rules" : "closed"
      },
      "min" : 1
    },
    {
      "id" : "Bundle.entry:Aufenthalt",
      "path" : "Bundle.entry",
      "sliceName" : "Aufenthalt",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Bundle.entry:Aufenthalt.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "Encounter",
        "profile" : ["https://elga.moped.at/StructureDefinition/MopedEncounter"]
      }]
    },
    {
      "id" : "Bundle.entry:Aufenthalt.request.method",
      "path" : "Bundle.entry.request.method",
      "short" : "POST | PUT",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://elga.moped.at/ValueSet/HTTPVerbInsertUpdateVS"
      }
    },
    {
      "id" : "Bundle.entry:Patient",
      "path" : "Bundle.entry",
      "sliceName" : "Patient",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Bundle.entry:Patient.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "Patient",
        "profile" : ["https://elga.moped.at/StructureDefinition/MopedBasisPatientvbPK",
        "https://elga.moped.at/StructureDefinition/MopedBasisPatientKlarname"]
      }]
    },
    {
      "id" : "Bundle.entry:Patient.request.method",
      "path" : "Bundle.entry.request.method",
      "short" : "POST | PUT",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://elga.moped.at/ValueSet/HTTPVerbInsertUpdateVS"
      }
    },
    {
      "id" : "Bundle.entry:Diagnosen",
      "path" : "Bundle.entry",
      "sliceName" : "Diagnosen",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:Diagnosen.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "Condition",
        "profile" : ["https://elga.moped.at/StructureDefinition/MopedCondition"]
      }]
    },
    {
      "id" : "Bundle.entry:Diagnosen.request.method",
      "path" : "Bundle.entry.request.method",
      "short" : "POST | PUT | DELETE",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://elga.moped.at/ValueSet/HTTPVerbInsertUpdateDeleteVS"
      }
    },
    {
      "id" : "Bundle.entry:Leistungen",
      "path" : "Bundle.entry",
      "sliceName" : "Leistungen",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:Leistungen.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "Procedure",
        "profile" : ["https://elga.moped.at/StructureDefinition/MopedProcedure"]
      }]
    },
    {
      "id" : "Bundle.entry:Leistungen.request.method",
      "path" : "Bundle.entry.request.method",
      "short" : "POST | PUT | DELETE",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://elga.moped.at/ValueSet/HTTPVerbInsertUpdateDeleteVS"
      }
    },
    {
      "id" : "Bundle.entry:Entbindung",
      "path" : "Bundle.entry",
      "sliceName" : "Entbindung",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:Entbindung.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "Observation",
        "profile" : ["https://elga.moped.at/StructureDefinition/MopedObservationGeburtenanzahl",
        "https://elga.moped.at/StructureDefinition/MopedObservationEntbindungsart"]
      }]
    },
    {
      "id" : "Bundle.entry:Entbindung.request.method",
      "path" : "Bundle.entry.request.method",
      "short" : "POST | PUT | DELETE",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://elga.moped.at/ValueSet/HTTPVerbInsertUpdateDeleteVS"
      }
    },
    {
      "id" : "Bundle.entry:Bewegungen",
      "path" : "Bundle.entry",
      "sliceName" : "Bewegungen",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:Bewegungen.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "Encounter",
        "profile" : ["https://elga.moped.at/StructureDefinition/MopedTransferEncounter"]
      }]
    },
    {
      "id" : "Bundle.entry:Bewegungen.request.method",
      "path" : "Bundle.entry.request.method",
      "short" : "POST | PUT | DELETE",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://elga.moped.at/ValueSet/HTTPVerbInsertUpdateDeleteVS"
      }
    },
    {
      "id" : "Bundle.entry:Versichertenanspruch",
      "path" : "Bundle.entry",
      "sliceName" : "Versichertenanspruch",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Bundle.entry:Versichertenanspruch.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "Coverage",
        "profile" : ["https://elga.moped.at/StructureDefinition/MopedCoverage",
        "https://elga.moped.at/StructureDefinition/MopedCoverageSelbstzahler"]
      }]
    },
    {
      "id" : "Bundle.entry:Versichertenanspruch.request.method",
      "path" : "Bundle.entry.request.method",
      "short" : "POST | PUT | DELETE",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://elga.moped.at/ValueSet/HTTPVerbInsertUpdateDeleteVS"
      }
    },
    {
      "id" : "Bundle.entry:Hauptversicherter",
      "path" : "Bundle.entry",
      "sliceName" : "Hauptversicherter",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Bundle.entry:Hauptversicherter.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "RelatedPerson",
        "profile" : ["https://elga.moped.at/StructureDefinition/Hauptversicherter"]
      }]
    },
    {
      "id" : "Bundle.entry:Hauptversicherter.request.method",
      "path" : "Bundle.entry.request.method",
      "short" : "POST | PUT | DELETE",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://elga.moped.at/ValueSet/HTTPVerbInsertUpdateDeleteVS"
      }
    },
    {
      "id" : "Bundle.entry:UeberweisendeOrganization",
      "path" : "Bundle.entry",
      "sliceName" : "UeberweisendeOrganization",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Bundle.entry:UeberweisendeOrganization.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "Organization",
        "profile" : ["http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-organization"]
      }]
    },
    {
      "id" : "Bundle.entry:UeberweisendeOrganization.request.method",
      "path" : "Bundle.entry.request.method",
      "short" : "POST | PUT | DELETE",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://elga.moped.at/ValueSet/HTTPVerbInsertUpdateDeleteVS"
      }
    },
    {
      "id" : "Bundle.entry:Frageboegen",
      "path" : "Bundle.entry",
      "sliceName" : "Frageboegen",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:Frageboegen.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "QuestionnaireResponse",
        "profile" : ["https://elga.moped.at/StructureDefinition/MopedQuestionnaireResponseFallbezogen"]
      }]
    },
    {
      "id" : "Bundle.entry:Frageboegen.request.method",
      "path" : "Bundle.entry.request.method",
      "short" : "POST | PUT | DELETE",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://elga.moped.at/ValueSet/HTTPVerbInsertUpdateDeleteVS"
      }
    },
    {
      "id" : "Bundle.entry:Communication",
      "path" : "Bundle.entry",
      "sliceName" : "Communication",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:Communication.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "Communication"
      }]
    },
    {
      "id" : "Bundle.entry:Communication.request.method",
      "path" : "Bundle.entry.request.method",
      "short" : "POST",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://elga.moped.at/ValueSet/HTTPVerbInsertOnlyVS"
      }
    },
    {
      "id" : "Bundle.entry:CommunicationRequest",
      "path" : "Bundle.entry",
      "sliceName" : "CommunicationRequest",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:CommunicationRequest.resource",
      "path" : "Bundle.entry.resource",
      "type" : [{
        "code" : "CommunicationRequest"
      }]
    },
    {
      "id" : "Bundle.entry:CommunicationRequest.request.method",
      "path" : "Bundle.entry.request.method",
      "short" : "POST",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://elga.moped.at/ValueSet/HTTPVerbInsertOnlyVS"
      }
    }]
  }
}

```
