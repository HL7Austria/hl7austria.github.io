# AT ELGA e-Medikation Transaction-Response Bundle Geplante Abgaben - ELGA e-Medikation (R4) DRAFT v0.1.0

## Resource Profile: AT ELGA e-Medikation Transaction-Response Bundle Geplante Abgaben 

**Usages:**

* Use this Profile: [AT ELGA e-Medikation Parameters Out $prescription-write](StructureDefinition-at-elga-emed-parameters-out-prescription-write.md)
* Examples for this Profile: [Bundle/At-Emed-Journey-01-03-Bundle-Geplante-Abgaben-Write-Response](Bundle-At-Emed-Journey-01-03-Bundle-Geplante-Abgaben-Write-Response.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.elga.emed.r4|current/StructureDefinition/StructureDefinition-at-elga-emed-bundle-geplanteabgaben-write-response.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-at-elga-emed-bundle-geplanteabgaben-write-response.csv), [Excel](../StructureDefinition-at-elga-emed-bundle-geplanteabgaben-write-response.xlsx), [Schematron](../StructureDefinition-at-elga-emed-bundle-geplanteabgaben-write-response.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-elga-emed-bundle-geplanteabgaben-write-response",
  "url" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-bundle-geplanteabgaben-write-response",
  "version" : "0.1.0",
  "name" : "AtElgaEmedBundleGeplanteAbgabenWriteResponse",
  "title" : "AT ELGA e-Medikation Transaction-Response Bundle Geplante Abgaben",
  "status" : "draft",
  "date" : "2026-10-29T10:03:24+00:00",
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
  "description" : "Profil für die Antwort des Servers auf das Schreiben von Geplanten Abgaben mit der $prescription-write Operation. Das Bundle enthält die persistierten Geplanten Abgaben.",
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
      "short" : "Die persistierte Geplante Abgabe",
      "min" : 1,
      "type" : [{
        "code" : "MedicationRequest",
        "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medicationrequest-geplanteabgabe"]
      }],
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
      "short" : "Versionsspezifische URL der persistierten Geplanten Abgabe",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry.response.lastModified",
      "path" : "Bundle.entry.response.lastModified",
      "short" : "Zeitpunkt der Persistierung",
      "min" : 1,
      "mustSupport" : true
    }]
  }
}

```
