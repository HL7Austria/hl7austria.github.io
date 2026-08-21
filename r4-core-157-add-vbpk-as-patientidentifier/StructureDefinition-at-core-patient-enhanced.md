# HL7.AT.FHIR.CORE.R4\HL7® AT Core Patient Profile - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HL7® AT Core Patient Profile**

## Resource Profile: HL7® AT Core Patient Profile 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/core/r4/StructureDefinition/at-core-patient-enhanced | *Version*:2.1.0 | |
| Active as of 2026-08-21 | *Responsible:*[HL7® Austria, TC FHIR®](https://hl7.at/technische-komitees/tc-fhir/) | *Computable Name*:HL7ATCorePatientEnhanced |

 
HL7® Austria FHIR® Core Profile for patient data in Austria. The HL7® AT Core Patient is based upon the core FHIR® Patient Resource and designed to meet the applicable patient demographic data elements in Austria. It identifies which core elements, extensions, vocabularies and value sets SHALL be present in the resource when using this profile. Note, this extension represents the common structure of Patient information within Austrian information systems. 

**Usages:**

* Examples for this Profile: [Patient/PatientExample01](Patient-PatientExample01.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.core.r4|current/StructureDefinition/StructureDefinition-at-core-patient-enhanced.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-core-patient-enhanced.csv), [Excel](StructureDefinition-at-core-patient-enhanced.xlsx), [Schematron](StructureDefinition-at-core-patient-enhanced.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-core-patient-enhanced",
  "url" : "https://fhir.hl7.at/core/r4/StructureDefinition/at-core-patient-enhanced",
  "version" : "2.1.0",
  "name" : "HL7ATCorePatientEnhanced",
  "title" : "HL7® AT Core Patient Profile",
  "status" : "active",
  "date" : "2026-08-21T10:22:16+00:00",
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
  "description" : "HL7® Austria FHIR® Core Profile for patient data in Austria.\nThe HL7® AT Core Patient is based upon the core FHIR® Patient Resource and designed to meet the applicable patient demographic data elements in Austria. It identifies which core elements, extensions, vocabularies and value sets SHALL be present in the resource when using this profile. Note, this extension represents the common structure of Patient information within Austrian information systems.",
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
      "id" : "Patient",
      "path" : "Patient"
    },
    {
      "id" : "Patient.identifier",
      "path" : "Patient.identifier",
      "min" : 2
    },
    {
      "id" : "Patient.identifier:vbPK",
      "path" : "Patient.identifier",
      "sliceName" : "vbPK"
    },
    {
      "id" : "Patient.identifier:vbPK.system",
      "path" : "Patient.identifier.system",
      "binding" : {
        "strength" : "required",
        "valueSet" : "https://fhir.hl7.at/core/r4/ValueSet/TestValueSet"
      }
    },
    {
      "id" : "Patient.identifier:vbPKGH",
      "path" : "Patient.identifier",
      "sliceName" : "vbPKGH",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Patient.identifier:vbPKGH.type.coding.system",
      "path" : "Patient.identifier.type.coding.system",
      "fixedUri" : "http://terminology.hl7.org/CodeSystem/v2-0203"
    },
    {
      "id" : "Patient.identifier:vbPKGH.type.coding.code",
      "path" : "Patient.identifier.type.coding.code",
      "min" : 1,
      "fixedCode" : "ANON"
    },
    {
      "id" : "Patient.identifier:vbPKGH.system",
      "path" : "Patient.identifier.system",
      "min" : 1,
      "fixedUri" : "urn:oid:1.2.40.0.34.4.22.1"
    },
    {
      "id" : "Patient.identifier:vbPKSV",
      "path" : "Patient.identifier",
      "sliceName" : "vbPKSV",
      "min" : 1,
      "max" : "1"
    },
    {
      "id" : "Patient.identifier:vbPKSV.type.coding.system",
      "path" : "Patient.identifier.type.coding.system",
      "fixedUri" : "http://terminology.hl7.org/CodeSystem/v2-0203"
    },
    {
      "id" : "Patient.identifier:vbPKSV.type.coding.code",
      "path" : "Patient.identifier.type.coding.code",
      "min" : 1,
      "fixedCode" : "ANON"
    },
    {
      "id" : "Patient.identifier:vbPKSV.system",
      "path" : "Patient.identifier.system",
      "min" : 1,
      "fixedUri" : "urn:oid:1.2.40.0.34.4.22.2"
    }]
  }
}

```
