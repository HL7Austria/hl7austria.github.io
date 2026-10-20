# AT ELGA e-Medikation Transaction Bundle durchgeführte Abgaben - ELGA e-Medikation (R4) DRAFT v0.1.0

## Resource Profile: AT ELGA e-Medikation Transaction Bundle durchgeführte Abgaben 

**Usages:**

* Examples for this Profile: [Bundle/At-Emed-Journey-02-01-Bundle-Durchgefuehrte-Abgaben-Tx](Bundle-At-Emed-Journey-02-01-Bundle-Durchgefuehrte-Abgaben-Tx.md) and [Bundle/At-Emed-Journey-03-01-Bundle-Durchgefuehrte-Abgaben-Tx](Bundle-At-Emed-Journey-03-01-Bundle-Durchgefuehrte-Abgaben-Tx.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.elga.emed.r4|current/StructureDefinition/StructureDefinition-at-elga-emed-bundle-durchgefuehrteabgaben-tx.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-at-elga-emed-bundle-durchgefuehrteabgaben-tx.csv), [Excel](../StructureDefinition-at-elga-emed-bundle-durchgefuehrteabgaben-tx.xlsx), [Schematron](../StructureDefinition-at-elga-emed-bundle-durchgefuehrteabgaben-tx.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-elga-emed-bundle-durchgefuehrteabgaben-tx",
  "url" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-bundle-durchgefuehrteabgaben-tx",
  "version" : "0.1.0",
  "name" : "AtElgaEmedBundleDurchgefuehrteAbgabenTx",
  "title" : "AT ELGA e-Medikation Transaction Bundle durchgeführte Abgaben",
  "status" : "draft",
  "date" : "2026-10-20T15:36:59+00:00",
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
  "description" : "Das Bundle vom Typ Transaction dient dem schreibenden Zugriff und besteht aus allen Durchgeführten Abgaben, \ndie gemeinsam geschrieben werden sollen.",
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
      "id" : "Bundle.implicitRules",
      "path" : "Bundle.implicitRules",
      "short" : "Fachliche Begründung: Die Ressource wird nach den Regeln dieses Implementierungsleitfadens interpretiert. Zusätzliche implizite Verarbeitungsregeln werden nicht verwendet.",
      "max" : "0"
    },
    {
      "id" : "Bundle.type",
      "path" : "Bundle.type",
      "short" : "Art des Bundles. Für schreibenden Zugriff immer Typ \"transaction\".",
      "patternCode" : "transaction",
      "mustSupport" : true
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
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:durchgefuehrteAbgaben",
      "path" : "Bundle.entry",
      "sliceName" : "durchgefuehrteAbgaben",
      "min" : 1,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:durchgefuehrteAbgaben.modifierExtension",
      "path" : "Bundle.entry.modifierExtension",
      "short" : "Fachliche Begründung: Es sind keine zusätzlichen Erweiterungen vorgesehen, die die Bedeutung der Ressource oder ihrer Elemente verändern.",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry:durchgefuehrteAbgaben.fullUrl",
      "path" : "Bundle.entry.fullUrl",
      "short" : "Eindeutige URL für den Eintrag im Bundle. ",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:durchgefuehrteAbgaben.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "MedicationDispense",
        "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medicationdispense-durchgefuehrteabgabe"]
      }]
    },
    {
      "id" : "Bundle.entry:durchgefuehrteAbgaben.request",
      "path" : "Bundle.entry.request",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:durchgefuehrteAbgaben.request.modifierExtension",
      "path" : "Bundle.entry.request.modifierExtension",
      "short" : "Fachliche Begründung: Es sind keine zusätzlichen Erweiterungen vorgesehen, die die Bedeutung der Ressource oder ihrer Elemente verändern.",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry:durchgefuehrteAbgaben.request.method",
      "path" : "Bundle.entry.request.method",
      "patternCode" : "POST",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:durchgefuehrteAbgaben.request.url",
      "path" : "Bundle.entry.request.url",
      "patternUri" : "MedicationDispense",
      "mustSupport" : true
    }]
  }
}

```
