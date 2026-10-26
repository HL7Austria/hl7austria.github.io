# AT ELGA e-Medikation Organization - ELGA e-Medikation (R4) DRAFT v0.1.0

## Resource Profile: AT ELGA e-Medikation Organization 

**Usages:**

* Refer to this Profile: [AT ELGA e-Medikation PractitionerRole](StructureDefinition-at-elga-emed-practitionerrole.md)
* Examples for this Profile: [Organization/At-Emed-Example-Organization-01](Organization-At-Emed-Example-Organization-01.md), [Amadeus Apotheke](Organization-At-Emed-Example-Organization-02.md), [Amadeus Apotheke](Organization-At-Emed-Example-Organization-03.md) and [Organization/At-Emed-Example-Organization-04](Organization-At-Emed-Example-Organization-04.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.elga.emed.r4|current/StructureDefinition/StructureDefinition-at-elga-emed-organization.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-at-elga-emed-organization.csv), [Excel](../StructureDefinition-at-elga-emed-organization.xlsx), [Schematron](../StructureDefinition-at-elga-emed-organization.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-elga-emed-organization",
  "url" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-organization",
  "version" : "0.1.0",
  "name" : "AtElgaEmedOrganization",
  "title" : "AT ELGA e-Medikation Organization",
  "status" : "draft",
  "date" : "2026-10-26T12:04:07+00:00",
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
  "description" : "Profil für die Struktur von Organisationen",
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
  "baseDefinition" : "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-organization",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Organization",
      "path" : "Organization"
    },
    {
      "id" : "Organization.identifier",
      "path" : "Organization.identifier",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier:GDA-OID",
      "path" : "Organization.identifier",
      "sliceName" : "GDA-OID",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier:GDA-OID.use",
      "path" : "Organization.identifier.use",
      "short" : "Fachliche Begründung: TODO",
      "max" : "0"
    },
    {
      "id" : "Organization.identifier:GDA-OID.system",
      "path" : "Organization.identifier.system",
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier:GDA-OID.value",
      "path" : "Organization.identifier.value",
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier:VPNR",
      "path" : "Organization.identifier",
      "sliceName" : "VPNR",
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier:VPNR.use",
      "path" : "Organization.identifier.use",
      "short" : "Fachliche Begründung: TODO",
      "max" : "0"
    },
    {
      "id" : "Organization.identifier:VPNR.system",
      "path" : "Organization.identifier.system",
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier:VPNR.value",
      "path" : "Organization.identifier.value",
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier:VKZ",
      "path" : "Organization.identifier",
      "sliceName" : "VKZ",
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier:VKZ.use",
      "path" : "Organization.identifier.use",
      "short" : "Fachliche Begründung: TODO",
      "max" : "0"
    },
    {
      "id" : "Organization.identifier:VKZ.system",
      "path" : "Organization.identifier.system",
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier:VKZ.value",
      "path" : "Organization.identifier.value",
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier:KANR",
      "path" : "Organization.identifier",
      "sliceName" : "KANR",
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier:KANR.use",
      "path" : "Organization.identifier.use",
      "short" : "Fachliche Begründung: TODO",
      "max" : "0"
    },
    {
      "id" : "Organization.identifier:KANR.system",
      "path" : "Organization.identifier.system",
      "mustSupport" : true
    },
    {
      "id" : "Organization.identifier:KANR.value",
      "path" : "Organization.identifier.value",
      "mustSupport" : true
    },
    {
      "id" : "Organization.type",
      "path" : "Organization.type",
      "mustSupport" : true
    },
    {
      "id" : "Organization.type.coding",
      "path" : "Organization.type.coding",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Organization.type.coding.system",
      "path" : "Organization.type.coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Organization.type.coding.version",
      "path" : "Organization.type.coding.version",
      "mustSupport" : true
    },
    {
      "id" : "Organization.type.coding.code",
      "path" : "Organization.type.coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Organization.type.coding.display",
      "path" : "Organization.type.coding.display",
      "mustSupport" : true
    },
    {
      "id" : "Organization.type.text",
      "path" : "Organization.type.text",
      "short" : "Fachliche Begründung: TODO",
      "max" : "0"
    },
    {
      "id" : "Organization.contact",
      "path" : "Organization.contact",
      "mustSupport" : true
    },
    {
      "id" : "Organization.contact.address",
      "path" : "Organization.contact.address",
      "mustSupport" : true
    },
    {
      "id" : "Organization.contact.address.use",
      "path" : "Organization.contact.address.use",
      "mustSupport" : true
    },
    {
      "id" : "Organization.contact.address.line",
      "path" : "Organization.contact.address.line",
      "mustSupport" : true
    },
    {
      "id" : "Organization.contact.address.line.extension:street",
      "path" : "Organization.contact.address.line.extension",
      "sliceName" : "street"
    },
    {
      "id" : "Organization.contact.address.line.extension:street.url",
      "path" : "Organization.contact.address.line.extension.url",
      "mustSupport" : true
    },
    {
      "id" : "Organization.contact.address.line.extension:street.value[x]",
      "path" : "Organization.contact.address.line.extension.value[x]",
      "mustSupport" : true
    },
    {
      "id" : "Organization.contact.address.line.extension:streetNumber",
      "path" : "Organization.contact.address.line.extension",
      "sliceName" : "streetNumber"
    },
    {
      "id" : "Organization.contact.address.line.extension:streetNumber.url",
      "path" : "Organization.contact.address.line.extension.url",
      "mustSupport" : true
    },
    {
      "id" : "Organization.contact.address.line.extension:streetNumber.value[x]",
      "path" : "Organization.contact.address.line.extension.value[x]",
      "mustSupport" : true
    },
    {
      "id" : "Organization.contact.address.line.extension:floorDoorNumber",
      "path" : "Organization.contact.address.line.extension",
      "sliceName" : "floorDoorNumber"
    },
    {
      "id" : "Organization.contact.address.line.extension:floorDoorNumber.url",
      "path" : "Organization.contact.address.line.extension.url",
      "mustSupport" : true
    },
    {
      "id" : "Organization.contact.address.line.extension:floorDoorNumber.value[x]",
      "path" : "Organization.contact.address.line.extension.value[x]",
      "mustSupport" : true
    },
    {
      "id" : "Organization.contact.address.line.extension:additionalInformation",
      "path" : "Organization.contact.address.line.extension",
      "sliceName" : "additionalInformation"
    },
    {
      "id" : "Organization.contact.address.line.extension:additionalInformation.url",
      "path" : "Organization.contact.address.line.extension.url",
      "mustSupport" : true
    },
    {
      "id" : "Organization.contact.address.line.extension:additionalInformation.value[x]",
      "path" : "Organization.contact.address.line.extension.value[x]",
      "mustSupport" : true
    },
    {
      "id" : "Organization.contact.address.city",
      "path" : "Organization.contact.address.city",
      "mustSupport" : true
    },
    {
      "id" : "Organization.contact.address.state",
      "path" : "Organization.contact.address.state",
      "mustSupport" : true
    },
    {
      "id" : "Organization.contact.address.postalCode",
      "path" : "Organization.contact.address.postalCode",
      "mustSupport" : true
    },
    {
      "id" : "Organization.contact.address.country",
      "path" : "Organization.contact.address.country",
      "mustSupport" : true
    }]
  }
}

```
