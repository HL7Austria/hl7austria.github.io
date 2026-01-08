# HL7.AT.FHIR.CORE.R5\HL7® AT Core Organization Profile - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **HL7® AT Core Organization Profile**

## Resource Profile: HL7® AT Core Organization Profile 

| | | |
| :--- | :--- | :--- |
| *Official URL*:http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-organization | *Version*:2.1.0 | |
| Active as of 2025-11-27 | *Responsible:*[HL7® Austria, TC FHIR®](https://hl7.at/technische-komitees/tc-fhir/) | *Computable Name*:HL7ATCoreOrganization |

 
HL7® Austria FHIR® Core Profile for organization data in Austria. 

The goal of this profile is to cover all kind of organizations that are active in the Austrian healthcare domain. Most of the organizations in healthcare are commonly called “Gesundheitsdienstleistungsanbieter (GDA)” (in English: Healthcare Service Provider). This German abbreviation is therefore used throughout this profile where it is relevant. Austrian organizations are usually identified with one or more of the following identifiers:

* The “GDA OID” which is maintained in the Austrian GDA-Index.
* A “Vertragspartnernummer (VPNR)“ which is an identifier provided by the Federation of Austrian Social Insurances.
* A “Verwaltungskennzeichen (VKZ)” which is an identifier used for the Austrian e-Government process.
* A "Krankenanstaltennummer (KA-Nr)" which is an identifier specifically for hospitals in Austria

**Usages:**

* Refer to this Profile: [HL7® AT Core ExtendedContactDetail Profile](StructureDefinition-at-core-extendedContactDetail.md), [HL7® AT Core Location Profile](StructureDefinition-at-core-location.md) and [HL7® AT Core PractitionerRole Profile](StructureDefinition-at-core-practitionerRole.md)
* Examples for this Profile: [Amadeus Spital](Organization-HL7ATCoreOrganizationExample01.md) and [Landeskrankenhaus Hall in Tirol](Organization-HL7ATCoreOrganizationExample02-MultipleVPNR.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.at.fhir.core.r5|current/StructureDefinition/at-core-organization)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-core-organization.csv), [Excel](StructureDefinition-at-core-organization.xlsx), [Schematron](StructureDefinition-at-core-organization.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-core-organization",
  "url" : "http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-organization",
  "version" : "2.1.0",
  "name" : "HL7ATCoreOrganization",
  "title" : "HL7® AT Core Organization Profile",
  "status" : "active",
  "date" : "2025-11-27T09:10:20+00:00",
  "publisher" : "HL7® Austria, TC FHIR®",
  "contact" : [
    {
      "name" : "HL7® Austria, TC FHIR®",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://hl7.at/technische-komitees/tc-fhir/"
        }
      ]
    },
    {
      "name" : "Technical Committee for FHIR® at HL7® Austria",
      "telecom" : [
        {
          "system" : "email",
          "value" : "mailto:tc-fhir@hl7.at"
        }
      ]
    }
  ],
  "description" : "HL7® Austria FHIR® Core Profile for organization data in Austria.",
  "fhirVersion" : "5.0.0",
  "mapping" : [
    {
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
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Organization",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Organization",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Organization",
        "path" : "Organization"
      },
      {
        "id" : "Organization.identifier",
        "path" : "Organization.identifier",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "system"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "Organization.identifier:GDA-OID",
        "path" : "Organization.identifier",
        "sliceName" : "GDA-OID",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Organization.identifier:GDA-OID.system",
        "path" : "Organization.identifier.system",
        "short" : "A GDA in Austria is represented via an URI (OID)",
        "min" : 1,
        "fixedUri" : "urn:ietf:rfc:3986"
      },
      {
        "id" : "Organization.identifier:GDA-OID.value",
        "path" : "Organization.identifier.value",
        "short" : "OID for the GDA in Austria",
        "min" : 1
      },
      {
        "id" : "Organization.identifier:GDA-OID.assigner.display",
        "path" : "Organization.identifier.assigner.display",
        "fixedString" : "Bundesministerium für Gesundheit"
      },
      {
        "id" : "Organization.identifier:VPNR",
        "path" : "Organization.identifier",
        "sliceName" : "VPNR",
        "min" : 0,
        "max" : "*"
      },
      {
        "id" : "Organization.identifier:VPNR.system",
        "path" : "Organization.identifier.system",
        "short" : "OID for the Vertragspartnernummer (VPNR) in Austria",
        "min" : 1,
        "fixedUri" : "urn:oid:1.2.40.0.10.1.4.3.2"
      },
      {
        "id" : "Organization.identifier:VPNR.value",
        "path" : "Organization.identifier.value",
        "min" : 1
      },
      {
        "id" : "Organization.identifier:VPNR.assigner.display",
        "path" : "Organization.identifier.assigner.display",
        "fixedString" : "Dachverband der österreichischen Sozialversicherungsträger"
      },
      {
        "id" : "Organization.identifier:VKZ",
        "path" : "Organization.identifier",
        "sliceName" : "VKZ",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Organization.identifier:VKZ.system",
        "path" : "Organization.identifier.system",
        "short" : "OID for the Verwaltungskennzeichen (VKZ) in Austria",
        "min" : 1,
        "fixedUri" : "urn:oid:1.2.40.0.10.2.1.1.71"
      },
      {
        "id" : "Organization.identifier:VKZ.value",
        "path" : "Organization.identifier.value",
        "min" : 1
      },
      {
        "id" : "Organization.identifier:VKZ.assigner.display",
        "path" : "Organization.identifier.assigner.display",
        "fixedString" : "Bundesministerium für Finanzen"
      },
      {
        "id" : "Organization.identifier:KANR",
        "path" : "Organization.identifier",
        "sliceName" : "KANR",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Organization.identifier:KANR.system",
        "path" : "Organization.identifier.system",
        "short" : "OID for the Krankenanstaltennummer (KA-Nr) in Austria",
        "min" : 1,
        "fixedUri" : "urn:oid:1.2.40.0.34.4.10"
      },
      {
        "id" : "Organization.identifier:KANR.value",
        "path" : "Organization.identifier.value",
        "short" : "Krankenanstaltennummer according to Krankenanstaltenkataster. Virtual KANRs are suffixed with '+' (e.g. 'K101+')",
        "min" : 1
      },
      {
        "id" : "Organization.identifier:KANR.assigner.display",
        "path" : "Organization.identifier.assigner.display",
        "fixedString" : "Österreichisches Bundesministerium für Gesundheit"
      },
      {
        "id" : "Organization.type",
        "path" : "Organization.type",
        "binding" : {
          "strength" : "extensible",
          "valueSet" : "https://termgit.elga.gv.at/ValueSet/hl7-at-organizationtype"
        }
      },
      {
        "id" : "Organization.contact",
        "path" : "Organization.contact",
        "type" : [
          {
            "code" : "ExtendedContactDetail",
            "profile" : [
              "http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-extendedContactDetail"
            ]
          }
        ]
      }
    ]
  }
}

```
