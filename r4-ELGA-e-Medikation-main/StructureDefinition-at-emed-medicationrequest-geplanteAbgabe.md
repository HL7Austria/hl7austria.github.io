# HL7.AT.FHIR.ELGA.EMED.R4\ELGA e-Medikation geplante Abgabe - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **ELGA e-Medikation geplante Abgabe**

## Resource Profile: ELGA e-Medikation geplante Abgabe 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-medicationrequest-geplanteAbgabe | *Version*:0.1.1 | |
| Draft as of 2026-01-15 | *Responsible:*[ELGA GmbH](http://elga.gv.at) | *Computable Name*:AtEmedMedicationRequestGeplanteAbgabe |

 
**Beschreibung:**Bildet eine geplante Abgabe eines Arzneimittels aus dem entsprechendem Medikationsplaneintrag des ELGA Teilnehmers ab (Rezeptierung). Sie enthält das verordnetes Arzneimittel und dessen Dosierung, der Status ist bei Ausstellung aktiv. Als groupIdentifier dient die eMED-ID, die auch im e-Rezept mitgeführt wird. Werden mehrere Arzneimittel gleichzeitig verordnet, so wird für jedes Arzneimittel eine eigene geplante Abgabe erstellt, der groupIdentifier ist aber für diese geplanten Abgaben gleich (Bildet 'Rezept-Klammer'). 

**Usages:**

* Examples for this Profile: [MedicationRequest/AtEmedExampleMedicationRequestGeplanteAbgabe01](MedicationRequest-AtEmedExampleMedicationRequestGeplanteAbgabe01.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/hl7.at.fhir.elga.emed.r4|current/StructureDefinition/at-emed-medicationrequest-geplanteAbgabe)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-at-emed-medicationrequest-geplanteAbgabe.csv), [Excel](StructureDefinition-at-emed-medicationrequest-geplanteAbgabe.xlsx), [Schematron](StructureDefinition-at-emed-medicationrequest-geplanteAbgabe.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "at-emed-medicationrequest-geplanteAbgabe",
  "url" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-medicationrequest-geplanteAbgabe",
  "version" : "0.1.1",
  "name" : "AtEmedMedicationRequestGeplanteAbgabe",
  "title" : "ELGA e-Medikation geplante Abgabe",
  "status" : "draft",
  "date" : "2026-01-15T19:11:07+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [
    {
      "name" : "ELGA GmbH",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://elga.gv.at"
        }
      ]
    },
    {
      "name" : "ELGA GmbH",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://elga.gv.at",
          "use" : "work"
        }
      ]
    }
  ],
  "description" : "**Beschreibung:**Bildet eine geplante Abgabe eines Arzneimittels aus dem entsprechendem Medikationsplaneintrag des ELGA Teilnehmers ab (Rezeptierung). Sie enthält das verordnetes Arzneimittel und dessen Dosierung, der Status ist bei Ausstellung aktiv. \nAls groupIdentifier dient die eMED-ID, die auch im e-Rezept mitgeführt wird.\nWerden mehrere Arzneimittel gleichzeitig verordnet, so wird für jedes Arzneimittel eine eigene geplante Abgabe erstellt, der groupIdentifier ist aber für diese geplanten Abgaben gleich (Bildet 'Rezept-Klammer').",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
    {
      "identity" : "script10.6",
      "uri" : "http://ncpdp.org/SCRIPT10_6",
      "name" : "Mapping to NCPDP SCRIPT 10.6"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "MedicationRequest",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/MedicationRequest",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "MedicationRequest",
        "path" : "MedicationRequest"
      },
      {
        "id" : "MedicationRequest.status",
        "path" : "MedicationRequest.status",
        "short" : "active | aktiv"
      }
    ]
  }
}

```
