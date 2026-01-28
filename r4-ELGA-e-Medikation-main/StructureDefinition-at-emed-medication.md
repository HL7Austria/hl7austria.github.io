# HL7.AT.FHIR.ELGA.EMED.R4\ELGA e-Medikation Medication - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ELGA e-Medikation Medication**

## Resource Profile: ELGA e-Medikation Medication 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-medication | *Version*:0.1.1 | |
| Draft as of 2026-01-28 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:AtEmedMedication |

 
Bildet ein Arzneimittel ab, das nicht über eine PZN verfügt (z.B. magistrale Zubereitungen). 

**Usages:**

* Refer to this Profile: [ELGA e-Medikation Medication](StructureDefinition-at-emed-medication.md), [ELGA e-Medikation Geplante Abgabe](StructureDefinition-at-emed-mr-geplante-abgabe.md) and [ELGA e-Medikation Planeintrag](StructureDefinition-at-emed-mr-planeintrag.md)
* Examples for this Profile: [Medication/ExampleMedicationMagistral01](Medication-ExampleMedicationMagistral01.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.at.fhir.elga.emed.r4|current/StructureDefinition/at-emed-medication)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-emed-medication.csv), [Excel](StructureDefinition-at-emed-medication.xlsx), [Schematron](StructureDefinition-at-emed-medication.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-emed-medication",
  "url" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-medication",
  "version" : "0.1.1",
  "name" : "AtEmedMedication",
  "title" : "ELGA e-Medikation Medication",
  "status" : "draft",
  "date" : "2026-01-28T19:29:09+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [
    {
      "name" : "ELGA GmbH",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://elga.gv.at"
        }
      ]
    },
    {
      "name" : "ELGA GmbH",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://elga.gv.at",
          "use" : "work"
        }
      ]
    }
  ],
  "description" : "Bildet ein Arzneimittel ab, das nicht über eine PZN verfügt (z.B. magistrale Zubereitungen).",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "script10.6",
      "uri" : "http://ncpdp.org/SCRIPT10_6",
      "name" : "Mapping to NCPDP SCRIPT 10.6"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Medication",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Medication",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Medication",
        "path" : "Medication"
      },
      {
        "id" : "Medication.identifier",
        "path" : "Medication.identifier",
        "short" : "Eindeutiger Identifikator für das Arzneimittel. Verwendung für magistrale Zubereitungen prüfen."
      },
      {
        "id" : "Medication.code",
        "path" : "Medication.code",
        "short" : "Code des Arzneimittels. Verwendung für magistrale Zubereitungen prüfen."
      },
      {
        "id" : "Medication.status",
        "path" : "Medication.status",
        "short" : "Der Verfügbarkeitsstatus active | inactive | entered-in-error. Verwendung für magistrale Zubereitungen prüfen"
      },
      {
        "id" : "Medication.manufacturer",
        "path" : "Medication.manufacturer",
        "short" : "Der Hersteller des Arzneimittels. Für magistrale Zubereitungen die Apotheke. 1..1 ?",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-organization"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Medication.form",
        "path" : "Medication.form",
        "short" : "Die Darreichungsform des Arzneimittels",
        "min" : 1,
        "mustSupport" : true
      },
      {
        "id" : "Medication.amount",
        "path" : "Medication.amount",
        "short" : "Die Gesamtmenge des Arzneimittels in der Verpackung."
      },
      {
        "id" : "Medication.ingredient.item[x]",
        "path" : "Medication.ingredient.item[x]",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.org/fhir/StructureDefinition/Substance",
              "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-medication"
            ]
          }
        ]
      },
      {
        "id" : "Medication.batch",
        "path" : "Medication.batch",
        "short" : "Informationen zur Charge des Arzneimittels. Verwendung für magistrale Zubereitungen prüfen."
      }
    ]
  }
}

```
