# Beispiel Journey 02: Magistrale Zubereitung - ELGA e-Medikation (R4) DRAFT v0.1.0

## Example Medication: Beispiel Journey 02: Magistrale Zubereitung

Profile: [AT ELGA e-Medikation Medication Magistrale Medikation](StructureDefinition-at-elga-emed-medication-magistrale-zubereitung.md)

**AT ELGA e-Medikation Extension Rezeptur**: 

TODO: Beispielrezeptur

**code**: Dexpanthenol-5-%-Salbe

**form**: Salbe

> **ingredient****item**: Dexpanthenol**isActive**: true**strength**: 5 g (Details: UCUM codeg = 'g')/100 g (Details: UCUM codeg = 'g')

> **ingredient****item**: Salbengrundlage**isActive**: false**strength**: 95 g/100 g



## Resource Content

```json
{
  "resourceType" : "Medication",
  "id" : "At-Emed-Example-Medication-Magistral-01",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medication-magistrale-zubereitung"]
  },
  "extension" : [{
    "url" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-extension-rezeptur",
    "valueMarkdown" : "TODO: Beispielrezeptur"
  }],
  "code" : {
    "text" : "Dexpanthenol-5-%-Salbe"
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
    "isActive" : true,
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
