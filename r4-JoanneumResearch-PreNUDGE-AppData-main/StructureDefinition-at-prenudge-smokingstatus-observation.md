# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\AT PreNUDGE Observation Smoking Status - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT PreNUDGE Observation Smoking Status**

## Resource Profile: AT PreNUDGE Observation Smoking Status 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-smokingstatus-observation | *Version*:0.1.0 | |
| Draft as of 2026-06-22 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:AtPrenudgeObservationSmokingStatus |

 
This FHIR profile is defining the current smoking status observation for PreNUDGE. It is derived from the APS Observation Tobacco Use profile, which imposes the IPS Observation Social History - Tobacco Use profile. The value is derived from the ATHIS-based SmokingStatusQuestionnaire, primarily from SK1 and, if SK1 is negative, from the past tobacco smoking question. Additional fields from the PreNUDGE Observation profile are added. 

**Usages:**

* Examples for this Profile: [Observation/smokingstatus-current-every-day-example](Observation-smokingstatus-current-every-day-example.md), [Observation/smokingstatus-former-example](Observation-smokingstatus-former-example.md) and [Observation/smokingstatus-never-example](Observation-smokingstatus-never-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.prenudge.appdata.r4|current/StructureDefinition/StructureDefinition-at-prenudge-smokingstatus-observation.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-prenudge-smokingstatus-observation.csv), [Excel](StructureDefinition-at-prenudge-smokingstatus-observation.xlsx), [Schematron](StructureDefinition-at-prenudge-smokingstatus-observation.sch) 

IG © 2026+
[The PreNUDGE Consortium](https://prenudge.at). Package hl7.at.fhir.prenudge.appdata.r4#0.1.0 based on
[FHIR® 4.0.1](http://hl7.org/fhir/R4/). Generated
2026-06-22

Links:
[Table of Contents](toc.md)|
[QA Report](qa.md)

## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-prenudge-smokingstatus-observation",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-imposeProfile",
    "valueCanonical" : "http://hl7.org/fhir/uv/ips/StructureDefinition/Observation-tobaccouse-uv-ips"
  }],
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-smokingstatus-observation",
  "version" : "0.1.0",
  "name" : "AtPrenudgeObservationSmokingStatus",
  "title" : "AT PreNUDGE Observation Smoking Status",
  "status" : "draft",
  "date" : "2026-06-22T12:35:22+00:00",
  "publisher" : "The PreNUDGE Consortium",
  "contact" : [{
    "name" : "The PreNUDGE Consortium",
    "telecom" : [{
      "system" : "url",
      "value" : "https://prenudge.at"
    }]
  },
  {
    "name" : "The PreNUDGE Consortium",
    "telecom" : [{
      "system" : "url",
      "value" : "https://prenudge.at",
      "use" : "work"
    }]
  }],
  "description" : "This FHIR profile is defining the current smoking status observation for PreNUDGE. It is derived from the APS Observation Tobacco Use profile, which imposes the IPS Observation Social History - Tobacco Use profile. The value is derived from the ATHIS-based SmokingStatusQuestionnaire, primarily from SK1 and, if SK1 is negative, from the past tobacco smoking question. Additional fields from the PreNUDGE Observation profile are added.",
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
  "type" : "Observation",
  "baseDefinition" : "https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-observationtobaccouse",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.identifier",
      "path" : "Observation.identifier",
      "short" : "Business Identifier for observation, at least one is assigned by the data provider",
      "min" : 1
    },
    {
      "id" : "Observation.identifier.system",
      "path" : "Observation.identifier.system",
      "short" : "The namespace for the identifier value, if no other specifications are given, use your website url",
      "min" : 1
    },
    {
      "id" : "Observation.identifier.value",
      "path" : "Observation.identifier.value",
      "min" : 1
    },
    {
      "id" : "Observation.effective[x]",
      "path" : "Observation.effective[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      },
      "min" : 1
    },
    {
      "id" : "Observation.effective[x]:effectiveDateTime",
      "path" : "Observation.effective[x]",
      "sliceName" : "effectiveDateTime",
      "short" : "The mandatory clinically relevant time for observation",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Observation.issued",
      "path" : "Observation.issued",
      "short" : "The mandatory date/time this version was made available",
      "min" : 1
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "short" : "Set to CodeableConcept, as recommended in Observation Social History - Tobacco Use (IPS)",
      "min" : 1,
      "type" : [{
        "code" : "CodeableConcept"
      }]
    },
    {
      "id" : "Observation.note",
      "path" : "Observation.note",
      "short" : "Comments about the observation including patient comments have to be possible",
      "mustSupport" : true
    },
    {
      "id" : "Observation.method",
      "path" : "Observation.method",
      "short" : "Manual if derived from a QuestionnaireResponse; Automated only if a plausible automated source is documented",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.hl7.at/prenudge/appdata/r4/ValueSet/prenudge-observation-method"
      }
    },
    {
      "id" : "Observation.device",
      "path" : "Observation.device",
      "short" : "(Measurement) Devices should be documented when used",
      "mustSupport" : true
    },
    {
      "id" : "Observation.derivedFrom",
      "path" : "Observation.derivedFrom",
      "short" : "QuestionnaireResponse or other source this smoking status observation was derived from",
      "mustSupport" : true
    },
    {
      "id" : "Observation.component",
      "path" : "Observation.component",
      "short" : "Components should only be used when multiple values are inseparably connected to a single measurement (e.g., score domains)."
    }]
  }
}

```
