# Beispiel Journey 06-02: Planeintrag 3 - ELGA e-Medikation (R4) DRAFT v0.1.0

## Example MedicationRequest: Beispiel Journey 06-02: Planeintrag 3



## Resource Content

```json
{
  "resourceType" : "MedicationRequest",
  "id" : "7128c60c-126d-42b2-b575-dc26a2324b8b",
  "meta" : {
    "versionId" : "v19bb12b57-04a0-4d19-af1f-e78c3cc628cc",
    "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medicationrequest-planeintrag"]
  },
  "contained" : [{
    "resourceType" : "Medication",
    "id" : "at-emed-journey-medication-wirkstoff-metamizol",
    "meta" : {
      "profile" : ["https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-medication-wirkstoff"]
    },
    "amount" : {
      "numerator" : {
        "value" : 1000,
        "unit" : "mg",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg"
      },
      "denominator" : {
        "value" : 1
      }
    },
    "ingredient" : [{
      "itemCodeableConcept" : {
        "coding" : [{
          "system" : "https://termgit.elga.gv.at/CodeSystem/medikation-ages-wirkstoffe",
          "code" : "8023400",
          "display" : "METAMIZOL NATRIUM MONOHYDRAT"
        }]
      },
      "isActive" : true
    }]
  }],
  "extension" : [{
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.effectiveDosePeriod",
    "valuePeriod" : {
      "start" : "2026-03-19",
      "end" : "2026-03-26"
    }
  },
  {
    "url" : "http://hl7.org/fhir/5.0/StructureDefinition/extension-MedicationRequest.renderedDosageInstruction",
    "valueMarkdown" : "1-1-1-1 | 4x täglich 1000 mg"
  }],
  "status" : "active",
  "intent" : "order",
  "category" : [{
    "coding" : [{
      "system" : "https://fhir.hl7.at/elga/emed/r4/CodeSystem/at-elga-emed-codesystem-medicationrequestcategory-cs",
      "code" : "Planeintrag",
      "display" : "Planeintrag"
    }]
  }],
  "reportedBoolean" : false,
  "medicationReference" : {
    "reference" : "#at-emed-journey-medication-wirkstoff-metamizol"
  },
  "subject" : {
    "reference" : "Patient/At-Emed-Example-Patient-01",
    "type" : "Patient",
    "identifier" : {
      "system" : "urn:oid:1.2.40.0.10.2.1.1.149",
      "value" : "GH:oeLdSEb0l+8kSdJWjOYyYmnYki0="
    }
  },
  "authoredOn" : "2026-03-19T12:10:00+00:00",
  "requester" : {
    "reference" : "Practitioner/At-Emed-Example-Practitioner-03",
    "identifier" : {
      "system" : "urn:ietf:rfc:3986",
      "value" : "urn:oid:1.2.40.0.34.99.4613.3"
    },
    "display" : "Dr. Krankenhaus"
  },
  "courseOfTherapyType" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/medicationrequest-course-of-therapy",
      "code" : "acute"
    }]
  },
  "dosageInstruction" : [{
    "extension" : [{
      "url" : "https://fhir.hl7.at/elga/emed/r4/StructureDefinition/at-elga-emed-extension-dosage-category",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "https://fhir.hl7.at/elga/emed/r4/CodeSystem/at-elga-emed-codesystem-dosagecategory-cs",
          "code" : "standard"
        }]
      }
    }],
    "sequence" : 1,
    "timing" : {
      "repeat" : {
        "frequency" : 4,
        "period" : 1,
        "periodUnit" : "d",
        "when" : ["MORN", "NOON", "EVE", "NIGHT"]
      }
    },
    "doseAndRate" : [{
      "doseQuantity" : {
        "value" : 1000,
        "unit" : "MilliGram",
        "system" : "http://unitsofmeasure.org",
        "code" : "mg"
      }
    }]
  }]
}

```
