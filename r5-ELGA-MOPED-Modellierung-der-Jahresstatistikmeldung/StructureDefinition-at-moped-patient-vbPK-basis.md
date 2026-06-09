# ELGA.MOPED\AT MOPED Patient vbPK Basis Profil - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT MOPED Patient vbPK Basis Profil**

## Resource Profile: AT MOPED Patient vbPK Basis Profil 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/at-moped-patient-vbPK-basis | *Version*:0.1.0 | |
| Draft as of 2026-06-09 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:AtMopedPatientvbPKBasis |

 
MOPED Profil der Patienten Ressource mit vbPKs 

**Usages:**

* Derived from this Profile: [MOPED vbPK Patient KA](StructureDefinition-at-moped-patient-vbPK-KA.md), [MOPED vbPK Patient LGF](StructureDefinition-at-moped-patient-vbPK-LGF.md), [MOPED vbPK Patient SV](StructureDefinition-at-moped-patient-vbPK-SV.md) and [MOPED vbPK Patient Bund](StructureDefinition-at-moped-patient-vbPK-bund.md)
* Use this Profile: [AT MOPED Bundle Input KA Profil](StructureDefinition-at-moped-bundle-input-KA.md)
* Refer to this Profile: [MOPED ARKRequest](StructureDefinition-MopedARKRequest.md), [MOPED ARKResponse](StructureDefinition-MopedARKResponse.md), [AT MOPED Claim LKFRequest generisches Profil](StructureDefinition-at-moped-claim-lkfrequest-generisch.md), [AT MOPED Claim VAERequest generisches Profil](StructureDefinition-at-moped-claim-vaerequest-generisch.md)... Show 13 more, [AT MOPED ClaimResponse LKFResponse generisches Profil](StructureDefinition-at-moped-claimresponse-lkfresponse-generisch.md), [AT MOPED ClaimResponse VAEResponse generisches Profil](StructureDefinition-at-moped-claimresponse-vaeresponse-generisch.md), [AT MOPED Composition generisches Profil](StructureDefinition-at-moped-composition-generisch.md), [AT MOPED Condition generisches Profil](StructureDefinition-at-moped-condition-generisch.md), [AT MOPED Coverage Selbstzahler Basis Profil](StructureDefinition-at-moped-coverage-selbstzahler.md), [AT MOPED Coverage Versicherter Basis Profil](StructureDefinition-at-moped-coverage-versicherter-basis.md), [AT MOPED Encounter Aufenthalt/Besuch generisches Profil](StructureDefinition-at-moped-encounter-aufenthaltbesuch-generisch.md), [AT MOPED Encounter Bewegung generisches Profil](StructureDefinition-at-moped-encounter-bewegung-generisch.md), [AT MOPED Observation Entbindungsart Basis Profil](StructureDefinition-at-moped-observation-entbindungsart-basis.md), [AT MOPED Observation Geburtenanzahl Basis Profil](StructureDefinition-at-moped-observation-geburtenanzahl-basis.md), [AT MOPED Procedure generisches Profil](StructureDefinition-at-moped-procedure-generisch.md), [AT MOPED QuestionnaireResponse fallbezogenes Profil](StructureDefinition-at-moped-questionnaireresponse-fallbezogen.md) and [AT MOPED RelatedPerson Hauptversicherter Basis Profil](StructureDefinition-at-moped-relatedperson-hauptversicherter-basis.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/elga.moped|current/StructureDefinition/StructureDefinition-at-moped-patient-vbPK-basis.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-moped-patient-vbPK-basis.csv), [Excel](StructureDefinition-at-moped-patient-vbPK-basis.xlsx), [Schematron](StructureDefinition-at-moped-patient-vbPK-basis.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-moped-patient-vbPK-basis",
  "url" : "https://elga.moped.at/StructureDefinition/at-moped-patient-vbPK-basis",
  "version" : "0.1.0",
  "name" : "AtMopedPatientvbPKBasis",
  "title" : "AT MOPED Patient vbPK Basis Profil",
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
  "description" : "MOPED Profil der Patienten Ressource mit vbPKs",
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "LKF",
    "uri" : "https://elga.moped.at/mapping/LKF",
    "name" : "LKF"
  },
  {
    "identity" : "KaOrg",
    "uri" : "https://elga.moped.at/mapping/KaOrg",
    "name" : "KaOrg"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "https://elga.moped.at/StructureDefinition/at-moped-patient-generisch",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Patient.name",
      "path" : "Patient.name",
      "mustSupport" : true
    },
    {
      "id" : "Patient.name.extension",
      "path" : "Patient.name.extension",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Patient.name.extension:data-absent-reason",
      "extension" : [{
        "extension" : [{
          "url" : "code",
          "valueCode" : "SHALL:populate"
        },
        {
          "url" : "actor",
          "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKAActor"
        }],
        "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
      }],
      "path" : "Patient.name.extension",
      "sliceName" : "data-absent-reason",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/data-absent-reason"]
      }]
    },
    {
      "id" : "Patient.name.extension:data-absent-reason.value[x]",
      "path" : "Patient.name.extension.value[x]",
      "fixedCode" : "masked"
    },
    {
      "id" : "Patient.name.family",
      "path" : "Patient.name.family",
      "max" : "0"
    },
    {
      "id" : "Patient.name.given",
      "path" : "Patient.name.given",
      "max" : "0"
    },
    {
      "id" : "Patient.address.line",
      "path" : "Patient.address.line",
      "max" : "0"
    },
    {
      "id" : "Patient.address.city",
      "path" : "Patient.address.city",
      "max" : "0"
    }]
  }
}

```
