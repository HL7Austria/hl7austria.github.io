# AT ELGA e-Medikation PractitionerRole - ELGA e-Medikation (R4) DRAFT v0.1.0

## Resource Profile: AT ELGA e-Medikation PractitionerRole 

**Usages:**

* Use this Profile: [AT ELGA e-Medikation Searchset Bundle GroupIdentifier-Search](StructureDefinition-at-elga-emed-bundle-groupidentifier-search-result.md) and [AT ELGA e-Medikation Medikationsplan-Bundle Medikationsplan](StructureDefinition-at-elga-emed-bundle-medikationsplan.md)
* Refer to this Profile: [AT ELGA e-Medikation List Medikationsplan](StructureDefinition-at-elga-emed-list-medikationsplan.md), [AT ELGA e-Medikation MedicationDispense Durchgeführte Abgabe](StructureDefinition-at-elga-emed-medicationdispense-durchgefuehrteabgabe.md), [At ELGA e-Medikation MedicationRequest Geplante Abgabe](StructureDefinition-at-elga-emed-medicationrequest-geplanteabgabe.md) and [At ELGA e-Medikation MedicationRequest Planeintrag](StructureDefinition-at-elga-emed-medicationrequest-planeintrag.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.elga.emed.r4|current/StructureDefinition/StructureDefinition-at-elga-emed-practitionerrole.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-at-elga-emed-practitionerrole.csv), [Excel](../StructureDefinition-at-elga-emed-practitionerrole.xlsx), [Schematron](../StructureDefinition-at-elga-emed-practitionerrole.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-elga-emed-practitionerrole",
  "url" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-practitionerrole",
  "version" : "0.1.0",
  "name" : "AtElgaEmedPractitionerRole",
  "title" : "AT ELGA e-Medikation PractitionerRole",
  "status" : "draft",
  "date" : "2026-10-29T07:35:42+00:00",
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
  "description" : "Profil für die Struktur der PractitionerRole Ressource",
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
  "type" : "PractitionerRole",
  "baseDefinition" : "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-practitionerRole",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "PractitionerRole.practitioner",
      "path" : "PractitionerRole.practitioner",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-practitioner"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.practitioner.reference",
      "path" : "PractitionerRole.practitioner.reference",
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.organization",
      "path" : "PractitionerRole.organization",
      "type" : [{
        "code" : "Reference",
        "targetProfile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-organization"]
      }],
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.organization.reference",
      "path" : "PractitionerRole.organization.reference",
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.code",
      "path" : "PractitionerRole.code",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.code.coding",
      "path" : "PractitionerRole.code.coding",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.code.coding.system",
      "path" : "PractitionerRole.code.coding.system",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.code.coding.version",
      "path" : "PractitionerRole.code.coding.version",
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.code.coding.code",
      "path" : "PractitionerRole.code.coding.code",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.code.coding.display",
      "path" : "PractitionerRole.code.coding.display",
      "mustSupport" : true
    },
    {
      "id" : "PractitionerRole.code.text",
      "path" : "PractitionerRole.code.text",
      "max" : "0"
    }]
  }
}

```
