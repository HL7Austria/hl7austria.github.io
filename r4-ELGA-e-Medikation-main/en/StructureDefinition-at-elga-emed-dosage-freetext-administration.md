# AT ELGA e-Medikation Freitext-Dosierschema - ELGA e-Medikation (R4) DRAFT v0.1.0

## Data Type Profile: AT ELGA e-Medikation Freitext-Dosierschema 

**Usages:**

* Use this DataType Profile: [AT ELGA e-Medikation MedicationDispense Durchgeführte Abgabe](StructureDefinition-at-elga-emed-medicationdispense-durchgefuehrteabgabe.md) and [At ELGA e-Medikation MedicationRequest Base](StructureDefinition-at-elga-emed-medicationrequest-base.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.elga.emed.r4|current/StructureDefinition/StructureDefinition-at-elga-emed-dosage-freetext-administration.json)

### Formal Views of Profile Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-at-elga-emed-dosage-freetext-administration.csv), [Excel](../StructureDefinition-at-elga-emed-dosage-freetext-administration.xlsx), [Schematron](../StructureDefinition-at-elga-emed-dosage-freetext-administration.sch) 

### Notes:

### Regeln für Dosierungen im Freitext Schema

 Die finale Beschreibung der Regeln für dieses Schema wird noch erarbeitet und im nächsten Ballot zur Verfügung gestellt. Feedback aus der Community ist erwünscht. 

### Bildung der Textdarstellung

 Der finale Algorithmus für die Generierung der menschenlesbaren Textdarstellungen dieses Dosierschemas wird noch erarbeitet und im nächsten Ballot zur Verfügung gestellt. Feedback aus der Community ist erwünscht. 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-elga-emed-dosage-freetext-administration",
  "url" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-dosage-freetext-administration",
  "version" : "0.1.0",
  "name" : "AtElgaEmedDosageFreeTextAdministration",
  "title" : "AT ELGA e-Medikation Freitext-Dosierschema",
  "status" : "draft",
  "date" : "2026-10-29T10:03:24+00:00",
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
  "description" : "Profil für das Freitext-Dosierschema",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  },
  {
    "identity" : "v2",
    "uri" : "http://hl7.org/v2",
    "name" : "HL7 v2 Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "type" : "Dosage",
  "baseDefinition" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-dosage-dosierung",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Dosage.extension:DosageCategory",
      "path" : "Dosage.extension",
      "sliceName" : "DosageCategory"
    },
    {
      "id" : "Dosage.extension:DosageCategory.value[x].coding.code",
      "path" : "Dosage.extension.value[x].coding.code",
      "patternCode" : "freitext"
    },
    {
      "id" : "Dosage.text",
      "path" : "Dosage.text",
      "min" : 1
    },
    {
      "id" : "Dosage.timing",
      "path" : "Dosage.timing",
      "max" : "0"
    },
    {
      "id" : "Dosage.asNeeded[x]",
      "path" : "Dosage.asNeeded[x]",
      "max" : "0"
    }]
  }
}

```
