# HL7® AT Core Patient Profile - HL7® Austria FHIR® Core Implementation Guide v2.1.0

## Resource Profile: HL7® AT Core Patient Profile 

The goal of this profile is to represent the demographic data of patients in the Austrian healthcare domain. Organizations and persons providing healthcare services in Austria are commonly called “Gesundheitsdiensteanbieter (GDA)” (in English: Healthcare Service Provider). This German abbreviation is therefore used throughout this profile where it is relevant. Austrian patients are usually identified with one or more of the following identifiers:

* The “Sozialversicherungsnummer (SVNR)” which is the Austrian social security number provided by the Federation of Austrian Social Insurances (Dachverband der österreichischen Sozialversicherungsträger).
* A “Bereichsspezifisches Personenkennzeichen (bPK)” which is a sector-specific personal identifier used in Austrian e-Government processes and provided by the Federal Ministry of the Interior (Bundesministerium für Inneres).
* A “Verschlüsseltes bereichsspezifisches Personenkennzeichen (vbPK)” which is the encrypted form of the bPK for a specific sector (e.g. GH for Gesundheit, SV for Sozialversicherung, AS for Amtliche Statistik) according to the E-Government-Bereichsabgrenzungsverordnung (E-Gov-BerAbgrV).
* A local patient identifier which is assigned by a GDA (e.g. the patient ID of a hospital information system) and is only unique within the namespace of that GDA.

