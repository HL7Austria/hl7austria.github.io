# AT ELGA e-Medikation Patient - ELGA e-Medikation (R4) DRAFT v0.1.0

## Resource Profile: AT ELGA e-Medikation Patient 

**Usages:**

* Use this Profile: [AT ELGA e-Medikation Medikationsplan-Bundle Medikationsplan](StructureDefinition-at-elga-emed-bundle-medikationsplan.md)
* Refer to this Profile: [AT ELGA e-Medikation List Medikationsplan](StructureDefinition-at-elga-emed-list-medikationsplan.md), [AT ELGA e-Medikation MedicationDispense Durchgeführte Abgabe](StructureDefinition-at-elga-emed-medicationdispense-durchgefuehrteabgabe.md), [At ELGA e-Medikation MedicationRequest Geplante Abgabe](StructureDefinition-at-elga-emed-medicationrequest-geplanteabgabe.md) and [At ELGA e-Medikation MedicationRequest Planeintrag](StructureDefinition-at-elga-emed-medicationrequest-planeintrag.md)
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
  "date" : "2026-10-22T07:44:55+00:00",
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
  "baseDefinition" : "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-patient",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
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
      "short" : "Fachliche Begründung: TODO",
      "max" : "0"
    },
    {
      "id" : "Patient.identifier:socialSecurityNumber.type",
      "path" : "Patient.identifier.type",
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
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Patient.identifier:bPK.use",
      "path" : "Patient.identifier.use",
      "short" : "Fachliche Begründung: TODO",
      "max" : "0"
    },
    {
      "id" : "Patient.identifier:bPK.type",
      "path" : "Patient.identifier.type",
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
      "short" : "Fachliche Begründung: TODO",
      "max" : "0"
    },
    {
      "id" : "Patient.identifier:localPatientId.type",
      "path" : "Patient.identifier.type",
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
      "id" : "Patient.name",
      "path" : "Patient.name",
      "mustSupport" : true
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
    }]
  }
}

```
