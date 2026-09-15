# HL7.AT.FHIR.ELGA.EMED.R4\Beispiel Journey 02: Magistrale Zubereitung - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel Journey 02: Magistrale Zubereitung**

## Example Medication: Beispiel Journey 02: Magistrale Zubereitung

Profile: [AT ELGA e-Medikation Medication Medikation](StructureDefinition-at-elga-emed-medication-medikation.md)

**form**: Salbe

> **ingredient****item**: Dexpanthenol**strength**: 5 g (Details: UCUM codeg = 'g')/100 g (Details: UCUM codeg = 'g')

> **ingredient****item**: Salbengrundlage**isActive**: false**strength**: 95 g/100 g



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "At-Emed-Example-Medication-Magistral-01",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medication-medikation"]
  },
  "form" : {
    "coding" : [{
      "system" : "https://termgit.elga.gv.at/CodeSystem/medikationdarreichungsform",
      "code" : "100000073713",
      "display" : "Salbe"
    }]
  },
  "ingredient" : [{
    "itemCodeableConcept" : {
      "coding" : [{
        "system" : "https://termgit.elga.gv.at/CodeSystem/atc-deutsch-wido",
        "code" : "A11HA30",
        "display" : "Dexpanthenol"
      }]
    },
    "strength" : {
      "numerator" : {
        "value" : 5,
        "unit" : "g",
        "system" : "http://unitsofmeasure.org",
        "code" : "g"
      },
      "denominator" : {
        "value" : 100,
        "unit" : "g",
        "system" : "http://unitsofmeasure.org",
        "code" : "g"
      }
    }
  },
  {
    "itemCodeableConcept" : {
      "text" : "Salbengrundlage"
    },
    "isActive" : false,
    "strength" : {
      "numerator" : {
        "value" : 95,
        "unit" : "g"
      },
      "denominator" : {
        "value" : 100,
        "unit" : "g"
      }
    }
  }]
}

```
