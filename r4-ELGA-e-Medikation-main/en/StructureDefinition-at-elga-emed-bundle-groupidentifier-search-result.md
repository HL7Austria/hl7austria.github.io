# AT ELGA e-Medikation Searchset Bundle GroupIdentifier-Search - ELGA e-Medikation (R4) DRAFT v0.1.0

## Resource Profile: AT ELGA e-Medikation Searchset Bundle GroupIdentifier-Search 

**Usages:**

* Use this Profile: [AT ELGA e-Medikation Parameters Out $groupidentifier-search](StructureDefinition-at-elga-emed-parameters-out-groupidentifier-search.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.elga.emed.r4|current/StructureDefinition/StructureDefinition-at-elga-emed-bundle-groupidentifier-search-result.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-at-elga-emed-bundle-groupidentifier-search-result.csv), [Excel](../StructureDefinition-at-elga-emed-bundle-groupidentifier-search-result.xlsx), [Schematron](../StructureDefinition-at-elga-emed-bundle-groupidentifier-search-result.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-elga-emed-bundle-groupidentifier-search-result",
  "url" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-bundle-groupidentifier-search-result",
  "version" : "0.1.0",
  "name" : "AtElgaEmedBundleGroupIdentifierSearchResult",
  "title" : "AT ELGA e-Medikation Searchset Bundle GroupIdentifier-Search",
  "status" : "draft",
  "date" : "2026-10-29T11:16:49+00:00",
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
  "description" : "Profil für das Ergebnis der $groupidentifier-search Operation. Das Bundle enthält die dem e-Med GroupIdentifier zugeordneten Geplanten und Durchgeführten Abgaben sowie die von ihnen referenzierten Patient- und Autoren-Ressourcen.",
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
      "path" : "Bundle",
      "constraint" : [{
        "key" : "at-emed-bundle-groupidentifier-search-result-total",
        "severity" : "error",
        "human" : "Bundle.total muss der Anzahl der gefundenen Geplanten und Durchgeführten Abgaben (Entries mit search.mode = 'match') entsprechen.",
        "expression" : "total = entry.where(search.mode = 'match').count()",
        "source" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-bundle-groupidentifier-search-result"
      },
      {
        "key" : "at-emed-bundle-groupidentifier-search-result-patient",
        "severity" : "error",
        "human" : "Sind Geplante oder Durchgeführte Abgaben enthalten, muss auch der referenzierte Patient enthalten sein.",
        "expression" : "entry.where(search.mode = 'match').exists() implies entry.resource.ofType(Patient).exists()",
        "source" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-bundle-groupidentifier-search-result"
      }]
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
      "short" : "Art des Bundles. Für Search Results immer \"searchset\".",
      "patternCode" : "searchset",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.total",
      "path" : "Bundle.total",
      "short" : "Anzahl der gefundenen Geplanten und Durchgeführten Abgaben (Entries mit search.mode = match)",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.link",
      "path" : "Bundle.link",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.link.modifierExtension",
      "path" : "Bundle.link.modifierExtension",
      "short" : "Fachliche Begründung: Es sind keine zusätzlichen Erweiterungen vorgesehen, die die Bedeutung der Ressource oder ihrer Elemente verändern.",
      "max" : "0"
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
        "rules" : "closed"
      },
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry.modifierExtension",
      "path" : "Bundle.entry.modifierExtension",
      "short" : "Fachliche Begründung: Es sind keine zusätzlichen Erweiterungen vorgesehen, die die Bedeutung der Ressource oder ihrer Elemente verändern.",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry:GeplanteAbgabe",
      "path" : "Bundle.entry",
      "sliceName" : "GeplanteAbgabe",
      "short" : "Dem e-Med GroupIdentifier zugeordnete Geplante Abgaben",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:GeplanteAbgabe.modifierExtension",
      "path" : "Bundle.entry.modifierExtension",
      "short" : "Fachliche Begründung: Es sind keine zusätzlichen Erweiterungen vorgesehen, die die Bedeutung der Ressource oder ihrer Elemente verändern.",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry:GeplanteAbgabe.fullUrl",
      "path" : "Bundle.entry.fullUrl",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:GeplanteAbgabe.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "MedicationRequest",
        "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medicationrequest-geplanteabgabe"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:GeplanteAbgabe.search",
      "path" : "Bundle.entry.search",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:GeplanteAbgabe.search.modifierExtension",
      "path" : "Bundle.entry.search.modifierExtension",
      "short" : "Fachliche Begründung: Es sind keine zusätzlichen Erweiterungen vorgesehen, die die Bedeutung der Ressource oder ihrer Elemente verändern.",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry:GeplanteAbgabe.search.mode",
      "path" : "Bundle.entry.search.mode",
      "min" : 1,
      "patternCode" : "match",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:GeplanteAbgabe.request",
      "path" : "Bundle.entry.request",
      "short" : "Fachliche Begründung: In einem Searchset Bundle darf kein Request vorkommen.",
      "max" : "0",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:DurchgefuehrteAbgabe",
      "path" : "Bundle.entry",
      "sliceName" : "DurchgefuehrteAbgabe",
      "short" : "Dem e-Med GroupIdentifier zugeordnete Durchgeführte Abgaben",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:DurchgefuehrteAbgabe.modifierExtension",
      "path" : "Bundle.entry.modifierExtension",
      "short" : "Fachliche Begründung: Es sind keine zusätzlichen Erweiterungen vorgesehen, die die Bedeutung der Ressource oder ihrer Elemente verändern.",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry:DurchgefuehrteAbgabe.fullUrl",
      "path" : "Bundle.entry.fullUrl",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:DurchgefuehrteAbgabe.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "MedicationDispense",
        "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medicationdispense-durchgefuehrteabgabe"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:DurchgefuehrteAbgabe.search",
      "path" : "Bundle.entry.search",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:DurchgefuehrteAbgabe.search.modifierExtension",
      "path" : "Bundle.entry.search.modifierExtension",
      "short" : "Fachliche Begründung: Es sind keine zusätzlichen Erweiterungen vorgesehen, die die Bedeutung der Ressource oder ihrer Elemente verändern.",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry:DurchgefuehrteAbgabe.search.mode",
      "path" : "Bundle.entry.search.mode",
      "min" : 1,
      "patternCode" : "match",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:DurchgefuehrteAbgabe.request",
      "path" : "Bundle.entry.request",
      "short" : "Fachliche Begründung: In einem Searchset Bundle darf kein Request vorkommen.",
      "max" : "0",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:Patient",
      "path" : "Bundle.entry",
      "sliceName" : "Patient",
      "short" : "ELGA-Teilnehmer, auf den sich die Geplanten und Durchgeführten Abgaben beziehen",
      "min" : 0,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:Patient.modifierExtension",
      "path" : "Bundle.entry.modifierExtension",
      "short" : "Fachliche Begründung: Es sind keine zusätzlichen Erweiterungen vorgesehen, die die Bedeutung der Ressource oder ihrer Elemente verändern.",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry:Patient.fullUrl",
      "path" : "Bundle.entry.fullUrl",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:Patient.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Patient",
        "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-patient"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:Patient.search",
      "path" : "Bundle.entry.search",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:Patient.search.modifierExtension",
      "path" : "Bundle.entry.search.modifierExtension",
      "short" : "Fachliche Begründung: Es sind keine zusätzlichen Erweiterungen vorgesehen, die die Bedeutung der Ressource oder ihrer Elemente verändern.",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry:Patient.search.mode",
      "path" : "Bundle.entry.search.mode",
      "min" : 1,
      "patternCode" : "include",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:Patient.request",
      "path" : "Bundle.entry.request",
      "short" : "Fachliche Begründung: In einem Searchset Bundle darf kein Request vorkommen.",
      "max" : "0",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:Authors",
      "path" : "Bundle.entry",
      "sliceName" : "Authors",
      "short" : "Verordnende (requester) bzw. abgebende (performer) GDA der Geplanten und Durchgeführten Abgaben",
      "min" : 0,
      "max" : "*",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:Authors.modifierExtension",
      "path" : "Bundle.entry.modifierExtension",
      "short" : "Fachliche Begründung: Es sind keine zusätzlichen Erweiterungen vorgesehen, die die Bedeutung der Ressource oder ihrer Elemente verändern.",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry:Authors.fullUrl",
      "path" : "Bundle.entry.fullUrl",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:Authors.resource",
      "path" : "Bundle.entry.resource",
      "min" : 1,
      "type" : [{
        "code" : "Practitioner",
        "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-practitioner"]
      },
      {
        "code" : "PractitionerRole",
        "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-practitionerrole"]
      },
      {
        "code" : "Organization",
        "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-organization"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:Authors.search",
      "path" : "Bundle.entry.search",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:Authors.search.modifierExtension",
      "path" : "Bundle.entry.search.modifierExtension",
      "short" : "Fachliche Begründung: Es sind keine zusätzlichen Erweiterungen vorgesehen, die die Bedeutung der Ressource oder ihrer Elemente verändern.",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry:Authors.search.mode",
      "path" : "Bundle.entry.search.mode",
      "min" : 1,
      "patternCode" : "include",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:Authors.request",
      "path" : "Bundle.entry.request",
      "short" : "Fachliche Begründung: In einem Searchset Bundle darf kein Request vorkommen.",
      "max" : "0",
      "mustSupport" : true
    }]
  }
}

```
