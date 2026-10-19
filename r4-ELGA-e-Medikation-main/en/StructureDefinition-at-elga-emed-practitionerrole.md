# AT ELGA e-Medikation PractitionerRole - ELGA e-Medikation (R4) DRAFT v0.1.0

## Resource Profile: AT ELGA e-Medikation PractitionerRole 

**Usages:**

* Use this Profile: [AT ELGA e-Medikation Medikationsplan-Bundle Medikationsplan](StructureDefinition-at-elga-emed-bundle-medikationsplan.md)
* Refer to this Profile: [AT ELGA e-Medikation List Medikationsplan](StructureDefinition-at-elga-emed-list-medikationsplan.md), [AT ELGA e-Medikation MedicationDispense Durchgeführte Abgabe](StructureDefinition-at-elga-emed-medicationdispense-durchgefuehrteabgabe.md), [At ELGA e-Medikation MedicationRequest Geplante Abgabe](StructureDefinition-at-elga-emed-medicationrequest-geplanteabgabe.md) and [At ELGA e-Medikation MedicationRequest Planeintrag](StructureDefinition-at-elga-emed-medicationrequest-planeintrag.md)
* Examples for this Profile: [PractitionerRole/At-Emed-Example-PractitionerRole-01](PractitionerRole-At-Emed-Example-PractitionerRole-01.md), [PractitionerRole/At-Emed-Example-PractitionerRole-02](PractitionerRole-At-Emed-Example-PractitionerRole-02.md), [PractitionerRole/At-Emed-Example-PractitionerRole-03](PractitionerRole-At-Emed-Example-PractitionerRole-03.md) and [PractitionerRole/At-Emed-Example-PractitionerRole-04](PractitionerRole-At-Emed-Example-PractitionerRole-04.md)

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
  "date" : "2026-10-19T16:11:48+00:00",
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
      "id" : "PractitionerRole",
      "path" : "PractitionerRole"
    }]
  }
}

```
