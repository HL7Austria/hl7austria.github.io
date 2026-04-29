# ELGA.MOPED\LKFRequest42 - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **LKFRequest42**

## Example Claim: LKFRequest42

Profile: [MOPED LKFRequest](StructureDefinition-MopedLKFRequest.md)

**Abrechnung - Knoten**: [LKF Abrechnungsknoten: D](CodeSystem-LKFAbrechnungsKnotenCS.md#LKFAbrechnungsKnotenCS-D) (D)

**Fondsrelevanz**: [Fondsrelevanz: J](CodeSystem-FondsrelevanzCS.md#FondsrelevanzCS-J) (Ja (Abrechnung des stationären Aufenthalts/ambulanten Besuchs erfolgt über den Landesgesundheitsfonds/PRIKRAF))

**status**: Active

**type**: LKF Request

**subType**: LKF Vorläufige Meldung

**use**: Claim

**patient**: [Patient42 Patient42FamilienName Male, DoB: 1937-12-31 ( Social Security Number: 123456)](Patient-Patient42.md)

**created**: 2025-08-30

**insurer**: [Organization Österreichische Gesundheitskasse Wien](Organization-SV11.md)

**provider**: [Organization Testkrankenhaus](Organization-KAK999.md)

**encounter**: 

* [Encounter: extension = ; identifier = Visit number,Anonymous identifier; status = completed; class = Stationär,geplante stationäre Aufnahme/geplanter ambulanter Besuch (mit vorhergehender Terminvereinbarung, Richtwert: mindestens 24 Stunden); type = Moped Encounter; actualPeriod = 2025-01-01 12:00:00+0200 --> 2025-01-04 12:00:00+0200](Encounter-Encounter42.md)
* [Encounter: status = completed; type = Moped Transfer Encounter; actualPeriod = 2025-01-01 --> (ongoing)](Encounter-TransferEncounter42.1.md)
* [Encounter: status = completed; type = Moped Transfer Encounter; actualPeriod = 2025-01-02 00:00:00+0200 --> 2025-01-04 00:00:00+0200](Encounter-TransferEncounter42.2.md)

**diagnosisRelatedGroup**: HDG01.12

> **supportingInfo****sequence**: 1**category**: Plausibilitätskennzeichen**value**: 2

> **supportingInfo****sequence**: 2**category**: Endgültige Meldung**value**: true

> **supportingInfo****sequence**: 3**category**: XDok Device**value**: [Device: status = active; category = Software; type = XDok](Device-XDokExampleDevice.md)

### Diagnoses

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Sequence** | **Diagnosis[x]** | **OnAdmission** |
| * | 1 | [Condition G40.0](Condition-Condition42.1.md) | Unknown |

> **item****sequence**: 1**category**: Leistungskomponente/Leistungspunkte**quantity**: 366.0 LKF Punkte

> **item****sequence**: 2**category**: Tageskomponente/Kontaktpunktet**quantity**: 2730.0 LKF Punkte

> **item****sequence**: 3**category**: Punkte Belagsdauerausreißer nach unten – Leistungskomponente**quantity**: 0.0 LKF Punkte

> **item****sequence**: 4**category**: Punkte Belagsdauerausreißer nach unten – Tageskomponente**quantity**: 0.0 LKF Punkte

> **item****sequence**: 5**category**: Zusatzpunkte Belagsdauerausreißer nach oben**quantity**: 0.0 LKF Punkte

> **item****sequence**: 6**category**: Zusatzpunkte Intensiv**quantity**: 2436.0 LKF Punkte

> **item****sequence**: 7**category**: Zusatzpunkte Mehrfachleistungen**quantity**: 0.0 LKF Punkte

> **item****sequence**: 8**category**: Punkte spezieller Bereiche (tageweise)**quantity**: 0.0 LKF Punkte

> **item****sequence**: 9**category**: Punkte total**quantity**: 5532.0 LKF Punkte



## Resource Content

```json
{
  "resourceType" : "Claim",
  "id" : "LKFRequest42",
  "meta" : {
    "profile" : ["https://elga.moped.at/StructureDefinition/MopedLKFRequest"]
  },
  "extension" : [{
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
  }],
  "status" : "active",
  "type" : {
    "coding" : [{
      "system" : "https://elga.moped.at/CodeSystem/MopedClaimTypeCS",
      "code" : "LKFREQ"
    }]
  },
  "subType" : {
    "coding" : [{
      "system" : "https://elga.moped.at/CodeSystem/MopedClaimSubTypeCS",
      "code" : "LKFREQVORL"
    }]
  },
  "use" : "claim",
  "patient" : {
    "reference" : "Patient/Patient42"
  },
  "created" : "2025-08-30",
  "insurer" : {
    "reference" : "Organization/SV11"
  },
  "provider" : {
    "reference" : "Organization/KAK999"
  },
  "encounter" : [{
    "reference" : "Encounter/Encounter42"
  },
  {
    "reference" : "Encounter/TransferEncounter42.1"
  },
  {
    "reference" : "Encounter/TransferEncounter42.2"
  }],
  "diagnosisRelatedGroup" : {
    "coding" : [{
      "system" : "https://elga.moped.at/ValueSet/LKFAbrechnungsGruppeVS",
      "code" : "HDG01.12"
    }]
  },
  "supportingInfo" : [{
    "sequence" : 1,
    "category" : {
      "coding" : [{
        "system" : "https://elga.moped.at/CodeSystem/ClaimSupportingInformationCategoryCS",
        "code" : "PLAUS"
      }]
    },
    "valueString" : "2"
  },
  {
    "sequence" : 2,
    "category" : {
      "coding" : [{
        "system" : "https://elga.moped.at/CodeSystem/ClaimSupportingInformationCategoryCS",
        "code" : "ENDG"
      }]
    },
    "valueBoolean" : true
  },
  {
    "sequence" : 3,
    "category" : {
      "coding" : [{
        "system" : "https://elga.moped.at/CodeSystem/ClaimSupportingInformationCategoryCS",
        "code" : "DEVX"
      }]
    },
    "valueReference" : {
      "reference" : "Device/XDokExampleDevice"
    }
  }],
  "diagnosis" : [{
    "sequence" : 1,
    "diagnosisReference" : {
      "reference" : "Condition/Condition42.1"
    },
    "onAdmission" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/ex-diagnosis-on-admission",
        "code" : "unknown"
      }]
    }
  }],
  "item" : [{
    "sequence" : 1,
    "category" : {
      "coding" : [{
        "system" : "https://elga.moped.at/CodeSystem/MopedClaimItemCategoryCS",
        "code" : "LDFPLK"
      }]
    },
    "quantity" : {
      "value" : 366.0,
      "unit" : "LKF Punkte"
    }
  },
  {
    "sequence" : 2,
    "category" : {
      "coding" : [{
        "system" : "https://elga.moped.at/CodeSystem/MopedClaimItemCategoryCS",
        "code" : "LDFPTK"
      }]
    },
    "quantity" : {
      "value" : 2730.0,
      "unit" : "LKF Punkte"
    }
  },
  {
    "sequence" : 3,
    "category" : {
      "coding" : [{
        "system" : "https://elga.moped.at/CodeSystem/MopedClaimItemCategoryCS",
        "code" : "SCULK"
      }]
    },
    "quantity" : {
      "value" : 0.0,
      "unit" : "LKF Punkte"
    }
  },
  {
    "sequence" : 4,
    "category" : {
      "coding" : [{
        "system" : "https://elga.moped.at/CodeSystem/MopedClaimItemCategoryCS",
        "code" : "SCUTK"
      }]
    },
    "quantity" : {
      "value" : 0.0,
      "unit" : "LKF Punkte"
    }
  },
  {
    "sequence" : 5,
    "category" : {
      "coding" : [{
        "system" : "https://elga.moped.at/CodeSystem/MopedClaimItemCategoryCS",
        "code" : "BDZU"
      }]
    },
    "quantity" : {
      "value" : 0.0,
      "unit" : "LKF Punkte"
    }
  },
  {
    "sequence" : 6,
    "category" : {
      "coding" : [{
        "system" : "https://elga.moped.at/CodeSystem/MopedClaimItemCategoryCS",
        "code" : "INTZU"
      }]
    },
    "quantity" : {
      "value" : 2436.0,
      "unit" : "LKF Punkte"
    }
  },
  {
    "sequence" : 7,
    "category" : {
      "coding" : [{
        "system" : "https://elga.moped.at/CodeSystem/MopedClaimItemCategoryCS",
        "code" : "MELZU"
      }]
    },
    "quantity" : {
      "value" : 0.0,
      "unit" : "LKF Punkte"
    }
  },
  {
    "sequence" : 8,
    "category" : {
      "coding" : [{
        "system" : "https://elga.moped.at/CodeSystem/MopedClaimItemCategoryCS",
        "code" : "SCSPEZ"
      }]
    },
    "quantity" : {
      "value" : 0.0,
      "unit" : "LKF Punkte"
    }
  },
  {
    "sequence" : 9,
    "category" : {
      "coding" : [{
        "system" : "https://elga.moped.at/CodeSystem/MopedClaimItemCategoryCS",
        "code" : "SCGES"
      }]
    },
    "quantity" : {
      "value" : 5532.0,
      "unit" : "LKF Punkte"
    }
  }]
}

```
