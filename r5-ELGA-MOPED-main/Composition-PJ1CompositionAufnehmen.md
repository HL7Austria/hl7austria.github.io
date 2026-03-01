# ELGA.MOPED\MOPED PJ1 Composition nach $aufnehmen - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MOPED PJ1 Composition nach $aufnehmen**

## Example Composition: MOPED PJ1 Composition nach $aufnehmen

Profile: [MOPED Aufnahme Composition](StructureDefinition-MopedAufnahmeComposition.md)

**AnzahlVerlegungen**: 1

**AnzahlBeurlaubungen**: 0

**status**: Partial

**type**: Summary of episode note

**encounter**: [Encounter: identifier = Visit number,Anonymous identifier; status = in-progress; class = Stationär,geplante stationäre Aufnahme/geplanter ambulanter Besuch (mit vorhergehender Terminvereinbarung, Richtwert: mindestens 24 Stunden); type = Moped Encounter; actualPeriod = 2024-02-22 19:33:00+0200 --> (ongoing)](Encounter-PJ1EncounterAufnahme.md)

**date**: 2025-03-31

### UseContexts

| | | |
| :--- | :--- | :--- |
| - | **Code** | **Value[x]** |
| * | [UsageContextType: workflow](http://terminology.hl7.org/7.0.1/CodeSystem-usage-context-type.html#usage-context-type-workflow)(Workflow Setting) | Aufnahme freigegeben |

**author**: [Organization Herz Jesu-Krankenhaus](Organization-OrganizationHerzJesuKrankenhaus.md)

**title**: PJ1CompositionNachAufnehmen



## Resource Content

```json
{
  "resourceType" : "Composition",
  "id" : "PJ1CompositionAufnehmen",
  "meta" : {
    "profile" : ["https://elga.moped.at/StructureDefinition/MopedAufnahmeComposition"]
  },
  "extension" : [{
    "url" : "https://elga.moped.at/StructureDefinition/moped-ext-AnzahlVerlegungen",
    "valueUnsignedInt" : 1
  },
  {
    "url" : "https://elga.moped.at/StructureDefinition/moped-ext-AnzahlBeurlaubungen",
    "valueUnsignedInt" : 0
  }],
  "status" : "partial",
  "type" : {
    "coding" : [{
      "system" : "http://loinc.org",
      "code" : "34133-9"
    }]
  },
  "subject" : [{
    "reference" : "Patient/PJ1Patient"
  }],
  "encounter" : {
    "reference" : "Encounter/PJ1EncounterAufnahme"
  },
  "date" : "2025-03-31",
  "useContext" : [{
    "code" : {
      "system" : "http://terminology.hl7.org/CodeSystem/usage-context-type",
      "code" : "workflow"
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://elga.moped.at/CodeSystem/WorkflowStatusCS",
        "code" : "Aufnahme-freigegeben"
      }]
    }
  }],
  "author" : [{
    "reference" : "Organization/OrganizationHerzJesuKrankenhaus"
  }],
  "title" : "PJ1CompositionNachAufnehmen",
  "section" : [{
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
    "code" : {
      "coding" : [{
        "system" : "https://elga.moped.at/CodeSystem/CompositionSectionsCS",
        "code" : "KH"
      }]
    },
    "entry" : [{
      "reference" : "Organization/OrganizationHerzJesuKrankenhaus"
    }]
  },
  {
    "code" : {
      "coding" : [{
        "system" : "https://elga.moped.at/CodeSystem/CompositionSectionsCS",
        "code" : "DIAG"
      }]
    },
    "author" : [{
      "reference" : "Organization/OrganizationHerzJesuKrankenhaus"
    }],
    "entry" : [{
      "reference" : "Condition/PJ1Condition1"
    }]
  }]
}

```
