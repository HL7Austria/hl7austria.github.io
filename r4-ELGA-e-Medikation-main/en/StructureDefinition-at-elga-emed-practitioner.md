# AT ELGA e-Medikation Practitioner - ELGA e-Medikation (R4) DRAFT v0.1.0

## Resource Profile: AT ELGA e-Medikation Practitioner 

Dieser Teil der Spezifikation wird noch erarbeitet und im nächsten Ballot zur Verfügung gestellt.

Die Übersetzungen der `short-descriptions` werden noch erarbeitet und im nächsten Ballot zur Verfügung gestellt.

**Usages:**

* Use this Profile: [AT ELGA e-Medikation Searchset Bundle GroupIdentifier-Search](StructureDefinition-at-elga-emed-bundle-groupidentifier-search-result.md) and [AT ELGA e-Medikation Medikationsplan-Bundle Medikationsplan](StructureDefinition-at-elga-emed-bundle-medikationsplan.md)
* Refer to this Profile: [AT ELGA e-Medikation List Medikationsplan](StructureDefinition-at-elga-emed-list-medikationsplan.md), [AT ELGA e-Medikation MedicationDispense Durchgeführte Abgabe](StructureDefinition-at-elga-emed-medicationdispense-durchgefuehrteabgabe.md), [At ELGA e-Medikation MedicationRequest Geplante Abgabe](StructureDefinition-at-elga-emed-medicationrequest-geplanteabgabe.md), [At ELGA e-Medikation MedicationRequest Planeintrag](StructureDefinition-at-elga-emed-medicationrequest-planeintrag.md) and [AT ELGA e-Medikation PractitionerRole](StructureDefinition-at-elga-emed-practitionerrole.md)
* Examples for this Profile: [Practitioner/At-Emed-Example-Practitioner-01](Practitioner-At-Emed-Example-Practitioner-01.md), [Practitioner/At-Emed-Example-Practitioner-02](Practitioner-At-Emed-Example-Practitioner-02.md), [Practitioner/At-Emed-Example-Practitioner-03](Practitioner-At-Emed-Example-Practitioner-03.md) and [Practitioner/At-Emed-Example-Practitioner-04](Practitioner-At-Emed-Example-Practitioner-04.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.elga.emed.r4|current/StructureDefinition/StructureDefinition-at-elga-emed-practitioner.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-at-elga-emed-practitioner.csv), [Excel](../StructureDefinition-at-elga-emed-practitioner.xlsx), [Schematron](../StructureDefinition-at-elga-emed-practitioner.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-elga-emed-practitioner",
  "url" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-practitioner",
  "version" : "0.1.0",
  "name" : "AtElgaEmedPractitioner",
  "title" : "AT ELGA e-Medikation Practitioner",
  "status" : "draft",
  "date" : "2026-10-29T14:20:15+00:00",
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
  "description" : "Profil für die Struktur der Practitioner Ressource",
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
  "type" : "Practitioner",
  "baseDefinition" : "http://hl7.at/fhir/HL7ATCoreProfiles/4.0.1/StructureDefinition/at-core-practitioner",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Practitioner.id",
      "path" : "Practitioner.id",
      "short" : "Technische id der Ressource",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.meta",
      "path" : "Practitioner.meta",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.meta.profile",
      "path" : "Practitioner.meta.profile",
      "min" : 1,
      "max" : "1",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.implicitRules",
      "path" : "Practitioner.implicitRules",
      "short" : "Fachliche Begründung: Die Ressource wird nach den Regeln dieses Implementierungsleitfadens interpretiert. Zusätzliche implizite Verarbeitungsregeln werden nicht verwendet.",
      "max" : "0"
    },
    {
      "id" : "Practitioner.text",
      "path" : "Practitioner.text",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.text.status",
      "path" : "Practitioner.text.status",
      "short" : "Siehe Notes - \"Regeln für den Inhalt der narrativen Teile in den Notes\".",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.text.div",
      "path" : "Practitioner.text.div",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.modifierExtension",
      "path" : "Practitioner.modifierExtension",
      "short" : "Fachliche Begründung: Für den Medikationsplan sind keine zusätzlichen Erweiterungen vorgesehen, die die Bedeutung der Ressource oder ihrer Elemente verändern.",
      "max" : "0"
    },
    {
      "id" : "Practitioner.identifier",
      "path" : "Practitioner.identifier",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.identifier:GDA-OID",
      "path" : "Practitioner.identifier",
      "sliceName" : "GDA-OID",
      "min" : 1,
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.identifier:GDA-OID.use",
      "path" : "Practitioner.identifier.use",
      "max" : "0"
    },
    {
      "id" : "Practitioner.identifier:GDA-OID.system",
      "path" : "Practitioner.identifier.system",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.identifier:GDA-OID.value",
      "path" : "Practitioner.identifier.value",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.identifier:VPNR",
      "path" : "Practitioner.identifier",
      "sliceName" : "VPNR",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.identifier:VPNR.use",
      "path" : "Practitioner.identifier.use",
      "max" : "0"
    },
    {
      "id" : "Practitioner.identifier:VPNR.system",
      "path" : "Practitioner.identifier.system",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.identifier:VPNR.value",
      "path" : "Practitioner.identifier.value",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.name",
      "path" : "Practitioner.name",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.name.use",
      "path" : "Practitioner.name.use",
      "max" : "0"
    },
    {
      "id" : "Practitioner.name.family",
      "path" : "Practitioner.name.family",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.name.given",
      "path" : "Practitioner.name.given",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.name.prefix",
      "path" : "Practitioner.name.prefix",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.name.suffix",
      "path" : "Practitioner.name.suffix",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.address",
      "path" : "Practitioner.address",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.address.use",
      "path" : "Practitioner.address.use",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.address.line",
      "path" : "Practitioner.address.line",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.address.line.extension:street",
      "path" : "Practitioner.address.line.extension",
      "sliceName" : "street",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.address.line.extension:street.url",
      "path" : "Practitioner.address.line.extension.url",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.address.line.extension:street.value[x]",
      "path" : "Practitioner.address.line.extension.value[x]",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.address.line.extension:streetNumber",
      "path" : "Practitioner.address.line.extension",
      "sliceName" : "streetNumber",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.address.line.extension:streetNumber.url",
      "path" : "Practitioner.address.line.extension.url",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.address.line.extension:streetNumber.value[x]",
      "path" : "Practitioner.address.line.extension.value[x]",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.address.line.extension:floorDoorNumber",
      "path" : "Practitioner.address.line.extension",
      "sliceName" : "floorDoorNumber",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.address.line.extension:floorDoorNumber.url",
      "path" : "Practitioner.address.line.extension.url",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.address.line.extension:floorDoorNumber.value[x]",
      "path" : "Practitioner.address.line.extension.value[x]",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.address.line.extension:additionalInformation",
      "path" : "Practitioner.address.line.extension",
      "sliceName" : "additionalInformation",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.address.line.extension:additionalInformation.url",
      "path" : "Practitioner.address.line.extension.url",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.address.line.extension:additionalInformation.value[x]",
      "path" : "Practitioner.address.line.extension.value[x]",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.address.city",
      "path" : "Practitioner.address.city",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.address.state",
      "path" : "Practitioner.address.state",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.address.postalCode",
      "path" : "Practitioner.address.postalCode",
      "mustSupport" : true
    },
    {
      "id" : "Practitioner.address.country",
      "path" : "Practitioner.address.country",
      "mustSupport" : true
    }]
  }
}

```
