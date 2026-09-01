# AtApsImmunization-Beispiel - Austrian Patient Summary (R4) v1.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **AtApsImmunization-Beispiel**

## Example Immunization: AtApsImmunization-Beispiel

Language: de-AT

Profile: [AT APS Immunization](StructureDefinition-at-aps-immunization.md)

**status**: Completed

**vaccineCode**: Unbekannte Immunisierungen

**patient**: [Maria Musterfrau](Patient-at-aps-example-patient-01.md)

**occurrence**: 1998-06-04 00:00:00+0200

### ProtocolApplieds

| | | |
| :--- | :--- | :--- |
| - | **TargetDisease** | **DoseNumber[x]** |
| * | Masern-Mumps Impfstoffkombination | unknown |



## Resource Content

```json
{
  "resourceType" : "Immunization",
  "id" : "at-aps-example-immunization-01-unknown",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/aps/r4/StructureDefinition/at-aps-immunization"]
  },
  "language" : "de-AT",
  "status" : "completed",
  "vaccineCode" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "787482006",
      "display" : "Unbekannte Immunisierungen"
    }]
  },
  "patient" : {
    "reference" : "Patient/at-aps-example-patient-01",
    "display" : "Maria Musterfrau"
  },
  "occurrenceDateTime" : "1998-06-04T00:00:00+02:00",
  "protocolApplied" : [{
    "targetDisease" : [{
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "836499004",
        "display" : "Masern-Mumps Impfstoffkombination"
      }]
    }],
    "doseNumberString" : "unknown"
  }]
}

```