The identifiers are distinguished by the identifier type code of the HL7 v2 table 0203: “SS” (Social Security number) for the SVNR, “NI” (National unique individual identifier) for the bPK, “ANON” (Anonymous identifier) for the vbPK and “PI” (Patient internal identifier) for the local patient identifier. Further identifier types can be found in the [HL7 AT Patient Identifier](https://termgit.elga.gv.at/ValueSet/hl7-at-patientidentifier) value set.

**Usages:**

* Refer to this Profile: [HL7® AT Core RelatedPerson Profile](StructureDefinition-at-core-related-person.md)
* Examples for this Profile: [Patient/HL7ATCorePatientCreateTestExample](Patient-HL7ATCorePatientCreateTestExample.md), [Patient/HL7ATCorePatientExample01](Patient-HL7ATCorePatientExample01.md), [Patient/HL7ATCorePatientExample02-deceasedTime](Patient-HL7ATCorePatientExample02-deceasedTime.md), [Patient/HL7ATCorePatientExample03-deceasedBoolean](Patient-HL7ATCorePatientExample03-deceasedBoolean.md)... Show 6 more, [Patient/HL7ATCorePatientExample04-Full](Patient-HL7ATCorePatientExample04-Full.md), [Patient/HL7ATCorePatientExample05-FullElga](Patient-HL7ATCorePatientExample05-FullElga.md), [Patient/HL7ATCorePatientExample06-GenderExtension](Patient-HL7ATCorePatientExample06-GenderExtension.md), [Patient/HL7ATCorePatientExample07-MunicipalityCode](Patient-HL7ATCorePatientExample07-MunicipalityCode.md), [Patient/HL7ATCorePatientUpdateTestExample](Patient-HL7ATCorePatientUpdateTestExample.md) and [Patient/PatientFelixGruber](Patient-PatientFelixGruber.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.core.r5|current/StructureDefinition/StructureDefinition-at-core-patient.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-at-core-patient.csv), [Excel](../StructureDefinition-at-core-patient.xlsx), [Schematron](../StructureDefinition-at-core-patient.sch) 

### Notes:

Usage of the European Health Insurance Card (EHIC):

* In most information systems in Austria, the EHIC information is captured and communicated in a structured way and not just as an additional identifier for the patient.
* HL7 Europe has already started to create a FHIR IG for the EHIC as a combination of the Coverage Resource with existing identifiers of a Patient (the identifier part of the EHIC information is different for each European country, hence it has to be addressed this way)
* The current draft of this FHIR IG can be found [here](https://build.fhir.org/ig/hl7-eu/base/StructureDefinition-Coverage-eu-ehic.html)
* As soon as it is balloted and finished, HL7 Austria will incorperate it accordingly in to its HL7 AT FHIR Core IG.



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-core-patient",
  "url" : "https://fhir.hl7.at/core/r5/StructureDefinition/at-core-patient",
  "version" : "2.1.0",
  "name" : "HL7ATCorePatient",
  "title" : "HL7® AT Core Patient Profile",
  "status" : "active",
  "date" : "2026-10-28T07:26:46+00:00",
  "publisher" : "HL7® Austria, TC FHIR®",
  "contact" : [{
    "name" : "HL7® Austria, TC FHIR®",
    "telecom" : [{
      "system" : "url",
      "value" : "https://hl7.at/technische-komitees/tc-fhir/"
    }]
  },
  {
    "name" : "Technical Committee for FHIR® at HL7® Austria",
    "telecom" : [{
      "system" : "email",
      "value" : "mailto:tc-fhir@hl7.at"
    }]
  }],
  "description" : "HL7® Austria FHIR® Core Profile for patient data in Austria.\r\nThe HL7® AT Core Patient is based upon the core FHIR® Patient Resource and designed to meet the applicable patient demographic data elements in Austria. It identifies which core elements, extensions, vocabularies and value sets SHALL be present in the resource when using this profile. Note, this extension represents the common structure of Patient information within Austrian information systems.",
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "at-core-mapping-patient2cdaatv3",
    "uri" : "https://wiki.hl7.at/index.php?title=ILF:Allgemeiner_Implementierungsleitfaden_(Version_3)",
    "name" : "Allgemeiner Implementierungsleitfaden v3"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "interface",
    "uri" : "http://hl7.org/fhir/interface",
    "name" : "Interface Pattern"
  },
  {
    "identity" : "cda",
    "uri" : "http://hl7.org/v3/cda",
    "name" : "CDA (R2)"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 V2 Mapping"
  },
  {
    "identity" : "loinc",
    "uri" : "http://loinc.org",
    "name" : "LOINC code for the element"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Patient",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Patient",
      "path" : "Patient",
      "mapping" : [{
        "identity" : "at-core-mapping-patient2cdaatv3",
        "map" : "ClinicalDocument.recordTarget.patientRole"
      }]
    },
    {
      "id" : "Patient.extension",
      "path" : "Patient.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Patient.extension:citizenship",
      "path" : "Patient.extension",
      "sliceName" : "citizenship",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/patient-citizenship"]
      }]
    },
    {
      "id" : "Patient.extension:citizenship.extension:code",
      "path" : "Patient.extension.extension",
      "sliceName" : "code"
    },
    {
      "id" : "Patient.extension:citizenship.extension:code.value[x]",
      "path" : "Patient.extension.extension.value[x]",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://termgit.elga.gv.at/ValueSet/elga-laendercodes"
      }
    },
    {
      "id" : "Patient.extension:PatientReligion",
      "path" : "Patient.extension",
      "sliceName" : "PatientReligion",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/patient-religion"]
      }]
    },
    {
      "id" : "Patient.extension:PatientReligion.value[x]",
      "path" : "Patient.extension.value[x]",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://termgit.elga.gv.at/ValueSet/elga-religiousaffiliation"
      }
    },
    {
      "id" : "Patient.extension:birthPlace",
      "path" : "Patient.extension",
      "sliceName" : "birthPlace",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/patient-birthPlace"]
      }]
    },
    {
      "id" : "Patient.extension:birthPlace.value[x]",
      "path" : "Patient.extension.value[x]",
      "type" : [{
        "code" : "Address",
        "profile" : ["https://fhir.hl7.at/core/r5/StructureDefinition/at-core-address"]
      }]
    },
    {
      "id" : "Patient.identifier",
      "path" : "Patient.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "type.coding.code"
        },
        {
          "type" : "value",
          "path" : "system"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Patient.identifier.type",
      "path" : "Patient.identifier.type",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://termgit.elga.gv.at/ValueSet/hl7-at-patientidentifier"
      }
    },
    {
      "id" : "Patient.identifier:socialSecurityNumber",
      "path" : "Patient.identifier",
      "sliceName" : "socialSecurityNumber",
      "short" : "Sozialversicherungsnummer (SVNR)",
      "definition" : "The Austrian social security number (Sozialversicherungsnummer, SVNR) of the patient, assigned by the Federation of Austrian Social Insurances (Dachverband der österreichischen Sozialversicherungsträger).",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Patient.identifier:socialSecurityNumber.type.coding.system",
      "path" : "Patient.identifier.type.coding.system",
      "patternUri" : "http://terminology.hl7.org/CodeSystem/v2-0203"
    },
    {
      "id" : "Patient.identifier:socialSecurityNumber.type.coding.code",
      "path" : "Patient.identifier.type.coding.code",
      "min" : 1,
      "patternCode" : "SS"
    },
    {
      "id" : "Patient.identifier:socialSecurityNumber.system",
      "path" : "Patient.identifier.system",
      "short" : "OID for the Sozialversicherungsnummer (SVNR) in Austria",
      "min" : 1,
      "patternUri" : "urn:oid:1.2.40.0.10.1.4.3.1",
      "mapping" : [{
        "identity" : "at-core-mapping-patient2cdaatv3",
        "map" : ".id[1].root"
      }]
    },
    {
      "id" : "Patient.identifier:socialSecurityNumber.value",
      "path" : "Patient.identifier.value",
      "mapping" : [{
        "identity" : "at-core-mapping-patient2cdaatv3",
        "map" : ".id[1].extension"
      }]
    },
    {
      "id" : "Patient.identifier:socialSecurityNumber.assigner.display",
      "path" : "Patient.identifier.assigner.display",
      "patternString" : "Dachverband der österreichischen Sozialversicherungsträger"
    },
    {
      "id" : "Patient.identifier:bPK",
      "path" : "Patient.identifier",
      "sliceName" : "bPK",
      "short" : "Bereichsspezifisches Personenkennzeichen (bPK)",
      "definition" : "The sector-specific personal identifier (Bereichsspezifisches Personenkennzeichen, bPK) of the patient, used in Austrian e-Government processes and assigned by the Federal Ministry of the Interior (Bundesministerium für Inneres).",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Patient.identifier:bPK.type.coding.system",
      "path" : "Patient.identifier.type.coding.system",
      "patternUri" : "http://terminology.hl7.org/CodeSystem/v2-0203"
    },
    {
      "id" : "Patient.identifier:bPK.type.coding.code",
      "path" : "Patient.identifier.type.coding.code",
      "min" : 1,
      "patternCode" : "NI"
    },
    {
      "id" : "Patient.identifier:bPK.system",
      "path" : "Patient.identifier.system",
      "short" : "OID for the bereichsspezifisches Personenkennzeichen (bPK) in Austria",
      "min" : 1,
      "patternUri" : "urn:oid:1.2.40.0.10.2.1.1.149",
      "mapping" : [{
        "identity" : "at-core-mapping-patient2cdaatv3",
        "map" : ".id.where(root='1.2.40.0.10.2.1.1.149').root"
      }]
    },
    {
      "id" : "Patient.identifier:bPK.value",
      "path" : "Patient.identifier.value",
      "mapping" : [{
        "identity" : "at-core-mapping-patient2cdaatv3",
        "map" : ".id.where(root='1.2.40.0.10.2.1.1.149').extension"
      }]
    },
    {
      "id" : "Patient.identifier:bPK.assigner.display",
      "path" : "Patient.identifier.assigner.display",
      "patternString" : "Bundesministerium für Inneres"
    },
    {
      "id" : "Patient.identifier:vbPK",
      "path" : "Patient.identifier",
      "sliceName" : "vbPK",
      "short" : "Verschlüsseltes bereichsspezifisches Personenkennzeichen (vbPK)",
      "definition" : "The encrypted sector-specific personal identifier (Verschlüsseltes bereichsspezifisches Personenkennzeichen, vbPK) of the patient, used in Austrian e-Government processes. The OID of the system identifies the sector (e.g. GH for Gesundheit, SV for Sozialversicherung, AS for Amtliche Statistik) according to the E-Government-Bereichsabgrenzungsverordnung (E-Gov-BerAbgrV).",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Patient.identifier:vbPK.type.coding.system",
      "path" : "Patient.identifier.type.coding.system",
      "patternUri" : "http://terminology.hl7.org/CodeSystem/v2-0203"
    },
    {
      "id" : "Patient.identifier:vbPK.type.coding.code",
      "path" : "Patient.identifier.type.coding.code",
      "min" : 1,
      "patternCode" : "ANON"
    },
    {
      "id" : "Patient.identifier:vbPK.system",
      "path" : "Patient.identifier.system",
      "short" : "OID for the specific verschlüsseltes bereichsspezifisches Personenkennzeichen (vbPK) in Austria",
      "min" : 1,
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.hl7.at/core/r5/ValueSet/at-core-vbpk"
      }
    },
    {
      "id" : "Patient.identifier:localPatientId",
      "path" : "Patient.identifier",
      "sliceName" : "localPatientId",
      "short" : "Local patient identifier (lokale Patientenkennung)",
      "definition" : "A local patient identifier (lokale Patientenkennung) assigned by a healthcare service provider (Gesundheitsdiensteanbieter, GDA), e.g. the patient ID of a hospital information system. It is only unique within the namespace of the assigning GDA.",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Patient.identifier:localPatientId.type.coding.system",
      "path" : "Patient.identifier.type.coding.system",
      "patternUri" : "http://terminology.hl7.org/CodeSystem/v2-0203"
    },
    {
      "id" : "Patient.identifier:localPatientId.type.coding.code",
      "path" : "Patient.identifier.type.coding.code",
      "min" : 1,
      "patternCode" : "PI"
    },
    {
      "id" : "Patient.identifier:localPatientId.system",
      "path" : "Patient.identifier.system",
      "short" : "Namespace that assigned the localPatientId.",
      "min" : 1,
      "mapping" : [{
        "identity" : "at-core-mapping-patient2cdaatv3",
        "map" : ".id[0].root"
      }]
    },
    {
      "id" : "Patient.identifier:localPatientId.value",
      "path" : "Patient.identifier.value",
      "mapping" : [{
        "identity" : "at-core-mapping-patient2cdaatv3",
        "map" : ".id[0].extension"
      }]
    },
    {
      "id" : "Patient.active",
      "path" : "Patient.active",
      "mapping" : [{
        "identity" : "at-core-mapping-patient2cdaatv3",
        "map" : "n/a"
      }]
    },
    {
      "id" : "Patient.name",
      "path" : "Patient.name",
      "mapping" : [{
        "identity" : "at-core-mapping-patient2cdaatv3",
        "map" : ".patient.name"
      }]
    },
    {
      "id" : "Patient.name.family",
      "path" : "Patient.name.family",
      "mapping" : [{
        "identity" : "at-core-mapping-patient2cdaatv3",
        "map" : ".patient.name.family.dataString"
      }]
    },
    {
      "id" : "Patient.name.given",
      "path" : "Patient.name.given",
      "mapping" : [{
        "identity" : "at-core-mapping-patient2cdaatv3",
        "map" : ".patient.name.given.dataString"
      }]
    },
    {
      "id" : "Patient.name.prefix",
      "path" : "Patient.name.prefix",
      "mapping" : [{
        "identity" : "at-core-mapping-patient2cdaatv3",
        "map" : ".patient.name.prefix.dataString"
      }]
    },
    {
      "id" : "Patient.name.suffix",
      "path" : "Patient.name.suffix",
      "mapping" : [{
        "identity" : "at-core-mapping-patient2cdaatv3",
        "map" : ".patient.name.suffix.dataString"
      }]
    },
    {
      "id" : "Patient.telecom.system",
      "path" : "Patient.telecom.system",
      "mapping" : [{
        "identity" : "at-core-mapping-patient2cdaatv3",
        "map" : ".telecom.value"
      }]
    },
    {
      "id" : "Patient.telecom.value",
      "path" : "Patient.telecom.value",
      "mapping" : [{
        "identity" : "at-core-mapping-patient2cdaatv3",
        "map" : ".telecom.value"
      }]
    },
    {
      "id" : "Patient.telecom.use",
      "path" : "Patient.telecom.use",
      "mapping" : [{
        "identity" : "at-core-mapping-patient2cdaatv3",
        "map" : ".telecom.use"
      }]
    },
    {
      "id" : "Patient.gender",
      "path" : "Patient.gender",
      "mapping" : [{
        "identity" : "at-core-mapping-patient2cdaatv3",
        "map" : ".patient.administrativeGenderCode.displayName"
      }]
    },
    {
      "id" : "Patient.gender.extension",
      "path" : "Patient.gender.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Patient.gender.extension:AdministrativeGenderAddition",
      "path" : "Patient.gender.extension",
      "sliceName" : "AdministrativeGenderAddition",
      "short" : "Additional administrative gender (Geschlecht)",
      "definition" : "Additional administrative gender code (Geschlecht) required in Austria that is not covered by the FHIR administrative gender codes. The extension is only applied in case the administrative gender itself is set to 'other' (Ergänzung zu 'other').",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhir.hl7.at/core/r5/StructureDefinition/at-core-ext-gender-administrativeGenderAddition"]
      }]
    },
    {
      "id" : "Patient.birthDate",
      "path" : "Patient.birthDate",
      "mapping" : [{
        "identity" : "at-core-mapping-patient2cdaatv3",
        "map" : ".patient.birthTime.value"
      }]
    },
    {
      "id" : "Patient.birthDate.extension",
      "path" : "Patient.birthDate.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Patient.birthDate.extension:birthTime",
      "path" : "Patient.birthDate.extension",
      "sliceName" : "birthTime",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["http://hl7.org/fhir/StructureDefinition/patient-birthTime"]
      }]
    },
    {
      "id" : "Patient.deceased[x]",
      "path" : "Patient.deceased[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Patient.deceased[x]:deceasedBoolean",
      "path" : "Patient.deceased[x]",
      "sliceName" : "deceasedBoolean",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }],
      "mapping" : [{
        "identity" : "at-core-mapping-patient2cdaatv3",
        "map" : ".patient.deceasedInd"
      }]
    },
    {
      "id" : "Patient.deceased[x]:deceasedDateTime",
      "path" : "Patient.deceased[x]",
      "sliceName" : "deceasedDateTime",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "dateTime"
      }],
      "mapping" : [{
        "identity" : "at-core-mapping-patient2cdaatv3",
        "map" : ".patient.deceasedTime"
      }]
    },
    {
      "id" : "Patient.address",
      "path" : "Patient.address",
      "type" : [{
        "code" : "Address",
        "profile" : ["https://fhir.hl7.at/core/r5/StructureDefinition/at-core-address"]
      }]
    },
    {
      "id" : "Patient.address.use",
      "path" : "Patient.address.use",
      "mapping" : [{
        "identity" : "at-core-mapping-patient2cdaatv3",
        "map" : ".addr.use"
      }]
    },
    {
      "id" : "Patient.address.text",
      "path" : "Patient.address.text",
      "mapping" : [{
        "identity" : "at-core-mapping-patient2cdaatv3",
        "map" : ".addr.select(streetAddressLine.dataString + ' ' + postalCode.dataString + ' ' + city.dataString + ' ' + country.dataString)"
      }]
    },
    {
      "id" : "Patient.address.line",
      "path" : "Patient.address.line",
      "mapping" : [{
        "identity" : "at-core-mapping-patient2cdaatv3",
        "map" : ".addr.streetAddressLine"
      }]
    },
    {
      "id" : "Patient.address.city",
      "path" : "Patient.address.city",
      "mapping" : [{
        "identity" : "at-core-mapping-patient2cdaatv3",
        "map" : ".addr.city.dataString"
      }]
    },
    {
      "id" : "Patient.address.state",
      "path" : "Patient.address.state",
      "mapping" : [{
        "identity" : "at-core-mapping-patient2cdaatv3",
        "map" : ".addr.state.dataString"
      }]
    },
    {
      "id" : "Patient.address.postalCode",
      "path" : "Patient.address.postalCode",
      "mapping" : [{
        "identity" : "at-core-mapping-patient2cdaatv3",
        "map" : ".addr.postalCode.dataString"
      }]
    },
    {
      "id" : "Patient.address.country",
      "path" : "Patient.address.country",
      "mapping" : [{
        "identity" : "at-core-mapping-patient2cdaatv3",
        "map" : ".addr.country.dataString"
      }]
    },
    {
      "id" : "Patient.maritalStatus.coding.system",
      "path" : "Patient.maritalStatus.coding.system",
      "mapping" : [{
        "identity" : "at-core-mapping-patient2cdaatv3",
        "map" : ".patient.maritalStatusCode.codeSystem"
      }]
    },
    {
      "id" : "Patient.maritalStatus.coding.code",
      "path" : "Patient.maritalStatus.coding.code",
      "mapping" : [{
        "identity" : "at-core-mapping-patient2cdaatv3",
        "map" : ".patient.maritalStatusCode.code"
      }]
    },
    {
      "id" : "Patient.maritalStatus.coding.display",
      "path" : "Patient.maritalStatus.coding.display",
      "mapping" : [{
        "identity" : "at-core-mapping-patient2cdaatv3",
        "map" : ".patient.maritalStatusCode.displayName"
      }]
    },
    {
      "id" : "Patient.multipleBirth[x]",
      "path" : "Patient.multipleBirth[x]",
      "slicing" : {
        "discriminator" : [{
          "type" : "type",
          "path" : "$this"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Patient.multipleBirth[x]:multipleBirthBoolean",
      "path" : "Patient.multipleBirth[x]",
      "sliceName" : "multipleBirthBoolean",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "boolean"
      }],
      "mapping" : [{
        "identity" : "at-core-mapping-patient2cdaatv3",
        "map" : "n/a"
      }]
    },
    {
      "id" : "Patient.multipleBirth[x]:multipleBirthInteger",
      "path" : "Patient.multipleBirth[x]",
      "sliceName" : "multipleBirthInteger",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "integer"
      }],
      "mapping" : [{
        "identity" : "at-core-mapping-patient2cdaatv3",
        "map" : "n/a"
      }]
    },
    {
      "id" : "Patient.photo",
      "path" : "Patient.photo",
      "mapping" : [{
        "identity" : "at-core-mapping-patient2cdaatv3",
        "map" : "n/a"
      }]
    },
    {
      "id" : "Patient.contact.relationship.coding.system",
      "path" : "Patient.contact.relationship.coding.system",
      "mapping" : [{
        "identity" : "at-core-mapping-patient2cdaatv3",
        "map" : "ClinicalDocument.participant.where(associatedEntity.classCode='ECON').associatedEntity.code.codeSystem"
      }]
    },
    {
      "id" : "Patient.contact.relationship.coding.code",
      "path" : "Patient.contact.relationship.coding.code",
      "mapping" : [{
        "identity" : "at-core-mapping-patient2cdaatv3",
        "map" : "ClinicalDocument.participant.where(associatedEntity.classCode='ECON').associatedEntity.code.code"
      }]
    },
    {
      "id" : "Patient.contact.relationship.coding.display",
      "path" : "Patient.contact.relationship.coding.display",
      "mapping" : [{
        "identity" : "at-core-mapping-patient2cdaatv3",
        "map" : "ClinicalDocument.participant.where(associatedEntity.classCode='ECON').associatedEntity.code.displayName"
      }]
    },
    {
      "id" : "Patient.contact.name.family",
      "path" : "Patient.contact.name.family",
      "mapping" : [{
        "identity" : "at-core-mapping-patient2cdaatv3",
        "map" : "ClinicalDocument.participant.where(associatedEntity.classCode='ECON').associatedEntity.associatedPerson.name.family"
      }]
    },
    {
      "id" : "Patient.contact.name.given",
      "path" : "Patient.contact.name.given",
      "mapping" : [{
        "identity" : "at-core-mapping-patient2cdaatv3",
        "map" : "ClinicalDocument.participant.where(associatedEntity.classCode='ECON').associatedEntity.associatedPerson.name.given"
      }]
    },
    {
      "id" : "Patient.contact.telecom.system",
      "path" : "Patient.contact.telecom.system",
      "mapping" : [{
        "identity" : "at-core-mapping-patient2cdaatv3",
        "map" : "ClinicalDocument.participant.where(associatedEntity.classCode='ECON').associatedEntity.telecom.system"
      }]
    },
    {
      "id" : "Patient.contact.telecom.value",
      "path" : "Patient.contact.telecom.value",
      "mapping" : [{
        "identity" : "at-core-mapping-patient2cdaatv3",
        "map" : "ClinicalDocument.participant.where(associatedEntity.classCode='ECON').associatedEntity.telecom.value"
      }]
    },
    {
      "id" : "Patient.contact.telecom.use",
      "path" : "Patient.contact.telecom.use",
      "mapping" : [{
        "identity" : "at-core-mapping-patient2cdaatv3",
        "map" : "ClinicalDocument.participant.where(associatedEntity.classCode='ECON').associatedEntity.telecom.use"
      }]
    },
    {
      "id" : "Patient.contact.address",
      "path" : "Patient.contact.address",
      "type" : [{
        "code" : "Address",
        "profile" : ["https://fhir.hl7.at/core/r5/StructureDefinition/at-core-address"]
      }]
    },
    {
      "id" : "Patient.contact.address.use",
      "path" : "Patient.contact.address.use",
      "mapping" : [{
        "identity" : "at-core-mapping-patient2cdaatv3",
        "map" : "ClinicalDocument.participant.where(associatedEntity.classCode='ECON').associatedEntity.addr.use"
      }]
    },
    {
      "id" : "Patient.contact.address.text",
      "path" : "Patient.contact.address.text",
      "mapping" : [{
        "identity" : "at-core-mapping-patient2cdaatv3",
        "map" : "ClinicalDocument.participant.where(associatedEntity.classCode='ECON').associatedEntity.addr.select(streetAddressLine.dataString + ' ' + postalCode.dataString + ' ' + city.dataString + ' ' + country.dataString)"
      }]
    },
    {
      "id" : "Patient.contact.address.line",
      "path" : "Patient.contact.address.line",
      "mapping" : [{
        "identity" : "at-core-mapping-patient2cdaatv3",
        "map" : "ClinicalDocument.participant.where(associatedEntity.classCode='ECON').associatedEntity.addr.streetAddressLine"
      }]
    },
    {
      "id" : "Patient.contact.address.city",
      "path" : "Patient.contact.address.city",
      "mapping" : [{
        "identity" : "at-core-mapping-patient2cdaatv3",
        "map" : "ClinicalDocument.participant.where(associatedEntity.classCode='ECON').associatedEntity.addr.city.dataString"
      }]
    },
    {
      "id" : "Patient.contact.address.state",
      "path" : "Patient.contact.address.state",
      "mapping" : [{
        "identity" : "at-core-mapping-patient2cdaatv3",
        "map" : "ClinicalDocument.participant.where(associatedEntity.classCode='ECON').associatedEntity.addr.state.dataString"
      }]
    },
    {
      "id" : "Patient.contact.address.postalCode",
      "path" : "Patient.contact.address.postalCode",
      "mapping" : [{
        "identity" : "at-core-mapping-patient2cdaatv3",
        "map" : "ClinicalDocument.participant.where(associatedEntity.classCode='ECON').associatedEntity.addr.postalCode.dataString"
      }]
    },
    {
      "id" : "Patient.contact.address.country",
      "path" : "Patient.contact.address.country",
      "mapping" : [{
        "identity" : "at-core-mapping-patient2cdaatv3",
        "map" : "ClinicalDocument.participant.where(associatedEntity.classCode='ECON').associatedEntity.addr.country.dataString"
      }]
    },
    {
      "id" : "Patient.contact.gender",
      "path" : "Patient.contact.gender",
      "mapping" : [{
        "identity" : "at-core-mapping-patient2cdaatv3",
        "map" : "n/a"
      }]
    },
    {
      "id" : "Patient.contact.gender.extension",
      "path" : "Patient.contact.gender.extension",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "url"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Patient.contact.gender.extension:AdministrativeGenderAddition",
      "path" : "Patient.contact.gender.extension",
      "sliceName" : "AdministrativeGenderAddition",
      "short" : "Additional administrative gender (Geschlecht)",
      "definition" : "Additional administrative gender code (Geschlecht) required in Austria that is not covered by the FHIR administrative gender codes. The extension is only applied in case the administrative gender itself is set to 'other' (Ergänzung zu 'other').",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhir.hl7.at/core/r5/StructureDefinition/at-core-ext-gender-administrativeGenderAddition"]
      }]
    },
    {
      "id" : "Patient.contact.organization",
      "path" : "Patient.contact.organization",
      "mapping" : [{
        "identity" : "at-core-mapping-patient2cdaatv3",
        "map" : "ClinicalDocument.participant.where(associatedEntity.classCode='ECON').associatedEntity.scopingOrganization.id[0]"
      }]
    },
    {
      "id" : "Patient.contact.period",
      "path" : "Patient.contact.period",
      "mapping" : [{
        "identity" : "at-core-mapping-patient2cdaatv3",
        "map" : "n/a"
      }]
    },
    {
      "id" : "Patient.communication.language",
      "path" : "Patient.communication.language",
      "mapping" : [{
        "identity" : "at-core-mapping-patient2cdaatv3",
        "map" : ".patient.languageCommunication.languageCode.code"
      }]
    },
    {
      "id" : "Patient.communication.preferred",
      "path" : "Patient.communication.preferred",
      "mapping" : [{
        "identity" : "at-core-mapping-patient2cdaatv3",
        "map" : ".patient.languageCommunication.preferenceInd.value"
      }]
    },
    {
      "id" : "Patient.generalPractitioner",
      "path" : "Patient.generalPractitioner",
      "mapping" : [{
        "identity" : "at-core-mapping-patient2cdaatv3",
        "map" : "ClinicalDocument.participant.where(functionCode='PCP').associatedEntity.id"
      }]
    },
    {
      "id" : "Patient.managingOrganization",
      "path" : "Patient.managingOrganization",
      "mapping" : [{
        "identity" : "at-core-mapping-patient2cdaatv3",
        "map" : "ClinicalDocument.custodian.assignedCustodian.representedCustodianOrganization.id"
      }]
    },
    {
      "id" : "Patient.link.other",
      "path" : "Patient.link.other",
      "mapping" : [{
        "identity" : "at-core-mapping-patient2cdaatv3",
        "map" : "n/a"
      }]
    },
    {
      "id" : "Patient.link.type",
      "path" : "Patient.link.type",
      "mapping" : [{
        "identity" : "at-core-mapping-patient2cdaatv3",
        "map" : "n/a"
      }]
    }]
  }
}

```
