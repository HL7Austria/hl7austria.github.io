# AT ELGA e-Medikation Transaction-Response Bundle Medikationsplan - ELGA e-Medikation (R4) DRAFT v0.1.0

## Resource Profile: AT ELGA e-Medikation Transaction-Response Bundle Medikationsplan 

**Usages:**

* Use this Profile: [AT ELGA e-Medikation Parameters Out $plan-write](StructureDefinition-at-elga-emed-parameters-out-plan-write.md)
* Examples for this Profile: [Bundle/At-Emed-Journey-01-02-Bundle-plan-write-response](Bundle-At-Emed-Journey-01-02-Bundle-plan-write-response.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.elga.emed.r4|current/StructureDefinition/StructureDefinition-at-elga-emed-bundle-medikationsplan-write-response.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-at-elga-emed-bundle-medikationsplan-write-response.csv), [Excel](../StructureDefinition-at-elga-emed-bundle-medikationsplan-write-response.xlsx), [Schematron](../StructureDefinition-at-elga-emed-bundle-medikationsplan-write-response.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-elga-emed-bundle-medikationsplan-write-response",
  "url" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-bundle-medikationsplan-write-response",
  "version" : "0.1.0",
  "name" : "AtElgaEmedBundleMedikationsplanWriteResponse",
  "title" : "AT ELGA e-Medikation Transaction-Response Bundle Medikationsplan",
  "status" : "draft",
  "date" : "2026-10-28T21:33:03+00:00",
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
  "description" : "Profil für die Antwort des Servers auf das Schreiben des Medikationsplans mit der $plan-write Operation. Das Bundle enthält den persistierten Medikationsplan sowie die persistierten Medikationsplaneinträge.",
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
      "short" : "Art des Bundles. Für die Antwort auf schreibenden Zugriff immer Typ \"transaction-response\".",
      "patternCode" : "transaction-response",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.link.relation",
      "path" : "Bundle.link.relation",
      "patternString" : "self",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.link.url",
      "path" : "Bundle.link.url",
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
        "ordered" : true,
        "rules" : "closed"
      },
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry.modifierExtension",
      "path" : "Bundle.entry.modifierExtension",
      "short" : "Fachliche Begründung: Es sind keine zusätzlichen Erweiterungen vorgesehen, die die Bedeutung der Ressource oder ihrer Elemente verändern.",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry.fullUrl",
      "path" : "Bundle.entry.fullUrl",
      "short" : "Eindeutige URL für den Eintrag im Bundle. ",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry.response",
      "path" : "Bundle.entry.response",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry.response.modifierExtension",
      "path" : "Bundle.entry.response.modifierExtension",
      "short" : "Fachliche Begründung: Es sind keine zusätzlichen Erweiterungen vorgesehen, die die Bedeutung der Ressource oder ihrer Elemente verändern.",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry.response.status",
      "path" : "Bundle.entry.response.status",
      "short" : "HTTP-Statuscode der Verarbeitung des Eintrags",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry.response.location",
      "path" : "Bundle.entry.response.location",
      "short" : "Versionsspezifische URL der persistierten Ressource",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry.response.lastModified",
      "path" : "Bundle.entry.response.lastModified",
      "short" : "Zeitpunkt der Persistierung",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:Medikationsplan",
      "path" : "Bundle.entry",
      "sliceName" : "Medikationsplan",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:Medikationsplan.modifierExtension",
      "path" : "Bundle.entry.modifierExtension",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry:Medikationsplan.fullUrl",
      "path" : "Bundle.entry.fullUrl",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:Medikationsplan.resource",
      "path" : "Bundle.entry.resource",
      "short" : "Der persistierte Medikationsplan",
      "min" : 1,
      "type" : [{
        "code" : "List",
        "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-list-medikationsplan"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:Medikationsplan.response",
      "path" : "Bundle.entry.response",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:Medikationsplan.response.modifierExtension",
      "path" : "Bundle.entry.response.modifierExtension",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry:Medikationsplan.response.status",
      "path" : "Bundle.entry.response.status",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:Medikationsplan.response.location",
      "path" : "Bundle.entry.response.location",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:Medikationsplan.response.lastModified",
      "path" : "Bundle.entry.response.lastModified",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:Medikationsplaneintrag",
      "path" : "Bundle.entry",
      "sliceName" : "Medikationsplaneintrag",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:Medikationsplaneintrag.modifierExtension",
      "path" : "Bundle.entry.modifierExtension",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry:Medikationsplaneintrag.fullUrl",
      "path" : "Bundle.entry.fullUrl",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:Medikationsplaneintrag.resource",
      "path" : "Bundle.entry.resource",
      "short" : "Ein persistierter Medikationsplaneintrag",
      "min" : 1,
      "type" : [{
        "code" : "MedicationRequest",
        "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medicationrequest-planeintrag"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:Medikationsplaneintrag.response",
      "path" : "Bundle.entry.response",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:Medikationsplaneintrag.response.modifierExtension",
      "path" : "Bundle.entry.response.modifierExtension",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry:Medikationsplaneintrag.response.status",
      "path" : "Bundle.entry.response.status",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:Medikationsplaneintrag.response.location",
      "path" : "Bundle.entry.response.location",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:Medikationsplaneintrag.response.lastModified",
      "path" : "Bundle.entry.response.lastModified",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```
