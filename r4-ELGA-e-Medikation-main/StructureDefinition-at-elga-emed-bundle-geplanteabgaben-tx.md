# HL7.AT.FHIR.ELGA.EMED.R4\AT ELGA e-Medikation Transaction Bundle geplante Abgaben - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT ELGA e-Medikation Transaction Bundle geplante Abgaben**

## Resource Profile: AT ELGA e-Medikation Transaction Bundle geplante Abgaben 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-bundle-geplanteabgaben-tx | *Version*:0.1.0 | |
| Draft as of 2026-09-24 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:AtElgaEmedBundleGeplanteAbgabenTx |

 
Das Bundle vom Typ Transaction dient dem schreibenden Zugriff und besteht aus allen geplanten Abgaben, die gemeinsam geschrieben werden sollen. Es müssen entweder alle oder keine der geplanten Abgaben einen groupIdentifier enthalten. Ist kein groupIdentifier enthalten so erhalten alle geplanten Abgaben im Transaction Bundle einen neuen gemeinsamen groupIdentifier. 

**Usages:**

* Examples for this Profile: [Bundle/At-Emed-Journey-01-03-Bundle-Geplante-Abgaben-Tx](Bundle-At-Emed-Journey-01-03-Bundle-Geplante-Abgaben-Tx.md) and [Bundle/At-Emed-Journey-07-03-Bundle-Geplante-Abgaben-Tx](Bundle-At-Emed-Journey-07-03-Bundle-Geplante-Abgaben-Tx.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.elga.emed.r4|current/StructureDefinition/StructureDefinition-at-elga-emed-bundle-geplanteabgaben-tx.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-elga-emed-bundle-geplanteabgaben-tx.csv), [Excel](StructureDefinition-at-elga-emed-bundle-geplanteabgaben-tx.xlsx), [Schematron](StructureDefinition-at-elga-emed-bundle-geplanteabgaben-tx.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-elga-emed-bundle-geplanteabgaben-tx",
  "url" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-bundle-geplanteabgaben-tx",
  "version" : "0.1.0",
  "name" : "AtElgaEmedBundleGeplanteAbgabenTx",
  "title" : "AT ELGA e-Medikation Transaction Bundle geplante Abgaben",
  "status" : "draft",
  "date" : "2026-09-24T15:40:45+00:00",
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
  "description" : "Das Bundle vom Typ Transaction dient dem schreibenden Zugriff und besteht aus allen geplanten Abgaben, \ndie gemeinsam geschrieben werden sollen. Es müssen entweder alle oder keine der geplanten Abgaben einen groupIdentifier enthalten. \nIst kein groupIdentifier enthalten so erhalten alle geplanten Abgaben im Transaction Bundle einen neuen gemeinsamen groupIdentifier.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
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
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
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
      "short" : "Art des Bundles. Für schreibenden Zugriff immer Typ \"transaction\".",
      "patternCode" : "transaction",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.timestamp",
      "path" : "Bundle.timestamp",
      "short" : "Zeitpunkt der Erstellung des Bundles.",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.link",
      "path" : "Bundle.link",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry",
      "path" : "Bundle.entry",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "resource"
        }],
        "rules" : "closed"
      },
      "min" : 1,
      "constraint" : [{
        "key" : "at-emed-geplante-abgaben-group-identifier-einheitlich",
        "severity" : "error",
        "human" : "Entweder müssen alle geplanten Abgaben einen groupIdentifier enthalten oder keine.",
        "expression" : "resource.ofType(MedicationRequest).groupIdentifier.exists().not() or resource.ofType(MedicationRequest).groupIdentifier.exists().count() = resource.ofType(MedicationRequest).count()",
        "source" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-bundle-geplanteabgaben-tx"
      }]
    },
    {
      "id" : "Bundle.entry:geplanteAbgaben",
      "path" : "Bundle.entry",
      "sliceName" : "geplanteAbgaben",
      "min" : 1,
      "max" : "*"
    },
    {
      "id" : "Bundle.entry:geplanteAbgaben.link",
      "path" : "Bundle.entry.link",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry:geplanteAbgaben.fullUrl",
      "path" : "Bundle.entry.fullUrl",
      "short" : "Eindeutige URL für den Eintrag im Bundle. "
    },
    {
      "id" : "Bundle.entry:geplanteAbgaben.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "MedicationRequest",
        "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medicationrequest-geplanteabgabe"]
      }]
    },
    {
      "id" : "Bundle.entry:geplanteAbgaben.request.method",
      "path" : "Bundle.entry.request.method",
      "patternCode" : "POST"
    },
    {
      "id" : "Bundle.entry:geplanteAbgaben.request.url",
      "path" : "Bundle.entry.request.url",
      "patternUri" : "MedicationRequest"
    }]
  }
}

```
