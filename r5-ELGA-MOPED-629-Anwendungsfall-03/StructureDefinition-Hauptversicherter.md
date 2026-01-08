# ELGA.MOPED\MOPED Hauptversicherter - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MOPED Hauptversicherter**

## Resource Profile: MOPED Hauptversicherter 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/Hauptversicherter | *Version*:0.1.0 | |
| Draft as of 2025-10-15 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:Hauptversicherter |

 
MOPED Profil der Person Ressource für den Hauptversicherten 

**Usages:**

* Use this Profile: [MOPED Update Bundle KH](StructureDefinition-MopedUpdateBundleKH.md)
* Refer to this Profile: [MOPED Composition](StructureDefinition-MopedComposition.md) and [MOPED Coverage](StructureDefinition-MopedCoverage.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/Hauptversicherter)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-Hauptversicherter.csv), [Excel](StructureDefinition-Hauptversicherter.xlsx), [Schematron](StructureDefinition-Hauptversicherter.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "Hauptversicherter",
  "url" : "https://elga.moped.at/StructureDefinition/Hauptversicherter",
  "version" : "0.1.0",
  "name" : "Hauptversicherter",
  "title" : "MOPED Hauptversicherter",
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
  "description" : "MOPED Profil der Person Ressource für den Hauptversicherten",
  "fhirVersion" : "5.0.0",
  "mapping" : [
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
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
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 V2 Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "RelatedPerson",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/RelatedPerson",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "RelatedPerson",
        "path" : "RelatedPerson"
      },
      {
        "id" : "RelatedPerson.identifier",
        "path" : "RelatedPerson.identifier",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "type.coding.code"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "RelatedPerson.identifier.type",
        "path" : "RelatedPerson.identifier.type",
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://termgit.elga.gv.at/ValueSet/hl7-at-patientidentifier"
        }
      },
      {
        "id" : "RelatedPerson.identifier:socialSecurityNumber",
        "path" : "RelatedPerson.identifier",
        "sliceName" : "socialSecurityNumber",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "RelatedPerson.identifier:socialSecurityNumber.type",
        "path" : "RelatedPerson.identifier.type",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://termgit.elga.gv.at/ValueSet/hl7-at-patientidentifier"
        }
      },
      {
        "id" : "RelatedPerson.identifier:socialSecurityNumber.type.coding.system",
        "path" : "RelatedPerson.identifier.type.coding.system",
        "fixedUri" : "http://terminology.hl7.org/CodeSystem/v2-0203"
      },
      {
        "id" : "RelatedPerson.identifier:socialSecurityNumber.type.coding.code",
        "path" : "RelatedPerson.identifier.type.coding.code",
        "min" : 1,
        "fixedCode" : "SS"
      },
      {
        "id" : "RelatedPerson.identifier:socialSecurityNumber.system",
        "path" : "RelatedPerson.identifier.system",
        "short" : "OID for the Social Security Number in Austria",
        "min" : 1,
        "fixedUri" : "urn:oid:1.2.40.0.10.1.4.3.1"
      },
      {
        "id" : "RelatedPerson.identifier:socialSecurityNumber.assigner.display",
        "path" : "RelatedPerson.identifier.assigner.display",
        "fixedString" : "Dachverband der österreichischen Sozialversicherungsträger"
      },
      {
        "id" : "RelatedPerson.patient",
        "path" : "RelatedPerson.patient",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-patient"
            ]
          }
        ]
      },
      {
        "id" : "RelatedPerson.relationship",
        "path" : "RelatedPerson.relationship",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://elga.moped.at/ValueSet/MopedRelatedPersonRelationshipTypeVS"
        }
      },
      {
        "id" : "RelatedPerson.relationship.coding.code",
        "path" : "RelatedPerson.relationship.coding.code",
        "fixedCode" : "SELF"
      },
      {
        "id" : "RelatedPerson.address",
        "path" : "RelatedPerson.address",
        "type" : [
          {
            "code" : "Address",
            "profile" : [
              "http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-address"
            ]
          }
        ]
      }
    ]
  }
}

```
