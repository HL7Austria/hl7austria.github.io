# Address GKZ (Gemeindekennziffer) - HL7® Austria FHIR® Core Implementation Guide v2.1.0

## Extension: Address GKZ (Gemeindekennziffer) 

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [HL7® AT Core Address Profile](StructureDefinition-at-core-address.md)
* Examples for this Extension: [Patient/HL7ATCorePatientExample07-MunicipalityCode](Patient-HL7ATCorePatientExample07-MunicipalityCode.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.core.r5|current/StructureDefinition/StructureDefinition-at-core-ext-address-municipalityKey.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-at-core-ext-address-municipalityKey.csv), [Excel](../StructureDefinition-at-core-ext-address-municipalityKey.xlsx), [Schematron](../StructureDefinition-at-core-ext-address-municipalityKey.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-core-ext-address-municipalityKey",
  "extension" : [{
    "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-type-characteristics",
    "valueCode" : "can-bind"
  }],
  "url" : "https://fhir.hl7.at/core/r5/StructureDefinition/at-core-ext-address-municipalityKey",
  "version" : "2.1.0",
  "name" : "AddressMunicipalityKey",
  "title" : "Address GKZ (Gemeindekennziffer)",
  "status" : "active",
  "date" : "2026-10-28T07:26:46+00:00",
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
  "fhirVersion" : "5.0.0",
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
    "expression" : "https://fhir.hl7.at/core/r5/StructureDefinition/at-core-address#Address"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "Gemeindekennziffer (GKZ)",
      "definition" : "The Gemeindekennziffer (GKZ) of the Austrian municipality the address belongs to, as published by Statistics Austria (Statistik Austria). It is generally identical to the municipality code (Gemeindecode), except in Vienna, where the Gemeindekennziffer is 90001 for the whole city while the Gemeindecode varies by district."
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://fhir.hl7.at/core/r5/StructureDefinition/at-core-ext-address-municipalityKey"
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
