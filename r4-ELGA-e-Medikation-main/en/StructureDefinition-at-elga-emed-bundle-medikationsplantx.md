# AT ELGA e-Medikation Transaction Bundle Medikationsplan - ELGA e-Medikation (R4) DRAFT v0.1.0

## Resource Profile: AT ELGA e-Medikation Transaction Bundle Medikationsplan 

Das Medikationsplan-Bundle vom Typ `transaction` dient dem schreibenden Zugriff auf den Medikationsplan (Aktualisierung aller enthaltenen Ressourcen) und enthält:

* Medikationsplan (List): Liste mit Referenzen auf Medikationsplaneinträge und zur Abbildung von Reihenfolge und Änderungsstatus
* keinen oder mehrere Medikationsplaneinträge (MedicationRequests)

Alle neuen bzw. geänderten und zu entfernenden Medikationsplaneinträge müssen inline im Bundle enthalten sein, alle unveränderten Ressourcen werden referenziert.

Details zur `$plan-write`-Operation siehe [Sub_UC_eMed_02_01 - Medikationsplan schreiben (Plan-Write)](Sub_UC_eMed_02.md#sub_uc_emed_02_01---medikationsplan-schreiben-plan-write).

**Usages:**

* Examples for this Profile: [Bundle/At-Emed-Journey-01-02-Bundle-Medikationsplan-Tx](Bundle-At-Emed-Journey-01-02-Bundle-Medikationsplan-Tx.md), [Bundle/At-Emed-Journey-05-01-Bundle-Medikationsplan-Tx](Bundle-At-Emed-Journey-05-01-Bundle-Medikationsplan-Tx.md), [Bundle/At-Emed-Journey-06-02-Bundle-Medikationsplan-Tx](Bundle-At-Emed-Journey-06-02-Bundle-Medikationsplan-Tx.md) and [Bundle/At-Emed-Journey-07-02-Bundle-Medikationsplan-Tx](Bundle-At-Emed-Journey-07-02-Bundle-Medikationsplan-Tx.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.elga.emed.r4|current/StructureDefinition/StructureDefinition-at-elga-emed-bundle-medikationsplantx.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-at-elga-emed-bundle-medikationsplantx.csv), [Excel](../StructureDefinition-at-elga-emed-bundle-medikationsplantx.xlsx), [Schematron](../StructureDefinition-at-elga-emed-bundle-medikationsplantx.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-elga-emed-bundle-medikationsplantx",
  "url" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-bundle-medikationsplantx",
  "version" : "0.1.0",
  "name" : "AtElgaEmedBundleMedikationsplanTx",
  "title" : "AT ELGA e-Medikation Transaction Bundle Medikationsplan",
  "status" : "draft",
  "date" : "2026-10-22T09:48:24+00:00",
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
  "description" : "Profil für das Schreiben des Medikationsplans mit der $plan-write Operation.",
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
      "id" : "Bundle.entry:Medikationsplan",
      "path" : "Bundle.entry",
      "sliceName" : "Medikationsplan",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
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
      "id" : "Bundle.entry:Medikationsplan.resource.entry.item.extension",
      "path" : "Bundle.entry.resource.entry.item.extension",
      "min" : 1
    },
    {
      "id" : "Bundle.entry:Medikationsplan.resource.entry.item.extension:ResolveAsVersionSpecific",
      "path" : "Bundle.entry.resource.entry.item.extension",
      "sliceName" : "ResolveAsVersionSpecific",
      "min" : 1,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/resolve-as-version-specific"]
      }]
    },
    {
      "id" : "Bundle.entry:Medikationsplan.resource.entry.item.extension:ResolveAsVersionSpecific.value[x]",
      "path" : "Bundle.entry.resource.entry.item.extension.value[x]",
      "patternBoolean" : true
    },
    {
      "id" : "Bundle.entry:Medikationsplan.request",
      "path" : "Bundle.entry.request",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:Medikationsplan.request.modifierExtension",
      "path" : "Bundle.entry.request.modifierExtension",
      "short" : "Fachliche Begründung: Es sind keine zusätzlichen Erweiterungen vorgesehen, die die Bedeutung der Ressource oder ihrer Elemente verändern.",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry:Medikationsplan.request.method",
      "path" : "Bundle.entry.request.method",
      "patternCode" : "PUT",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:Medikationsplan.request.url",
      "path" : "Bundle.entry.request.url",
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
      "id" : "Bundle.entry:Medikationsplaneintrag.request",
      "path" : "Bundle.entry.request",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry:Medikationsplaneintrag.request.modifierExtension",
      "path" : "Bundle.entry.request.modifierExtension",
      "short" : "Fachliche Begründung: Es sind keine zusätzlichen Erweiterungen vorgesehen, die die Bedeutung der Ressource oder ihrer Elemente verändern.",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry:Medikationsplaneintrag.request.method",
      "path" : "Bundle.entry.request.method",
      "mustSupport" : true,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.hl7.at/elga/emed/r4/ValueSet/AtElgaEmedValueSetMedikationsplanHTTPCodes"
      }
    },
    {
      "id" : "Bundle.entry:Medikationsplaneintrag.request.url",
      "path" : "Bundle.entry.request.url",
      "mustSupport" : true
    }]
  }
}

```
