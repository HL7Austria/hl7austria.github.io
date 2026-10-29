# AT ELGA e-Medikation Medikationsplan-Bundle Medikationsplan - ELGA e-Medikation (R4) DRAFT v0.1.0

## Resource Profile: AT ELGA e-Medikation Medikationsplan-Bundle Medikationsplan 

Das Medikationsplan-Bundle vom Typ `searchset` enthält den

* Medikationsplan (List): Liste mit Referenzen auf Medikationsplaneinträge und zur Abbildung von Reihenfolge und Änderungsstatus
* keinen oder mehrere Medikationsplaneinträge (MedicationRequests)
* den Patienten
* einen oder mehrere Authors (verantwortliche Ersteller/Bearbeiter)

Details zur `$plan-read`-Operation siehe [Sub_UC_eMed_01_01 – Aktuellen Medikationsplan lesen (Plan-Read)](https://fhir.hl7.at/r4-ELGA-e-Medikation-main/en/Sub_UC_eMed_01.html#sub_uc_emed_01_01---aktuellen-medikationsplan-lesen-plan-read).

Die Übersetzungen der `short-descriptions` werden noch erarbeitet und im nächsten Ballot zur Verfügung gestellt.

**Usages:**

* Use this Profile: [AT ELGA e-Medikation Parameters Out $plan-read](StructureDefinition-at-elga-emed-parameters-out-plan-read.md)
* Examples for this Profile: [Bundle/At-Emed-Journey-01-01-01-Bundle-Medikationsplan](Bundle-At-Emed-Journey-01-01-01-Bundle-Medikationsplan.md), [Bundle/At-Emed-Journey-01-02-Bundle-plan-read-response](Bundle-At-Emed-Journey-01-02-Bundle-plan-read-response.md) and [Bundle/At-Emed-Journey-05-01-Bundle-plan-read-response](Bundle-At-Emed-Journey-05-01-Bundle-plan-read-response.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.elga.emed.r4|current/StructureDefinition/StructureDefinition-at-elga-emed-bundle-medikationsplan.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-at-elga-emed-bundle-medikationsplan.csv), [Excel](../StructureDefinition-at-elga-emed-bundle-medikationsplan.xlsx), [Schematron](../StructureDefinition-at-elga-emed-bundle-medikationsplan.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-elga-emed-bundle-medikationsplan",
  "url" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-bundle-medikationsplan",
  "version" : "0.1.0",
  "name" : "AtElgaEmedBundleMedikationsplan",
  "title" : "AT ELGA e-Medikation Medikationsplan-Bundle Medikationsplan",
  "status" : "draft",
  "date" : "2026-10-29T08:12:50+00:00",
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
  "description" : "Profil für den Medikationsplan als Ergebnis der $plan-read Operation.",
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
      "short" : "Art des Bundles. Für Medikationspläne immer \"searchset\".",
      "patternCode" : "searchset",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.total",
      "path" : "Bundle.total",
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
        "ordered" : true,
        "rules" : "closed"
      },
      "min" : 3,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry.modifierExtension",
      "path" : "Bundle.entry.modifierExtension",
      "short" : "Fachliche Begründung: Es sind keine zusätzlichen Erweiterungen vorgesehen, die die Bedeutung der Ressource oder ihrer Elemente verändern.",
      "max" : "0"
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
      "short" : "Fachliche Begründung: Es sind keine zusätzlichen Erweiterungen vorgesehen, die die Bedeutung der Ressource oder ihrer Elemente verändern.",
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
      "min" : 1,
      "type" : [{
        "code" : "List",
        "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-list-medikationsplan"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:Medikationsplan.search",
      "path" : "Bundle.entry.search",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:Medikationsplan.search.modifierExtension",
      "path" : "Bundle.entry.search.modifierExtension",
      "short" : "Fachliche Begründung: Es sind keine zusätzlichen Erweiterungen vorgesehen, die die Bedeutung der Ressource oder ihrer Elemente verändern.",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry:Medikationsplan.search.mode",
      "path" : "Bundle.entry.search.mode",
      "min" : 1,
      "patternCode" : "match",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:Medikationsplan.request",
      "path" : "Bundle.entry.request",
      "short" : "Fachliche Begründung: In einem Searchset Bundle darf kein Request vorkommen.",
      "max" : "0",
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
      "short" : "Fachliche Begründung: Es sind keine zusätzlichen Erweiterungen vorgesehen, die die Bedeutung der Ressource oder ihrer Elemente verändern.",
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
      "min" : 1,
      "type" : [{
        "code" : "MedicationRequest",
        "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medicationrequest-planeintrag"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:Medikationsplaneintrag.search",
      "path" : "Bundle.entry.search",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:Medikationsplaneintrag.search.modifierExtension",
      "path" : "Bundle.entry.search.modifierExtension",
      "short" : "Fachliche Begründung: Es sind keine zusätzlichen Erweiterungen vorgesehen, die die Bedeutung der Ressource oder ihrer Elemente verändern.",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry:Medikationsplaneintrag.search.mode",
      "path" : "Bundle.entry.search.mode",
      "min" : 1,
      "patternCode" : "include",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:Medikationsplaneintrag.request",
      "path" : "Bundle.entry.request",
      "short" : "Fachliche Begründung: In einem Searchset Bundle darf kein Request vorkommen.",
      "max" : "0",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:Patient",
      "path" : "Bundle.entry",
      "sliceName" : "Patient",
      "min" : 1,
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
      "min" : 1,
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
        "code" : "Device",
        "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-device-fachanwendung"]
      },
      {
        "code" : "PractitionerRole",
        "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-practitionerrole"]
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
