# HL7.AT.FHIR.ELGA.EMED.R4\Beispiel Journey 02: Magistrale Zubereitung - FHIR® v4.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Beispiel Journey 02: Magistrale Zubereitung**

## Example Medication: Beispiel Journey 02: Magistrale Zubereitung

Profile: [ELGA e-Med Medikation](StructureDefinition-at-emed-medication.md)

**form**: Salbe

> **ingredient****item**: Hydrocortison**strength**: 1 % (Details: UCUM code% = '%')/100 g (Details: UCUM codeg = 'g')

> **ingredient****item**: Clotrimazol**strength**: 1 % (Details: UCUM code% = '%')/100 g (Details: UCUM codeg = 'g')

> **ingredient****item**: Salbengrundlage**isActive**: false**strength**: 98 g/100 g



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "AtEmedJourneyMedicationMagistral02",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-emed-medication"]
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
        "code" : "A01AC03",
        "display" : "Hydrocortison"
      }]
    },
    "strength" : {
      "numerator" : {
        "value" : 1,
        "unit" : "%",
        "system" : "http://unitsofmeasure.org",
        "code" : "%"
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
      "coding" : [{
        "system" : "https://termgit.elga.gv.at/CodeSystem/atc-deutsch-wido",
        "code" : "A01AB18",
        "display" : "Clotrimazol"
      }]
    },
    "strength" : {
      "numerator" : {
        "value" : 1,
        "unit" : "%",
        "system" : "http://unitsofmeasure.org",
        "code" : "%"
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
        "value" : 98,
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
