# Beispiel Journey 02-01: Durchgeführte Abgabe 2 - ELGA e-Medikation (R4) DRAFT v0.1.0

## Example MedicationDispense: Beispiel Journey 02-01: Durchgeführte Abgabe 2



## Resource Content

```json
{
  "resourceType" : "MedicationDispense",
  "id" : "At-Emed-Journey-02-01-Md-Durchgefuehrte-Abgabe-02",
  "meta" : {
    "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medicationdispense-durchgefuehrteabgabe"]
  },
  "contained" : [{
    "resourceType" : "Medication",
    "id" : "contained-medication-magistral-01",
    "meta" : {
      "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medication-magistrale-zubereitung"]
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
  }],
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationDispense.renderedDosageInstruction",
    "valueMarkdown" : "1-0-1-0 | Täglich 1-0-1-0"
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationDispense.recorded",
    "valueDateTime" : "2026-02-28T11:00:00+00:00"
  },
  {
    "url" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-extension-group-identifier",
    "valueIdentifier" : {
      "value" : "WYE82A2G8EEW"
    }
  }],
  "status" : "completed",
  "medicationReference" : {
    "reference" : "#contained-medication-magistral-01"
  },
  "subject" : {
    "type" : "Patient",
    "identifier" : {
      "system" : "urn:oid:1.2.40.0.10.2.1.1.149",
      "value" : "GH:oeLdSEb0l+8kSdJWjOYyYmnYki0="
    }
  },
  "performer" : [{
    "actor" : {
      "reference" : "Organization/At-Emed-Example-Organization-02",
      "display" : "Amadeus Apotheke"
    }
  }],
  "authorizingPrescription" : [{
    "reference" : "MedicationRequest/At-Emed-Journey-01-03-Mr-Geplante-Abgabe-02",
    "display" : "Geplante Abgabe 2"
  },
  {
    "reference" : "MedicationRequest/55e4be12-0d10-454c-a85f-cfb5f849e391",
    "display" : "Planeintrag 2"
  }],
  "type" : {
    "coding" : [{
      "code" : "FFP"
    }]
  },
  "quantity" : {
    "value" : 0,
    "system" : "http://unitsofmeasure.org",
    "code" : "0"
  },
  "dosageInstruction" : [{
    "extension" : [{
      "url" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-extension-dosage-category",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhir.hl7.at/elga/emed/r4/CodeSystem/AtElgaEmedCodeSystemDosageCategory",
          "code" : "standard"
        }]
      }
    }],
    "sequence" : 1,
    "patientInstruction" : "Dünn auftragen.",
    "timing" : {
      "repeat" : {
        "boundsDuration" : {
          "value" : 3,
          "unit" : "wk",
          "system" : "http://unitsofmeasure.org",
          "code" : "wk"
        },
        "frequency" : 2,
        "period" : 1,
        "periodUnit" : "d",
        "when" : ["MORN", "EVE"]
      }
    },
    "route" : {
      "coding" : [{
        "system" : "https://termgit.elga.gv.at/CodeSystem/medikationartanwendung",
        "code" : "100000073566",
        "display" : "Anwendung auf der Haut"
      }]
    }
  }]
}

```
