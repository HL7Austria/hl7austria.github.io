# HL7.AT.FHIR.CORE.R5\HL7® AT Core Practitioner Profile - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HL7® AT Core Practitioner Profile**

## Resource Profile: HL7® AT Core Practitioner Profile 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/core/r5/StructureDefinition/at-core-practitioner | *Version*:2.1.0 | |
| Active as of 2026-08-11 | *Responsible:*[HL7® Austria, TC FHIR®](https://hl7.at/technische-komitees/tc-fhir/) | *Computable Name*:HL7ATCorePractitioner |

 
HL7® Austria FHIR® Core Profile for practitioner data in Austria. 

In Austria, practitioners in healthcare are commonly called “Gesundheitsdienstleistungsanbieter (GDA)” (in English: Healthcare Service Provider). This German abbreviation is therefore used throughout this profile. Austrian GDAs are usually identified with one or more of the following identifiers:

* The “GDA OID” which is maintained in the Austrian GDA-Index.
* A “Vertragspartnernummer (VPNR)“ which is an identifier provided by the Federation of Austrian Social Insurances.
* A “ Verschlüsseltes bereichsspezifisches Personenkennzeichen (vbPK)” which is an encrypted personal unique identifier used for practitioners.

**Usages:**

* Refer to this Profile: [HL7® AT Core PractitionerRole Profile](StructureDefinition-at-core-practitionerRole.md)
* Examples for this Profile: [Practitioner/HL7ATCorePractitionerExample01](Practitioner-HL7ATCorePractitionerExample01.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.core.r5|current/StructureDefinition/StructureDefinition-at-core-practitioner.json)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-core-practitioner.csv), [Excel](StructureDefinition-at-core-practitioner.xlsx), [Schematron](StructureDefinition-at-core-practitioner.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-core-practitioner",
  "url" : "https://fhir.hl7.at/core/r5/StructureDefinition/at-core-practitioner",
  "version" : "2.1.0",
  "name" : "HL7ATCorePractitioner",
  "title" : "HL7® AT Core Practitioner Profile",
  "status" : "active",
  "date" : "2026-08-11T21:17:19+00:00",
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
  "description" : "HL7® Austria FHIR® Core Profile for practitioner data in Austria.",
  "fhirVersion" : "5.0.0",
  "mapping" : [{
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 V2 Mapping"
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
    "identity" : "servd",
    "uri" : "http://www.omg.org/spec/ServD/1.0/",
    "name" : "ServD"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Practitioner",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Practitioner",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Practitioner",
      "path" : "Practitioner"
    },
    {
      "id" : "Practitioner.identifier",
      "path" : "Practitioner.identifier",
      "slicing" : {
        "discriminator" : [{
          "type" : "value",
          "path" : "system"
        }],
        "ordered" : false,
        "rules" : "open"
      }
    },
    {
      "id" : "Practitioner.identifier.type",
      "path" : "Practitioner.identifier.type",
      "binding" : {
        "strength" : "extensible",
        "valueSet" : "https://termgit.elga.gv.at/ValueSet/hl7-at-patientidentifier"
      }
    },
    {
      "id" : "Practitioner.identifier:GDA-OID",
      "path" : "Practitioner.identifier",
      "sliceName" : "GDA-OID",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Practitioner.identifier:GDA-OID.system",
      "path" : "Practitioner.identifier.system",
      "short" : "A GDA in Austria is represented via an URI (OID)",
      "min" : 1,
      "fixedUri" : "urn:ietf:rfc:3986"
    },
    {
      "id" : "Practitioner.identifier:GDA-OID.value",
      "path" : "Practitioner.identifier.value",
      "short" : "OID for the GDA in Austria",
      "min" : 1
    },
    {
      "id" : "Practitioner.identifier:GDA-OID.assigner.display",
      "path" : "Practitioner.identifier.assigner.display",
      "fixedString" : "Bundesministerium für Gesundheit"
    },
    {
      "id" : "Practitioner.identifier:VPNR",
      "path" : "Practitioner.identifier",
      "sliceName" : "VPNR",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Practitioner.identifier:VPNR.system",
      "path" : "Practitioner.identifier.system",
      "short" : "OID for the Vertragspartnernummer (VPNR) in Austria",
      "min" : 1,
      "fixedUri" : "urn:oid:1.2.40.0.10.1.4.3.2"
    },
    {
      "id" : "Practitioner.identifier:VPNR.value",
      "path" : "Practitioner.identifier.value",
      "min" : 1
    },
    {
      "id" : "Practitioner.identifier:VPNR.assigner.display",
      "path" : "Practitioner.identifier.assigner.display",
      "fixedString" : "Dachverband der österreichischen Sozialversicherungsträger"
    },
    {
      "id" : "Practitioner.identifier:vbPK",
      "path" : "Practitioner.identifier",
      "sliceName" : "vbPK",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Practitioner.identifier:vbPK.system",
      "path" : "Practitioner.identifier.system",
      "short" : "OID for the vbPK in Austria",
      "min" : 1,
      "fixedUri" : "urn:oid:1.2.40.0.34.4.22"
    },
    {
      "id" : "Practitioner.identifier:vbPK.value",
      "path" : "Practitioner.identifier.value",
      "min" : 1
    },
    {
      "id" : "Practitioner.identifier:vbPK.assigner.display",
      "path" : "Practitioner.identifier.assigner.display",
      "fixedString" : "Bundesministerium für Inneres"
    },
    {
      "id" : "Practitioner.gender.extension",
      "path" : "Practitioner.gender.extension",
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
      "id" : "Practitioner.gender.extension:AdministrativeGenderAddition",
      "path" : "Practitioner.gender.extension",
      "sliceName" : "AdministrativeGenderAddition",
      "min" : 0,
      "max" : "1",
      "type" : [{
        "code" : "Extension",
        "profile" : ["https://fhir.hl7.at/core/r5/StructureDefinition/at-core-ext-gender-administrativeGenderAddition"]
      }]
    },
    {
      "id" : "Practitioner.address",
      "path" : "Practitioner.address",
      "type" : [{
        "code" : "Address",
        "profile" : ["https://fhir.hl7.at/core/r5/StructureDefinition/at-core-address"]
      }]
    }]
  }
}

```
