# AT ELGA e-Medikation Extension Rezeptur - ELGA e-Medikation (R4) DRAFT v0.1.0

## Extension: AT ELGA e-Medikation Extension Rezeptur 

**Context of Use**

**Usage info**

**Usages:**

* Use this Extension: [AT ELGA e-Medikation Medication Magistrale Medikation](StructureDefinition-at-elga-emed-medication-magistrale-zubereitung.md) and [AT ELGA e-Medikation Medication Wirkstoff](StructureDefinition-at-elga-emed-medication-wirkstoff.md)
* Examples for this Extension: [Bundle/At-Emed-Journey-01-02-Bundle-Medikationsplan-Tx](Bundle-At-Emed-Journey-01-02-Bundle-Medikationsplan-Tx.md), [Bundle/At-Emed-Journey-01-02-Bundle-plan-read-response](Bundle-At-Emed-Journey-01-02-Bundle-plan-read-response.md), [Bundle/At-Emed-Journey-01-02-Bundle-plan-write-response](Bundle-At-Emed-Journey-01-02-Bundle-plan-write-response.md), [Bundle/At-Emed-Journey-01-03-Bundle-Geplante-Abgaben-Tx](Bundle-At-Emed-Journey-01-03-Bundle-Geplante-Abgaben-Tx.md)... Show 15 more, [Bundle/At-Emed-Journey-01-03-Bundle-Geplante-Abgaben-Write-Response](Bundle-At-Emed-Journey-01-03-Bundle-Geplante-Abgaben-Write-Response.md), [Bundle/At-Emed-Journey-02-01-Bundle-Durchgefuehrte-Abgaben-Tx](Bundle-At-Emed-Journey-02-01-Bundle-Durchgefuehrte-Abgaben-Tx.md), [Bundle/At-Emed-Journey-03-01-Bundle-Durchgefuehrte-Abgaben-Tx](Bundle-At-Emed-Journey-03-01-Bundle-Durchgefuehrte-Abgaben-Tx.md), [Bundle/At-Emed-Journey-05-01-Bundle-plan-read-response](Bundle-At-Emed-Journey-05-01-Bundle-plan-read-response.md), [Bundle/At-Emed-Journey-07-02-Bundle-Medikationsplan-Tx](Bundle-At-Emed-Journey-07-02-Bundle-Medikationsplan-Tx.md), [Medication/At-Emed-Example-Medication-Magistral-01](Medication-At-Emed-Example-Medication-Magistral-01.md), [MedicationDispense/At-Emed-Journey-02-01-Md-Durchgefuehrte-Abgabe-02](MedicationDispense-At-Emed-Journey-02-01-Md-Durchgefuehrte-Abgabe-02.md), [MedicationDispense/At-Emed-Journey-03-01-Md-Durchgefuehrte-Abgabe-02](MedicationDispense-At-Emed-Journey-03-01-Md-Durchgefuehrte-Abgabe-02.md), [MedicationRequest/55e4be12-0d10-454c-a85f-cfb5f849e391](MedicationRequest-55e4be12-0d10-454c-a85f-cfb5f849e391.md), [MedicationRequest/f564f377-ef44-4943-9bb2-fccc8a5db24a](MedicationRequest-f564f377-ef44-4943-9bb2-fccc8a5db24a.md), [Parameters/At-Emed-Journey-01-02-Parameters-In-Plan-Write](Parameters-At-Emed-Journey-01-02-Parameters-In-Plan-Write.md), [Parameters/At-Emed-Journey-01-02-Parameters-Out-Plan-Read](Parameters-At-Emed-Journey-01-02-Parameters-Out-Plan-Read.md), [Parameters/At-Emed-Journey-01-02-Parameters-Out-Plan-Write](Parameters-At-Emed-Journey-01-02-Parameters-Out-Plan-Write.md), [Parameters/At-Emed-Journey-01-03-Parameters-In-Prescription-Write](Parameters-At-Emed-Journey-01-03-Parameters-In-Prescription-Write.md) and [Parameters/At-Emed-Journey-01-03-Parameters-Out-Prescription-Write](Parameters-At-Emed-Journey-01-03-Parameters-Out-Prescription-Write.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/resource/hl7.at.fhir.elga.emed.r4|current/StructureDefinition/StructureDefinition-at-elga-emed-extension-rezeptur.json)

### Formal Views of Extension Content

 [Description Differentials, Snapshots, and other representations](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](../StructureDefinition-at-elga-emed-extension-rezeptur.csv), [Excel](../StructureDefinition-at-elga-emed-extension-rezeptur.xlsx), [Schematron](../StructureDefinition-at-elga-emed-extension-rezeptur.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-elga-emed-extension-rezeptur",
  "url" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-extension-rezeptur",
  "version" : "0.1.0",
  "name" : "AtElgaEmedExtensionRezeptur",
  "title" : "AT ELGA e-Medikation Extension Rezeptur",
  "status" : "draft",
  "date" : "2026-10-29T08:46:29+00:00",
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
  "description" : "AT ELGA e-Medikation Extension für die Rezeptur für die Zubereitung einer magistralen Zubereitung",
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
    "expression" : "Medication"
  }],
  "type" : "Extension",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Extension",
  "derivation" : "constraint",
  "differential" : {
    "element" : [{
      "id" : "Extension",
      "path" : "Extension",
      "short" : "AT ELGA e-Medikation Extension Rezeptur",
      "definition" : "AT ELGA e-Medikation Extension für die Rezeptur für die Zubereitung einer magistralen Zubereitung"
    },
    {
      "id" : "Extension.extension",
      "path" : "Extension.extension",
      "max" : "0"
    },
    {
      "id" : "Extension.url",
      "path" : "Extension.url",
      "fixedUri" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-extension-rezeptur",
      "mustSupport" : true
    },
    {
      "id" : "Extension.value[x]",
      "path" : "Extension.value[x]",
      "min" : 1,
      "type" : [{
        "code" : "markdown"
      }],
      "mustSupport" : true
    }]
  }
}

```
