# HL7® AT Core Organization Profile - HL7® Austria FHIR® Core Implementation Guide v2.1.0

## Resource Profile: HL7® AT Core Organization Profile 

The goal of this profile is to cover all kind of organizations that are active in the Austrian healthcare domain. Most of the organizations in healthcare are commonly called “Gesundheitsdiensteanbieter (GDA)” (in English: Healthcare Service Provider). This German abbreviation is therefore used throughout this profile where it is relevant. Austrian organizations are usually identified with one or more of the following identifiers:

* The “GDA-OID” which is maintained in the Austrian GDA-Index.
* A “Vertragspartnernummer (VPNR)“ which is an identifier provided by the Federation of Austrian Social Insurances.
* A “Verwaltungskennzeichen (VKZ)” which is an identifier used for the Austrian e-Government process.
* A "Krankenanstaltennummer (KA-Nr)" which is an identifier specifically for hospitals in Austria

**Usages:**

* Refer to this Profile: [HL7® AT Core HealthcareService Profile](StructureDefinition-at-core-HealthcareService.md), [HL7® AT Core Location Profile](StructureDefinition-at-core-location.md) and [HL7® AT Core PractitionerRole Profile](StructureDefinition-at-core-practitionerRole.md)
* Examples for this Profile: [Bildungsverein Perspektiva](Organization-HL7ATCoreOrganizationBildungsvereinPerspektiva.md), [Amadeus Spital](Organization-HL7ATCoreOrganizationExample01.md), [Landeskrankenhaus Hall in Tirol](Organization-HL7ATCoreOrganizationExample02-MultipleVPNR.md), [AlpenData Solutions GmbH](Organization-OrganizationAlpenDataSolutionsGmbH.md)... Show 5 more, [Alpenländische Gesundheitskasse](Organization-OrganizationAlpenlaendischeGesundheitskasse.md), [Abteilung für Innere Medizin – Amadeus Spital](Organization-OrganizationAmadeusSpitalInnereMedizin.md), [Gruppenpraxis Frauenmedizin Sonnenfeld OG](Organization-OrganizationGruppenpraxisFrauenmedizinSonnenfeld.md), [Ordination Dr. Lukas Steiner](Organization-OrganizationOrdinationLukasSteiner.md) and [Gemeindeamt Sonnenfeld](Organization-OrganizationStadtgemeindeSonnenfeld.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.core.r4|current/StructureDefinition/StructureDefinition-at-core-organization.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-at-core-organization.csv), [Excel](../StructureDefinition-at-core-organization.xlsx), [Schematron](../StructureDefinition-at-core-organization.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-core-organization",
  "url" : "https://fhir.hl7.at/core/r4/StructureDefinition/at-core-organization",
  "version" : "2.1.0",
  "name" : "HL7ATCoreOrganization",
  "title" : "HL7® AT Core Organization Profile",
  "status" : "active",
  "date" : "2026-10-20T09:17:47+00:00",
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
  "description" : "HL7® Austria FHIR® Core Profile for organization data in Austria.",
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
    "identity" : "servd",
    "uri" : "http://www.omg.org/spec/ServD/1.0/",
    "name" : "ServD"
  },
  {
    "identity" : "w5",
    "uri" : "http://hl7.org/fhir/fivews",
    "name" : "FiveWs Pattern Mapping"
  }],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Organization",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Organization",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Organization",
      "path" : "Organization"
    },
    {
      "id" : "Organization.identifier",
      "path" : "Organization.identifier",
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
      "id" : "Organization.identifier:GDA-OID",
      "path" : "Organization.identifier",
      "sliceName" : "GDA-OID",
      "short" : "Gesundheitsdiensteanbieter-OID (GDA-OID)",
      "definition" : "The OID of the healthcare service provider (Gesundheitsdiensteanbieter, GDA) as registered in the Austrian GDA-Index. The OID is assigned by the Federal Ministry of Health (Bundesministerium für Gesundheit).",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Organization.identifier:GDA-OID.system",
      "path" : "Organization.identifier.system",
      "short" : "A Gesundheitsdiensteanbieter (GDA) in Austria is represented via a URI (OID)",
      "min" : 1,
      "patternUri" : "urn:ietf:rfc:3986"
    },
    {
      "id" : "Organization.identifier:GDA-OID.value",
      "path" : "Organization.identifier.value",
      "short" : "OID for the Gesundheitsdiensteanbieter (GDA) in Austria",
      "min" : 1
    },
    {
      "id" : "Organization.identifier:GDA-OID.assigner.display",
      "path" : "Organization.identifier.assigner.display",
      "patternString" : "Bundesministerium für Gesundheit"
    },
    {
      "id" : "Organization.identifier:VPNR",
      "path" : "Organization.identifier",
      "sliceName" : "VPNR",
      "short" : "Vertragspartnernummer (VPNR)",
      "definition" : "The contract partner number (Vertragspartnernummer, VPNR) of the organization, assigned by the Federation of Austrian Social Insurances (Dachverband der österreichischen Sozialversicherungsträger).",
      "min" : 0,
      "max" : "*"
    },
    {
      "id" : "Organization.identifier:VPNR.system",
      "path" : "Organization.identifier.system",
      "short" : "OID for the Vertragspartnernummer (VPNR) in Austria",
      "min" : 1,
      "patternUri" : "urn:oid:1.2.40.0.10.1.4.3.2"
    },
    {
      "id" : "Organization.identifier:VPNR.value",
      "path" : "Organization.identifier.value",
      "min" : 1
    },
    {
      "id" : "Organization.identifier:VPNR.assigner.display",
      "path" : "Organization.identifier.assigner.display",
      "patternString" : "Dachverband der österreichischen Sozialversicherungsträger"
    },
    {
      "id" : "Organization.identifier:VKZ",
      "path" : "Organization.identifier",
      "sliceName" : "VKZ",
      "short" : "Verwaltungskennzeichen (VKZ)",
      "definition" : "The administrative identifier (Verwaltungskennzeichen, VKZ) of the organization, used in Austrian e-Government processes and assigned by the Federal Ministry of Finance (Bundesministerium für Finanzen).",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Organization.identifier:VKZ.system",
      "path" : "Organization.identifier.system",
      "short" : "OID for the Verwaltungskennzeichen (VKZ) in Austria",
      "min" : 1,
      "patternUri" : "urn:oid:1.2.40.0.10.2.1.1.71"
    },
    {
      "id" : "Organization.identifier:VKZ.value",
      "path" : "Organization.identifier.value",
      "min" : 1
    },
    {
      "id" : "Organization.identifier:VKZ.assigner.display",
      "path" : "Organization.identifier.assigner.display",
      "patternString" : "Bundesministerium für Finanzen"
    },
    {
      "id" : "Organization.identifier:KANR",
      "path" : "Organization.identifier",
      "sliceName" : "KANR",
      "short" : "Krankenanstaltennummer (KA-Nr)",
      "definition" : "The hospital identification number (Krankenanstaltennummer, KA-Nr) of the organization according to the Austrian hospital register (Krankenanstaltenkataster), assigned by the Federal Ministry of Health (Österreichisches Bundesministerium für Gesundheit). Virtual KA-Nrs are suffixed with '+' (e.g. 'K101+').",
      "min" : 0,
      "max" : "1"
    },
    {
      "id" : "Organization.identifier:KANR.system",
      "path" : "Organization.identifier.system",
      "short" : "OID for the Krankenanstaltennummer (KA-Nr) in Austria",
      "min" : 1,
      "patternUri" : "urn:oid:1.2.40.0.34.4.10"
    },
    {
      "id" : "Organization.identifier:KANR.value",
      "path" : "Organization.identifier.value",
      "short" : "Krankenanstaltennummer according to Krankenanstaltenkataster. Virtual KA-Nrs are suffixed with '+' (e.g. 'K101+')",
      "min" : 1
    },
    {
      "id" : "Organization.identifier:KANR.assigner.display",
      "path" : "Organization.identifier.assigner.display",
      "patternString" : "Österreichisches Bundesministerium für Gesundheit"
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
      "id" : "Organization.address",
      "path" : "Organization.address",
      "type" : [{
        "code" : "Address",
        "profile" : ["https://fhir.hl7.at/core/r4/StructureDefinition/at-core-address"]
      }]
    },
    {
      "id" : "Organization.contact.address",
      "path" : "Organization.contact.address",
      "type" : [{
        "code" : "Address",
        "profile" : ["https://fhir.hl7.at/core/r4/StructureDefinition/at-core-address"]
      }]
    }]
  }
}

```
