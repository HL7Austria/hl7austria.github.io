# HL7.AT.FHIR.CORE.R4\Address Municipality Key (Gemeindekennziffer) - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Address Municipality Key (Gemeindekennziffer)**

## Extension: Address Municipality Key (Gemeindekennziffer) 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/core/r4/StructureDefinition/at-core-ext-address-municipalityKey | *Version*:2.1.0 | |
| Active as of 2026-09-11 | *Responsible:*[HL7® Austria, TC FHIR®](https://hl7.at/technische-komitees/tc-fhir/) | *Computable Name*:AddressMunicipalityKey |

HL7® Austria FHIR® Core Extension for the municipality key (Gemeindekennziffer) part of the Austrian address. The municipality key is related to the [municipality code (Gemeindecode)](StructureDefinition-at-core-ext-address-municipalityCode.md). While these two are generally identical, there is one notable exception: in Vienna, the municipality key (Gemeindekennziffer) is consistently 90001, whereas the municipality code (Gemeindecode) varies by district. The current list of values is provided by [Statistik Austria](https://www.statistik.at/verzeichnis/reglisten/gemliste_knz.pdf).

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [HL7® AT Core Address Profile](StructureDefinition-at-core-address.md)
* Examples for this Extension: [Patient/HL7ATCorePatientExample07-MunicipalityCode](Patient-HL7ATCorePatientExample07-MunicipalityCode.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.core.r4|current/StructureDefinition/StructureDefinition-at-core-ext-address-municipalityKey.json)

### Formal Views of Extension Content

 [Description of Profiles, Differentials, Snapshots, and how the XML and JSON presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-core-ext-address-municipalityKey.csv), [Excel](StructureDefinition-at-core-ext-address-municipalityKey.xlsx), [Schematron](StructureDefinition-at-core-ext-address-municipalityKey.sch) 

#### Constraints



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-core-ext-address-municipalityKey",
  "url" : "https://fhir.hl7.at/core/r4/StructureDefinition/at-core-ext-address-municipalityKey",
  "version" : "2.1.0",
  "name" : "AddressMunicipalityKey",
  "title" : "Address Municipality Key (Gemeindekennziffer)",
  "status" : "active",
  "date" : "2026-09-11T12:27:00+00:00",
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
  "description" : "HL7® Austria FHIR® Core Extension for the municipality key (Gemeindekennziffer) part of the Austrian address. The municipality key is related to the [municipality code (Gemeindecode)](StructureDefinition-at-core-ext-address-municipalityCode.html). While these two are generally identical, there is one notable exception: in Vienna, the municipality key (Gemeindekennziffer) is consistently 90001, whereas the municipality code (Gemeindecode) varies by district. The current list of values is provided by [Statistik Austria](https://www.statistik.at/verzeichnis/reglisten/gemliste_knz.pdf).",
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
    "expression" : "Address"
  },
  {
    "type" : "element",
    "expression" : "https://fhir.hl7.at/core/r4/StructureDefinition/at-core-address#Address"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Address Municipality Key (Gemeindekennziffer)",
      "definition" : "HL7® Austria FHIR® Core Extension for the municipality key (Gemeindekennziffer) part of the Austrian address. The municipality key is related to the [municipality code (Gemeindecode)](StructureDefinition-at-core-ext-address-municipalityCode.html). While these two are generally identical, there is one notable exception: in Vienna, the municipality key (Gemeindekennziffer) is consistently 90001, whereas the municipality code (Gemeindecode) varies by district. The current list of values is provided by [Statistik Austria](https://www.statistik.at/verzeichnis/reglisten/gemliste_knz.pdf)."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://fhir.hl7.at/core/r4/StructureDefinition/at-core-ext-address-municipalityKey"
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "string"
      }]
    }]
  }
}

```
