# AT ELGA e-Medikation Transaction Bundle Geplante Abgaben - ELGA e-Medikation (R4) DRAFT v0.1.0

## Resource Profile: AT ELGA e-Medikation Transaction Bundle Geplante Abgaben 

Das Bundle vom Typ `transaction` dient dem schreibenden Zugriff und besteht aus allen Geplanten Abgaben, die gemeinsam geschrieben werden sollen. Es müssen entweder alle oder keine der Geplanten Abgaben einen `e-Med GroupIdentifier` enthalten. Ist dieser nicht enthalten, so erhalten alle Geplanten Abgaben im Transaction Bundle einen neuen gemeinsamen `e-Med GroupIdentifier`.

Details siehe [Sub_UC_eMed_04_01 - Geplante Abgabe erstellen (Prescription-Write)](Sub_UC_eMed_04.md#sub_uc_emed_04_01---geplante-abgabe-erstellen-prescription-write).

Die Übersetzungen der `short-descriptions` werden noch erarbeitet und im nächsten Ballot zur Verfügung gestellt.

**Usages:**

* Examples for this Profile: [Bundle/At-Emed-Journey-01-03-Bundle-Geplante-Abgaben-Tx](Bundle-At-Emed-Journey-01-03-Bundle-Geplante-Abgaben-Tx.md) and [Bundle/At-Emed-Journey-07-03-Bundle-Geplante-Abgaben-Tx](Bundle-At-Emed-Journey-07-03-Bundle-Geplante-Abgaben-Tx.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.elga.emed.r4|current/StructureDefinition/StructureDefinition-at-elga-emed-bundle-geplanteabgaben-tx.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-at-elga-emed-bundle-geplanteabgaben-tx.csv), [Excel](../StructureDefinition-at-elga-emed-bundle-geplanteabgaben-tx.xlsx), [Schematron](../StructureDefinition-at-elga-emed-bundle-geplanteabgaben-tx.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-elga-emed-bundle-geplanteabgaben-tx",
  "url" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-bundle-geplanteabgaben-tx",
  "version" : "0.1.0",
  "name" : "AtElgaEmedBundleGeplanteAbgabenTx",
  "title" : "AT ELGA e-Medikation Transaction Bundle Geplante Abgaben",
  "status" : "draft",
  "date" : "2026-10-26T18:36:30+00:00",
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
  "description" : "Profil für das Schreiben der Geplanten Abgaben mit der $prescription-write Operation.",
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
        "key" : "at-emed-geplante-abgaben-group-identifier-einheitlich",
        "severity" : "error",
        "human" : "Entweder müssen alle Geplanten Abgaben einen groupIdentifier enthalten oder keine.",
        "expression" : "entry.resource.ofType(MedicationRequest).groupIdentifier.exists().not() or entry.resource.ofType(MedicationRequest).where(groupIdentifier.exists()).count() = entry.resource.ofType(MedicationRequest).count()",
        "source" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-bundle-geplanteabgaben-tx"
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
      "short" : "Art des Bundles. Für schreibenden Zugriff immer Typ \"transaction\".",
      "patternCode" : "transaction",
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
      "min" : 1,
      "type" : [{
        "code" : "MedicationRequest",
        "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medicationrequest-geplanteabgabe"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry.request",
      "path" : "Bundle.entry.request",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry.request.modifierExtension",
      "path" : "Bundle.entry.request.modifierExtension",
      "short" : "Fachliche Begründung: Es sind keine zusätzlichen Erweiterungen vorgesehen, die die Bedeutung der Ressource oder ihrer Elemente verändern.",
      "max" : "0"
    },
    {
      "id" : "Bundle.entry.request.method",
      "path" : "Bundle.entry.request.method",
      "patternCode" : "POST",
      "mustSupport" : true
    },
    {
      "id" : "Bundle.entry.request.url",
      "path" : "Bundle.entry.request.url",
      "patternUri" : "MedicationRequest",
      "mustSupport" : true
    }]
  }
}

```
