# HL7.AT.FHIR.ELGA.EMED.R4\AT ELGA e-Medikation Extension Group Identifier - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AT ELGA e-Medikation Extension Group Identifier**

## Extension: AT ELGA e-Medikation Extension Group Identifier 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-extension-group-identifier | *Version*:0.1.0 | |
| Draft as of 2026-09-24 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:AtElgaEmedExtensionGroupIdentifier |

AT ELGA e-Medikation Extension, die den e-Med GroupIdentifier beinhaltet.

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [AT ELGA e-Medikation MedicationDispense Durchgeführte Abgabe](StructureDefinition-at-elga-emed-medicationdispense-durchgefuehrteabgabe.md)
* Examples for this Extension: [Bundle/At-Emed-Journey-02-01-Bundle-Durchgefuehrte-Abgaben-Tx](Bundle-At-Emed-Journey-02-01-Bundle-Durchgefuehrte-Abgaben-Tx.md), [Bundle/At-Emed-Journey-03-01-Bundle-Durchgefuehrte-Abgaben-Tx](Bundle-At-Emed-Journey-03-01-Bundle-Durchgefuehrte-Abgaben-Tx.md), [MedicationDispense/At-Emed-Journey-02-01-Md-Durchgefuehrte-Abgabe-01](MedicationDispense-At-Emed-Journey-02-01-Md-Durchgefuehrte-Abgabe-01.md), [MedicationDispense/At-Emed-Journey-02-01-Md-Durchgefuehrte-Abgabe-02](MedicationDispense-At-Emed-Journey-02-01-Md-Durchgefuehrte-Abgabe-02.md) and [MedicationDispense/At-Emed-Journey-03-01-Md-Durchgefuehrte-Abgabe-02](MedicationDispense-At-Emed-Journey-03-01-Md-Durchgefuehrte-Abgabe-02.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.elga.emed.r4|current/StructureDefinition/StructureDefinition-at-elga-emed-extension-group-identifier.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-elga-emed-extension-group-identifier.csv), [Excel](StructureDefinition-at-elga-emed-extension-group-identifier.xlsx), [Schematron](StructureDefinition-at-elga-emed-extension-group-identifier.sch) 

#### Terminology Bindings

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-elga-emed-extension-group-identifier",
  "url" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-extension-group-identifier",
  "version" : "0.1.0",
  "name" : "AtElgaEmedExtensionGroupIdentifier",
  "title" : "AT ELGA e-Medikation Extension Group Identifier",
  "status" : "draft",
  "date" : "2026-09-24T11:03:30+00:00",
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
  "description" : "AT ELGA e-Medikation Extension, die den e-Med GroupIdentifier beinhaltet.",
  "fhirVersion" : "4.0.1",
  "mapping" : [{
    "identity" : "rim",
    "uri" : "http://hl7.org/v3",
    "name" : "RIM Mapping"
  }],
  "kind" : "complex-type",
  "abstract" : false,
  "context" : [{
    "type" : "element",
    "expression" : "MedicationDispense"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "AT ELGA e-Medikation Extension Group Identifier",
      "definition" : "AT ELGA e-Medikation Extension, die den e-Med GroupIdentifier beinhaltet."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-extension-group-identifier"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "Identifier"
      }]
    },
    {
      "id" : "Extension.value[x].system",
      "path" : "Extension.value[x].system",
      "patternUri" : "http://tbd.com"
    }]
  }
}

```
