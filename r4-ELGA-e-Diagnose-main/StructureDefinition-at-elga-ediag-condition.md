# HL7.AT.FHIR.ELGA.EDIAG.R4\AT ELGA e-Diagnose Condition - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT ELGA e-Diagnose Condition**

## Resource Profile: AT ELGA e-Diagnose Condition 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-condition | *Version*:0.1.0 | |
| Active as of 2026-07-20 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:AtEdiagCondition |

 
Das AT e-Diagnose Condition-Profil leitet sich vom Condition-Profil ab und passt dieses für die Anforderungen der e-Diagnose an. 

**Usages:**

* Use this Profile: [AT ELGA e-Diagnose Collection Bundle](StructureDefinition-at-elga-ediag-bundle-liste-cl.md) and [AT ELGA e-Diagnose Transaction Bundle](StructureDefinition-at-elga-ediag-bundle-liste-tx.md)
* Examples for this Profile: [Condition/DiagnoseCurrentlyRelevantExample](Condition-DiagnoseCurrentlyRelevantExample.md) and [Condition/DiagnoseNotCurrentlyRelevantExample](Condition-DiagnoseNotCurrentlyRelevantExample.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.elga.ediag.r4|current/StructureDefinition/StructureDefinition-at-elga-ediag-condition.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-elga-ediag-condition.csv), [Excel](StructureDefinition-at-elga-ediag-condition.xlsx), [Schematron](StructureDefinition-at-elga-ediag-condition.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-elga-ediag-condition",
  "url" : "https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-condition",
  "version" : "0.1.0",
  "name" : "AtEdiagCondition",
  "title" : "AT ELGA e-Diagnose Condition",
  "status" : "active",
  "date" : "2026-07-20T14:28:37+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [{
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "http://elga.gv.at"
    }]
  },
  {
    "name" : "ELGA GmbH",
    "telecom" : [{
      "system" : "url",
      "value" : "https://elga.gv.at",
      "use" : "work"
    }]
  }],
  "description" : "Das AT e-Diagnose Condition-Profil leitet sich vom Condition-Profil ab und passt dieses für die Anforderungen der e-Diagnose an.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "workflow",
    "uri" : "http://hl7.org/fhir/workflow",
    "name" : "Workflow Pattern"
  },
  {
    "identity" : "sct-concept",
    "uri" : "http://snomed.info/conceptdomain",
    "name" : "SNOMED CT Concept Domain Binding"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
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
    "identity" : "sct-attr",
    "uri" : "http://snomed.org/attributebinding",
    "name" : "SNOMED CT Attribute Binding"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Condition",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Condition",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Condition",
      "path" : "Condition",
      "short" : "AT e-Diagnose Condition"
    },
    {
      "id" : "Condition.meta.tag",
      "path" : "Condition.meta.tag",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "$this"
        }],
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Condition.meta.tag:diagnosisType",
      "path" : "Condition.meta.tag",
      "sliceName" : "diagnosisType",
      "min" : 1,
      "max" : "1",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.hl7.at/elga/ediag/r4/ValueSet/at-ediag-diagnosen-type"
      }
    },
    {
      "id" : "Condition.extension",
      "path" : "Condition.extension",
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
      "id" : "Condition.extension:reported",
      "path" : "Condition.extension",
      "sliceName" : "reported",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-reported"]
      }]
    },
    {
      "id" : "Condition.extension:entered-in-error",
      "path" : "Condition.extension",
      "sliceName" : "entered-in-error",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhir.hl7.at/elga/ediag/r4/StructureDefinition/at-elga-ediag-ext-entered-in-error"]
      }]
    },
    {
      "id" : "Condition.identifier",
      "path" : "Condition.identifier",
      "short" : "Zuordnung der Diagnose in einem internem Dokumentationssystem",
      "max" : "0"
    },
    {
      "id" : "Condition.clinicalStatus",
      "path" : "Condition.clinicalStatus",
      "short" : "Klinischer Status der Diagnose (wie:Status post), \nmögliche Codes: active | recurrence | relapse | inactive | remission | resolved",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Condition.verificationStatus",
      "path" : "Condition.verificationStatus",
      "short" : "Status der Diagnose, mögliche Codes: unconfirmed | provisional | differential | confirmed | refuted | entered-in-error",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Condition.category",
      "path" : "Condition.category",
      "short" : "Differenzierung nach Kontext - wird meta.tag gelöst",
      "max" : "0"
    },
    {
      "id" : "Condition.severity",
      "path" : "Condition.severity",
      "short" : "Schweregrad der Erkrankung",
      "max" : "0"
    },
    {
      "id" : "Condition.code",
      "path" : "Condition.code",
      "short" : "Diagnosecode (Codierservice), Text verboten, Codesystem 1.SNOMED 2.Orphanet",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Condition.code.coding",
      "path" : "Condition.code.coding",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "ordered" : false,
        "rules" : "closed"
      },
      "min" : 1,
      "max" : "2"
    },
    {
      "id" : "Condition.code.coding:snomed",
      "path" : "Condition.code.coding",
      "sliceName" : "snomed",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Condition.code.coding:snomed.system",
      "path" : "Condition.code.coding.system",
      "min" : 1,
      "fixedUri" : "http://snomed.info/sct"
    },
    {
      "id" : "Condition.code.coding:snomed.code",
      "path" : "Condition.code.coding.code",
      "min" : 1
    },
    {
      "id" : "Condition.code.coding:orphanet",
      "path" : "Condition.code.coding",
      "sliceName" : "orphanet",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Condition.code.coding:orphanet.system",
      "path" : "Condition.code.coding.system",
      "min" : 1,
      "fixedUri" : "http://www.orpha.net/ORDO"
    },
    {
      "id" : "Condition.code.coding:orphanet.code",
      "path" : "Condition.code.coding.code",
      "min" : 1
    },
    {
      "id" : "Condition.code.text",
      "path" : "Condition.code.text",
      "max" : "0"
    },
    {
      "id" : "Condition.bodySite",
      "path" : "Condition.bodySite",
      "short" : "Zuordnung der Diagnose der Körper-Lokalisation",
      "max" : "0"
    },
    {
      "id" : "Condition.subject",
      "path" : "Condition.subject",
      "short" : "Person, auf die sich die Diagnose bezieht",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/core/r4/StructureDefinition/at-elga-core-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Condition.encounter",
      "path" : "Condition.encounter",
      "short" : "Behandlungskontakt",
      "max" : "0"
    },
    {
      "id" : "Condition.onset[x]",
      "path" : "Condition.onset[x]",
      "short" : "Beginn der Erkrankung/Diagnosezeitpunkt",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Condition.abatement[x]",
      "path" : "Condition.abatement[x]",
      "short" : "Ende der Erkrankung",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Condition.recordedDate",
      "path" : "Condition.recordedDate",
      "short" : "Zeitpunkt der Diagnosendokumentation",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Condition.recorder",
      "path" : "Condition.recorder",
      "short" : "Ansonsten Gesundheitsdiensteanbieter, der die Diagnose eingetragen hat",
      "min" : 1,
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/core/r4/StructureDefinition/at-elga-core-practitioner",
        "https://fhir.hl7.at/elga/core/r4/StructureDefinition/at-elga-core-practitionerRole"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Condition.asserter",
      "path" : "Condition.asserter",
      "short" : "Quelle der Information zur Diagnose (z. B. behandelnde Person, Patient oder Dritter)",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/core/r4/StructureDefinition/at-elga-core-practitioner",
        "https://fhir.hl7.at/elga/core/r4/StructureDefinition/at-elga-core-practitionerRole",
        "https://fhir.hl7.at/elga/core/r4/StructureDefinition/at-elga-core-patient",
        "http://hl7.org/fhir/StructureDefinition/RelatedPerson"]
      }]
    },
    {
      "id" : "Condition.stage",
      "path" : "Condition.stage",
      "short" : "Stadium der Erkrankung",
      "max" : "0"
    },
    {
      "id" : "Condition.evidence",
      "path" : "Condition.evidence",
      "short" : "Verweis auf ELGA-Befunde als medizinische Evidenz"
    },
    {
      "id" : "Condition.note",
      "path" : "Condition.note",
      "short" : "Freitext zur Diagnose für Zusatzinformation",
      "max" : "1"
    },
    {
      "id" : "Condition.note.author[x]",
      "path" : "Condition.note.author[x]",
      "max" : "0"
    },
    {
      "id" : "Condition.note.time",
      "path" : "Condition.note.time",
      "max" : "0"
    }]
  }
}

```
