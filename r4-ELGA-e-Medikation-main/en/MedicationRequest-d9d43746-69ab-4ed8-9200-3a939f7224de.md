# Beispiel Journey 01-03: Geplante Abgabe 1 - ELGA e-Medikation (R4) DRAFT v0.1.0

## Example MedicationRequest: Beispiel Journey 01-03: Geplante Abgabe 1

TODO



## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "d9d43746-69ab-4ed8-9200-3a939f7224de",
  "meta" : {
    "versionId" : "v17f105b2f-3c48-4513-9d1a-cd37ffd47469",
    "lastUpdated" : "2026-02-27T08:15:00.204+00:00",
    "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medicationrequest-geplanteabgabe"]
  },
  "contained" : [{
    "resourceType" : "Medication",
    "id" : "at-emed-journey-medication-ramipril",
    "meta" : {
      "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medication-standard-medikation"]
    },
    "code" : {
      "coding" : [{
        "system" : "https://termgit.elga.gv.at/CodeSystem/asp-liste",
        "code" : "2450836",
        "display" : "RAMIPRIL HEX TBL 5MG"
      }]
    },
    "ingredient" : [{
      "itemCodeableConcept" : {
        "coding" : [{
          "system" : "https://termgit.elga.gv.at/CodeSystem/atc-deutsch-wido",
          "code" : "C09AA05",
          "display" : "Ramipril"
        },
        {
          "system" : "https://termgit.elga.gv.at/CodeSystem/medikation-ages-wirkstoffe",
          "code" : "100000092240"
        }]
      },
      "isActive" : true,
      "strength" : {
        "numerator" : {
          "value" : 5,
          "unit" : "mg",
          "system" : "http://unitsofmeasure.org",
          "code" : "mg"
        },
        "denominator" : {
          "value" : 1,
          "unit" : "Stück",
          "system" : "http://unitsofmeasure.org",
          "code" : "{Stueck}"
        }
      }
    }]
  }],
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.effectiveDosePeriod",
    "valuePeriod" : {
      "start" : "2026-02-27"
    }
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.renderedDosageInstruction",
    "valueMarkdown" : "1-0-0-0 | Täglich: 1-0-0-0"
  }],
  "status" : "active",
  "intent" : "order",
  "category" : [{
    "coding" : [{
      "system" : "https://fhir.hl7.at/elga/emed/r4/CodeSystem/MedicationRequestCategoryCS",
      "code" : "GeplAbgabe",
      "display" : "Geplante Abgabe"
    }]
  },
  {
    "coding" : [{
      "system" : "https://termgit.elga.gv.at/CodeSystem/medikationrezeptart",
      "code" : "KASSEN",
      "display" : "Kassenrezept"
    }]
  }],
  "medicationReference" : {
    "reference" : "#at-emed-journey-medication-ramipril"
  },
  "subject" : {
    "reference" : "Patient/At-Emed-Example-Patient-01",
    "identifier" : {
      "system" : "urn:oid:1.2.40.0.10.2.1.1.149",
      "value" : "GH:oeLdSEb0l+8kSdJWjOYyYmnYki0="
    }
  },
  "authoredOn" : "2026-02-27T08:15:00+00:00",
  "requester" : {
    "reference" : "Practitioner/At-Emed-Example-Practitioner-01",
    "identifier" : {
      "system" : "urn:ietf:rfc:3986",
      "value" : "urn:oid:1.2.40.0.34.99.4613.4"
    }
  },
  "basedOn" : [{
    "reference" : "MedicationRequest/6bacfe23-d469-4945-bf3c-90c7e647aa52"
  }],
  "groupIdentifier" : {
    "system" : "http://tbd.com",
    "value" : "WYE82A2G8EEW"
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
    "patientInstruction" : "Nehmen Sie die Tablette vor dem Essen mit ausreichend Flüssigkeit ein.",
    "timing" : {
      "repeat" : {
        "frequency" : 1,
        "period" : 1,
        "periodUnit" : "d",
        "when" : ["MORN"]
      }
    },
    "route" : {
      "coding" : [{
        "system" : "https://termgit.elga.gv.at/CodeSystem/medikationartanwendung",
        "code" : "100000073619",
        "display" : "zum Einnehmen"
      }]
    },
    "doseAndRate" : [{
      "doseQuantity" : {
        "value" : 1,
        "unit" : "Stück",
        "system" : "http://unitsofmeasure.org",
        "code" : "{Stueck}"
      }
    }]
  }],
  "dispenseRequest" : {
    "validityPeriod" : {
      "start" : "2026-02-27",
      "end" : "2026-03-27"
    },
    "numberOfRepeatsAllowed" : 0,
    "quantity" : {
      "value" : 1,
      "unit" : "Packung"
    }
  }
}

```
