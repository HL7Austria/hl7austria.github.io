# ELGA.MOPED\PJ1LKFRequest1 - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PJ1LKFRequest1**

## Example Claim: PJ1LKFRequest1

Profile: [MOPED LKFRequest](StructureDefinition-MopedLKFRequest.md)

**Abrechnung - Knoten**: [LKF Abrechnungsknoten: D](CodeSystem-LKFAbrechnungsKnotenCS.md#LKFAbrechnungsKnotenCS-D) (D)

**Fondsrelevanz**: [Fondsrelevanz: J](CodeSystem-FondsrelevanzCS.md#FondsrelevanzCS-J) (Ja (Abrechnung des stationären Aufenthalts/ambulanten Besuchs erfolgt über den Landesgesundheitsfonds/PRIKRAF))

**status**: Active

**type**: LKF Request

**subType**: LKF Vorläufige Meldung

**use**: Claim

**patient**: [Sonnenschein Susi (official) Female, DoB: 1969-04-21 ( Social Security Number: 9994210469)](Patient-PJ1Patient.md)

**created**: 2024-10-31

**insurer**: [Organization Österreichische Gesundheitskasse Wien](Organization-SV11.md)

**provider**: [Organization Herz Jesu-Krankenhaus](Organization-OrganizationHerzJesuKrankenhaus.md)

**encounter**: 

* [Encounter: identifier = Visit number,Anonymous identifier; status = discharged; class = Stationär,geplante stationäre Aufnahme/geplanter ambulanter Besuch (mit vorhergehender Terminvereinbarung, Richtwert: mindestens 24 Stunden); type = Moped Encounter; actualPeriod = 2024-02-22 19:33:00+0200 --> 2024-02-23 07:38:00+0200](Encounter-PJ1Encounter.md)
* [Encounter: status = completed; type = Moped Transfer Encounter; subjectStatus = physisch anwesend; actualPeriod = 2024-02-22 19:33:00+0200 --> 2024-02-23 07:38:00+0200](Encounter-PJ1TransferEncounter1.md)

**diagnosisRelatedGroup**: Sonstige Erkrankungen - Nervensystem

> **supportingInfo****sequence**: 1**category**:Plausibilitätskennzeichen**value**: 1234

> **supportingInfo****sequence**: 2**category**:Endgültige Meldung**value**: false

> **supportingInfo****sequence**: 3**category**:XDok Device**value**:[Device: status = active; category = Software; type = XDok](Device-XDokExampleDevice.md)

### Diagnoses

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Sequence** | **Diagnosis[x]** | **OnAdmission** |
| * | 1 | [Condition Schlafapnoe](Condition-PJ1Condition1.md) | Unknown |

### Procedures

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Extension** | **Sequence** | **Procedure[x]** |
| * |  | 1 | [Procedure Polysomnographie im Schlaflabor (LE=je Behandlungstag)](Procedure-PJ1Procedure1.md) |

### Insurances

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Sequence** | **Focal** | **Coverage** |
| * | 1 | true | [Coverage: identifier = urn:oid:1.2.40.0.10.1.4.3.9.1#XB4G37PFN9FJ; status = active; kind = insurance](Coverage-PJ1Coverage.md) |

> **item****sequence**: 1**category**:Punkte Belagsdauerausreißer nach unten – Leistungskomponente**quantity**: 0

> **item****sequence**: 2**category**:Punkte Belagsdauerausreißer nach unten – Tageskomponente**quantity**: 0

> **item****sequence**: 3**category**:Zusatzpunkte Belagsdauerausreißer nach oben**quantity**: 0

> **item****sequence**: 4**category**:Zusatzpunkte Intensiv**quantity**: 0

> **item****sequence**: 5**category**:Zusatzpunkte Mehrfachleistungen**quantity**: 0

> **item****sequence**: 6**category**:Punkte spezieller Bereiche (tageweise)**quantity**: 0

> **item****sequence**: 7**category**:Punkte total**quantity**: 1110

> **item****sequence**: 8**category**:Leistungskomponente/Leistungspunkte**quantity**: 743

> **item****sequence**: 9**category**:Tageskomponente/Kontaktpunktet**quantity**: 367



## Resource Content

```json
{
  "resourceType" : "Claim",
  "id" : "PJ1LKFRequest1",
  "meta" : {
    "profile" : ["https://elga.moped.at/StructureDefinition/MopedLKFRequest"]
  },
  "extension" : [
    {
      "url" : "https://elga.moped.at/StructureDefinition/moped-ext-diagnoseKnoten",
      "valueCoding" : {
        "system" : "https://elga.moped.at/CodeSystem/LKFAbrechnungsKnotenCS",
        "code" : "D"
      }
    },
    {
      "url" : "https://elga.moped.at/StructureDefinition/moped-ext-fondsrelevanz",
      "valueCoding" : {
        "system" : "https://elga.moped.at/CodeSystem/FondsrelevanzCS",
        "code" : "J"
      }
    }
  ],
  "status" : "active",
  "type" : {
    "coding" : [
      {
        "system" : "https://elga.moped.at/CodeSystem/MopedClaimTypeCS",
        "code" : "LKFREQ"
      }
    ]
  },
  "subType" : {
    "coding" : [
      {
        "system" : "https://elga.moped.at/CodeSystem/MopedClaimSubTypeCS",
        "code" : "LKFREQVORL"
      }
    ]
  },
  "use" : "claim",
  "patient" : {
    "reference" : "Patient/PJ1Patient"
  },
  "created" : "2024-10-31",
  "insurer" : {
    "reference" : "Organization/SV11"
  },
  "provider" : {
    "reference" : "Organization/OrganizationHerzJesuKrankenhaus"
  },
  "encounter" : [
    {
      "reference" : "Encounter/PJ1Encounter"
    },
    {
      "reference" : "Encounter/PJ1TransferEncounter1"
    }
  ],
  "diagnosisRelatedGroup" : {
    "coding" : [
      {
        "system" : "https://elga.moped.at/CodeSystem/LKFHauptdiagnosegruppenCS",
        "code" : "HDG01.31"
      }
    ]
  },
  "supportingInfo" : [
    {
      "sequence" : 1,
      "category" : {
        "coding" : [
          {
            "system" : "https://elga.moped.at/CodeSystem/ClaimSupportingInformationCategoryCS",
            "code" : "PLAUS"
          }
        ]
      },
      "valueString" : "1234"
    },
    {
      "sequence" : 2,
      "category" : {
        "coding" : [
          {
            "system" : "https://elga.moped.at/CodeSystem/ClaimSupportingInformationCategoryCS",
            "code" : "ENDG"
          }
        ]
      },
      "valueBoolean" : false
    },
    {
      "sequence" : 3,
      "category" : {
        "coding" : [
          {
            "system" : "https://elga.moped.at/CodeSystem/ClaimSupportingInformationCategoryCS",
            "code" : "DEVX"
          }
        ]
      },
      "valueReference" : {
        "reference" : "Device/XDokExampleDevice"
      }
    }
  ],
  "diagnosis" : [
    {
      "sequence" : 1,
      "diagnosisReference" : {
        "reference" : "Condition/PJ1Condition1"
      },
      "onAdmission" : {
        "coding" : [
          {
            "system" : "http://terminology.hl7.org/CodeSystem/ex-diagnosis-on-admission",
            "code" : "unknown"
          }
        ]
      }
    }
  ],
  "procedure" : [
    {
      "extension" : [
        {
          "url" : "https://elga.moped.at/StructureDefinition/moped-ext-AbrechnungsRelevanz",
          "valueCoding" : {
            "system" : "https://elga.moped.at/CodeSystem/AbrechnungsRelevanzCS",
            "code" : "J"
          }
        }
      ],
      "sequence" : 1,
      "procedureReference" : {
        "reference" : "Procedure/PJ1Procedure1"
      }
    }
  ],
  "insurance" : [
    {
      "sequence" : 1,
      "focal" : true,
      "coverage" : {
        "reference" : "Coverage/PJ1Coverage"
      }
    }
  ],
  "item" : [
    {
      "sequence" : 1,
      "category" : {
        "coding" : [
          {
            "system" : "https://elga.moped.at/CodeSystem/MopedClaimItemCategoryCS",
            "code" : "SCULK"
          }
        ]
      },
      "quantity" : {
        "value" : 0
      }
    },
    {
      "sequence" : 2,
      "category" : {
        "coding" : [
          {
            "system" : "https://elga.moped.at/CodeSystem/MopedClaimItemCategoryCS",
            "code" : "SCUTK"
          }
        ]
      },
      "quantity" : {
        "value" : 0
      }
    },
    {
      "sequence" : 3,
      "category" : {
        "coding" : [
          {
            "system" : "https://elga.moped.at/CodeSystem/MopedClaimItemCategoryCS",
            "code" : "BDZU"
          }
        ]
      },
      "quantity" : {
        "value" : 0
      }
    },
    {
      "sequence" : 4,
      "category" : {
        "coding" : [
          {
            "system" : "https://elga.moped.at/CodeSystem/MopedClaimItemCategoryCS",
            "code" : "INTZU"
          }
        ]
      },
      "quantity" : {
        "value" : 0
      }
    },
    {
      "sequence" : 5,
      "category" : {
        "coding" : [
          {
            "system" : "https://elga.moped.at/CodeSystem/MopedClaimItemCategoryCS",
            "code" : "MELZU"
          }
        ]
      },
      "quantity" : {
        "value" : 0
      }
    },
    {
      "sequence" : 6,
      "category" : {
        "coding" : [
          {
            "system" : "https://elga.moped.at/CodeSystem/MopedClaimItemCategoryCS",
            "code" : "SCSPEZ"
          }
        ]
      },
      "quantity" : {
        "value" : 0
      }
    },
    {
      "sequence" : 7,
      "category" : {
        "coding" : [
          {
            "system" : "https://elga.moped.at/CodeSystem/MopedClaimItemCategoryCS",
            "code" : "SCGES"
          }
        ]
      },
      "quantity" : {
        "value" : 1110
      }
    },
    {
      "sequence" : 8,
      "category" : {
        "coding" : [
          {
            "system" : "https://elga.moped.at/CodeSystem/MopedClaimItemCategoryCS",
            "code" : "LDFPLK"
          }
        ]
      },
      "quantity" : {
        "value" : 743
      }
    },
    {
      "sequence" : 9,
      "category" : {
        "coding" : [
          {
            "system" : "https://elga.moped.at/CodeSystem/MopedClaimItemCategoryCS",
            "code" : "LDFPTK"
          }
        ]
      },
      "quantity" : {
        "value" : 367
      }
    }
  ]
}

```
