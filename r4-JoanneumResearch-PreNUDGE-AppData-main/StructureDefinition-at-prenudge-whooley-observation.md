# HL7.AT.FHIR.PRENUDGE.APPDATA.R4\AT PreNUDGE Observation Whooley Depression Screening - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT PreNUDGE Observation Whooley Depression Screening**

## Resource Profile: AT PreNUDGE Observation Whooley Depression Screening 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-whooley-observation | *Version*:0.1.0 | |
| Draft as of 2026-07-22 | *Responsible:*[The PreNUDGE Consortium](https://prenudge.at) | *Computable Name*:AtPrenudgeObservationWhooley |

 
Records the binary result of the PHQ-2/Whooley depression screening (Ja/Nein-Version) as referenced in the Nationale VersorgungsLeitlinie Depression (AWMF nvl-005, https://register.awmf.org/de/leitlinien/detail/nvl-005). The reference period is the last month (letzter Monat), not the standard PHQ-2 period of two weeks. Interpretation of valueCodeableConcept: SNOMED CT 10828004 (Positive) = both Whooley questions answered 'Ja' (positive depression screen); SNOMED CT 260385009 (Negative) = at least one answer was 'Nein' (negative screen). Werden beide Fragen mit 'Ja' beantwortet, identifiziert der Test das Vorliegen depressiver Störungen mit einer Sensitivität von 96 % und einer Spezifität von 57 % (NVL Depression, AWMF nvl-005). 

**Usages:**

* Examples for this Profile: [Observation/whooley-observation-positive-example](Observation-whooley-observation-positive-example.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.prenudge.appdata.r4|current/StructureDefinition/StructureDefinition-at-prenudge-whooley-observation.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-prenudge-whooley-observation.csv), [Excel](StructureDefinition-at-prenudge-whooley-observation.xlsx), [Schematron](StructureDefinition-at-prenudge-whooley-observation.sch) 

IG © 2026+
[The PreNUDGE Consortium](https://prenudge.at). Package hl7.at.fhir.prenudge.appdata.r4#0.1.0 based on
[FHIR® 4.0.1](http://hl7.org/fhir/R4/). Generated
2026-07-22

Links:
[Table of Contents](toc.md)|
[QA Report](qa.md)

## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-prenudge-whooley-observation",
  "url" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-whooley-observation",
  "version" : "0.1.0",
  "name" : "AtPrenudgeObservationWhooley",
  "title" : "AT PreNUDGE Observation Whooley Depression Screening",
  "status" : "draft",
  "date" : "2026-07-22T09:38:36+00:00",
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
  "description" : "Records the binary result of the PHQ-2/Whooley depression screening (Ja/Nein-Version) as referenced in the Nationale VersorgungsLeitlinie Depression (AWMF nvl-005, https://register.awmf.org/de/leitlinien/detail/nvl-005). The reference period is the last month (letzter Monat), not the standard PHQ-2 period of two weeks. Interpretation of valueCodeableConcept: SNOMED CT 10828004 (Positive) = both Whooley questions answered 'Ja' (positive depression screen); SNOMED CT 260385009 (Negative) = at least one answer was 'Nein' (negative screen). Werden beide Fragen mit 'Ja' beantwortet, identifiziert der Test das Vorliegen depressiver Störungen mit einer Sensitivität von 96 % und einer Spezifität von 57 % (NVL Depression, AWMF nvl-005).",
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
  "baseDefinition" : "https://fhir.hl7.at/prenudge/appdata/r4/StructureDefinition/at-prenudge-observation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Observation",
      "path" : "Observation"
    },
    {
      "id" : "Observation.code",
      "path" : "Observation.code",
      "patternCodeableConcept" : {
        "coding" : [{
          "system" : "http://loinc.org",
          "code" : "73832-8",
          "display" : "Adult depression screening assessment"
        }]
      }
    },
    {
      "id" : "Observation.value[x]",
      "path" : "Observation.value[x]",
      "short" : "SNOMED 10828004 = positive screen (both Ja); SNOMED 260385009 = negative screen (at least one Nein)",
      "type" : [{
        "code" : "CodeableConcept"
      }],
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.hl7.at/prenudge/appdata/r4/ValueSet/at-prenudge-whooley-screen-result"
      }
    },
    {
      "id" : "Observation.derivedFrom",
      "path" : "Observation.derivedFrom",
      "short" : "QuestionnaireResponse from which this screening result was derived",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["http://hl7.org/fhir/StructureDefinition/QuestionnaireResponse"]
      }],
      "mustSupport" : true
    }]
  }
}

```
