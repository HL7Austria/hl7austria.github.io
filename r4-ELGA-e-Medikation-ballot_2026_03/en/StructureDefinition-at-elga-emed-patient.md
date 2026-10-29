# AT ELGA e-Medikation Patient - ELGA e-Medikation (R4) DRAFT v0.1.0

## Resource Profile: AT ELGA e-Medikation Patient 

Dieser Teil der Spezifikation wird noch erarbeitet und im nächsten Ballot zur Verfügung gestellt.

Die Übersetzungen der `short-descriptions` werden noch erarbeitet und im nächsten Ballot zur Verfügung gestellt.

**Usages:**

* Use this Profile: [AT ELGA e-Medikation Searchset Bundle GroupIdentifier-Search](StructureDefinition-at-elga-emed-bundle-groupidentifier-search-result.md) and [AT ELGA e-Medikation Medikationsplan-Bundle Medikationsplan](StructureDefinition-at-elga-emed-bundle-medikationsplan.md)
* Refer to this Profile: [AT ELGA e-Medikation List Medikationsplan](StructureDefinition-at-elga-emed-list-medikationsplan.md), [AT ELGA e-Medikation MedicationDispense Durchgeführte Abgabe](StructureDefinition-at-elga-emed-medicationdispense-durchgefuehrteabgabe.md), [AT ELGA e-Medikation MedicationRequest Geplante Abgabe](StructureDefinition-at-elga-emed-medicationrequest-geplanteabgabe.md) and [AT ELGA e-Medikation MedicationRequest Planeintrag](StructureDefinition-at-elga-emed-medicationrequest-planeintrag.md)
* Examples for this Profile: [Patient/At-Emed-Example-Patient-01](Patient-At-Emed-Example-Patient-01.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.elga.emed.r4|current/StructureDefinition/StructureDefinition-at-elga-emed-patient.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-at-elga-emed-patient.csv), [Excel](../StructureDefinition-at-elga-emed-patient.xlsx), [Schematron](../StructureDefinition-at-elga-emed-patient.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-elga-emed-patient",
  "url" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-patient",
  "version" : "0.1.0",
  "name" : "AtElgaEmedPatient",
  "title" : "AT ELGA e-Medikation Patient",
  "status" : "draft",
  "date" : "2026-10-29T16:50:58+00:00",
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
  "description" : "Profil für die Struktur der Patienten Ressource",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "at-core-mapping-patient2cdaatv3",
    "uri" : "https://wiki.hl7.at/index.php?title=ILF:Allgemeiner_Implementierungsleitfaden_(Version_3)",
    "name" : "Allgemeiner Implementierungsleitfaden v3"
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
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  },
  {
    "identity" : "loinc",
    "uri" : "http://loinc.org",
    "name" : "LOINC code for the element"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "https://fhir.hl7.at/core/r4/StructureDefinition/at-core-patient",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Patient.id",
      "path" : "Patient.id",
      "short" : "Technische id der Ressource",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Patient.meta",
      "path" : "Patient.meta",
      "mustSupport" : true
    },
    {
      "id" : "Patient.meta.profile",
      "path" : "Patient.meta.profile",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Patient.implicitRules",
      "path" : "Patient.implicitRules",
      "short" : "Fachliche Begründung: Die Ressource wird nach den Regeln dieses Implementierungsleitfadens interpretiert. Zusätzliche implizite Verarbeitungsregeln werden nicht verwendet.",
      "max" : "0"
    },
    {
      "id" : "Patient.text",
      "path" : "Patient.text",
      "mustSupport" : true
    },
    {
      "id" : "Patient.text.status",
      "path" : "Patient.text.status",
      "short" : "Siehe Notes - \"Regeln für den Inhalt der narrativen Teile in den Notes\".",
      "mustSupport" : true
    },
    {
      "id" : "Patient.text.div",
      "path" : "Patient.text.div",
      "mustSupport" : true
    },
    {
      "id" : "Patient.modifierExtension",
      "path" : "Patient.modifierExtension",
      "short" : "Fachliche Begründung: Für den Medikationsplan sind keine zusätzlichen Erweiterungen vorgesehen, die die Bedeutung der Ressource oder ihrer Elemente verändern.",
      "max" : "0"
    },
    {
      "id" : "Patient.identifier",
      "path" : "Patient.identifier",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:socialSecurityNumber",
      "path" : "Patient.identifier",
      "sliceName" : "socialSecurityNumber",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:socialSecurityNumber.use",
      "path" : "Patient.identifier.use",
      "max" : "0"
    },
    {
      "id" : "Patient.identifier:socialSecurityNumber.type",
      "path" : "Patient.identifier.type",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:socialSecurityNumber.type.coding",
      "path" : "Patient.identifier.type.coding",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:socialSecurityNumber.type.coding.system",
      "path" : "Patient.identifier.type.coding.system",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:socialSecurityNumber.type.coding.version",
      "path" : "Patient.identifier.type.coding.version",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:socialSecurityNumber.type.coding.code",
      "path" : "Patient.identifier.type.coding.code",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:socialSecurityNumber.type.coding.display",
      "path" : "Patient.identifier.type.coding.display",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:socialSecurityNumber.system",
      "path" : "Patient.identifier.system",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:socialSecurityNumber.value",
      "path" : "Patient.identifier.value",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:bPK",
      "path" : "Patient.identifier",
      "sliceName" : "bPK",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:bPK.use",
      "path" : "Patient.identifier.use",
      "max" : "0"
    },
    {
      "id" : "Patient.identifier:bPK.type",
      "path" : "Patient.identifier.type",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:bPK.type.coding",
      "path" : "Patient.identifier.type.coding",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:bPK.type.coding.system",
      "path" : "Patient.identifier.type.coding.system",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:bPK.type.coding.version",
      "path" : "Patient.identifier.type.coding.version",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:bPK.type.coding.code",
      "path" : "Patient.identifier.type.coding.code",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:bPK.type.coding.display",
      "path" : "Patient.identifier.type.coding.display",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:bPK.system",
      "path" : "Patient.identifier.system",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:bPK.value",
      "path" : "Patient.identifier.value",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:localPatientId",
      "path" : "Patient.identifier",
      "sliceName" : "localPatientId",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:localPatientId.use",
      "path" : "Patient.identifier.use",
      "max" : "0"
    },
    {
      "id" : "Patient.identifier:localPatientId.type",
      "path" : "Patient.identifier.type",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:localPatientId.type.coding",
      "path" : "Patient.identifier.type.coding",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:localPatientId.type.coding.system",
      "path" : "Patient.identifier.type.coding.system",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:localPatientId.type.coding.version",
      "path" : "Patient.identifier.type.coding.version",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:localPatientId.type.coding.code",
      "path" : "Patient.identifier.type.coding.code",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:localPatientId.type.coding.display",
      "path" : "Patient.identifier.type.coding.display",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:localPatientId.system",
      "path" : "Patient.identifier.system",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:localPatientId.value",
      "path" : "Patient.identifier.value",
      "mustSupport" : true
    },
    {
      "id" : "Patient.active",
      "path" : "Patient.active",
      "max" : "0"
    },
    {
      "id" : "Patient.name",
      "path" : "Patient.name",
      "mustSupport" : true
    },
    {
      "id" : "Patient.name.use",
      "path" : "Patient.name.use",
      "max" : "0"
    },
    {
      "id" : "Patient.name.family",
      "path" : "Patient.name.family",
      "mustSupport" : true
    },
    {
      "id" : "Patient.name.given",
      "path" : "Patient.name.given",
      "mustSupport" : true
    },
    {
      "id" : "Patient.name.prefix",
      "path" : "Patient.name.prefix",
      "mustSupport" : true
    },
    {
      "id" : "Patient.name.suffix",
      "path" : "Patient.name.suffix",
      "mustSupport" : true
    },
    {
      "id" : "Patient.gender",
      "path" : "Patient.gender",
      "mustSupport" : true
    },
    {
      "id" : "Patient.birthDate",
      "path" : "Patient.birthDate",
      "mustSupport" : true
    },
    {
      "id" : "Patient.deceased[x]",
      "path" : "Patient.deceased[x]",
      "max" : "0"
    },
    {
      "id" : "Patient.deceased[x]:deceasedBoolean",
      "path" : "Patient.deceased[x]",
      "sliceName" : "deceasedBoolean",
      "max" : "0",
      "type" : [{
        "code" : "boolean"
      }]
    },
    {
      "id" : "Patient.deceased[x]:deceasedDateTime",
      "path" : "Patient.deceased[x]",
      "sliceName" : "deceasedDateTime",
      "max" : "0",
      "type" : [{
        "code" : "dateTime"
      }]
    },
    {
      "id" : "Patient.link",
      "path" : "Patient.link",
      "max" : "0"
    }]
  }
}

```
