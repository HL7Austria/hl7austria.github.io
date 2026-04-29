# ELGA.MOPED\LKF Testdaten Fall - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **LKF Testdaten Fall**

## Example Composition: LKF Testdaten Fall

Profile: [MOPED Composition](StructureDefinition-MopedComposition.md)

**status**: Final

**type**: FHIR resource patient medical record

**encounter**: [Encounter: extension = ; identifier = Visit number,Anonymous identifier; status = completed; class = Stationär,geplante stationäre Aufnahme/geplanter ambulanter Besuch (mit vorhergehender Terminvereinbarung, Richtwert: mindestens 24 Stunden); type = Moped Encounter; actualPeriod = 2025-01-01 12:00:00+0200 --> 2025-01-04 12:00:00+0200](Encounter-Encounter42.md)

**date**: 2025-08-30

### UseContexts

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Value[x]** |
| * | [UsageContextType: workflow](http://terminology.hl7.org/7.1.0/CodeSystem-usage-context-type.html#usage-context-type-workflow)(Workflow Setting) | Endgültige Freigabe |

**author**: [Organization Testkrankenhaus](Organization-KAK999.md)

**title**: LKF Testdaten Fall



## Resource Content

```json
{
  "resourceType" : "Composition",
  "id" : "Composition42",
  "meta" : {
    "profile" : ["https://elga.moped.at/StructureDefinition/MopedComposition"]
  },
  "status" : "final",
  "type" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "102089-0",
      "display" : "FHIR resource patient medical record"
    }]
  },
  "subject" : [{
    "reference" : "Patient/Patient42"
  }],
  "encounter" : {
    "reference" : "Encounter/Encounter42"
  },
  "date" : "2025-08-30",
  "useContext" : [{
    "code" : {
      "system" : "http://terminology.hl7.org/CodeSystem/usage-context-type",
      "code" : "workflow"
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://elga.moped.at/CodeSystem/WorkflowStatusCS",
        "code" : "Endgueltige-Freigabe",
        "display" : "Endgültige Freigabe"
      }]
    }
  }],
  "author" : [{
    "reference" : "Organization/KAK999"
  }],
  "title" : "LKF Testdaten Fall",
  "section" : [{
    "title" : "Zuständige KA",
    "code" : {
      "coding" : [{
        "system" : "https://elga.moped.at/CodeSystem/CompositionSectionsCS",
        "code" : "KA"
      }]
    },
    "entry" : [{
      "reference" : "Organization/KAK999"
    }]
  },
  {
    "title" : "Zuständiger LGF",
    "code" : {
      "coding" : [{
        "system" : "https://elga.moped.at/CodeSystem/CompositionSectionsCS",
        "code" : "LGF"
      }]
    },
    "entry" : [{
      "reference" : "Organization/OrganizationLGF"
    }]
  },
  {
    "title" : "Zuständige SV",
    "code" : {
      "coding" : [{
        "system" : "https://elga.moped.at/CodeSystem/CompositionSectionsCS",
        "code" : "SV"
      }]
    },
    "entry" : [{
      "reference" : "Organization/SV11"
    }]
  },
  {
    "title" : "LKF Requests",
    "code" : {
      "coding" : [{
        "system" : "https://elga.moped.at/CodeSystem/MopedClaimTypeCS",
        "code" : "LKFREQ"
      }]
    },
    "entry" : [{
      "reference" : "Claim/LKFRequest42"
    }]
  },
  {
    "title" : "Conditions",
    "code" : {
      "coding" : [{
        "system" : "https://elga.moped.at/CodeSystem/CompositionSectionsCS",
        "code" : "DIAG"
      }]
    },
    "entry" : [{
      "reference" : "Condition/Condition42.1"
    }]
  },
  {
    "title" : "TransferEncounter",
    "code" : {
      "coding" : [{
        "system" : "https://elga.moped.at/CodeSystem/MopedEncounterTypesCS",
        "code" : "TENC"
      }]
    },
    "entry" : [{
      "reference" : "Encounter/TransferEncounter42.1"
    },
    {
      "reference" : "Encounter/TransferEncounter42.2"
    }]
  },
  {
    "title" : "QuestionnaireResponses",
    "code" : {
      "coding" : [{
        "system" : "https://elga.moped.at/CodeSystem/CompositionSectionsCS",
        "code" : "QRESP"
      }]
    },
    "entry" : [{
      "reference" : "QuestionnaireResponse/SAPS42.1"
    },
    {
      "reference" : "QuestionnaireResponse/TISS42.1"
    },
    {
      "reference" : "QuestionnaireResponse/TISS42.2"
    },
    {
      "reference" : "QuestionnaireResponse/TISS42.3"
    }]
  }]
}

```
