# ELGA.MOPED\PJ2LKFRequest1 - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **PJ2LKFRequest1**

## Example Claim: PJ2LKFRequest1

Profile: [MOPED LKFRequest](StructureDefinition-MopedLKFRequest.md)

**Abrechnung - Knoten**: [LKF Abrechnungsknoten: C](CodeSystem-LKFAbrechnungsKnotenCS.md#LKFAbrechnungsKnotenCS-C) (C)

**Fondsrelevanz**: [Fondsrelevanz: J](CodeSystem-FondsrelevanzCS.md#FondsrelevanzCS-J) (Ja (Abrechnung des stationären Aufenthalts/ambulanten Besuchs erfolgt über den Landesgesundheitsfonds/PRIKRAF))

**status**: Active

**type**: LKF Request

**subType**: LKF Vorläufige Meldung

**use**: Claim

**patient**: [Santiago Schnabeltier Test (official) Male, DoB: 1985-03-19 ( Social Security Number: 2873111374)](Patient-PJ2Patient.md)

**created**: 2025-02-24

**insurer**: [Organization Österreichische Gesundheitskasse Oberösterreich](Organization-SV14.md)

**provider**: [Organization Krankenhaus der Barmherzigen Schwestern vom Hl. Vinzenz von Paul Ried](Organization-OrganizationKrankenhausRied.md)

**encounter**: 

* [Encounter: identifier = Visit number,Anonymous identifier; status = discharged; class = Stationär,akute stationäre Aufnahme/akuter ambulanter Besuch (ohne vorhergehende Terminvereinbarung); type = Moped Encounter; actualPeriod = 2024-08-08 08:21:00+0200 --> 2024-08-12 19:22:00+0200](Encounter-PJ2Encounter.md)
* [Encounter: status = completed; type = Moped Transfer Encounter; subjectStatus = physisch anwesend; actualPeriod = 2024-08-10 17:00:00+0200 --> 2024-08-12 19:22:00+0200](Encounter-PJ2TransferEncounter5.md)

**diagnosisRelatedGroup**: Frakturen der unteren Extremität/Becken, außer Vorfuß

> **supportingInfo****sequence**: 1**category**: Plausibilitätskennzeichen**value**: 1234

> **supportingInfo****sequence**: 2**category**: Endgültige Meldung**value**: false

> **supportingInfo****sequence**: 3**category**: XDok Device**value**: [Device: status = active; category = Software; type = XDok](Device-XDokExampleDevice.md)

> **diagnosis****sequence**: 1**diagnosis**: [Condition Fraktur der Patella](Condition-PJ2Condition1.md)**onAdmission**: Unknown

> **diagnosis****sequence**: 2**diagnosis**: [Condition Sonstige Ursachen exogener Noxen, nicht näher bezeichnet](Condition-PJ2Condition2.md)**onAdmission**: Unknown

> **procedure****Medizinische Leistung - Abrechnungsrelevanz**: [Abrechnungsrelevanz der medizinischen Leistung: J](CodeSystem-AbrechnungsRelevanzCS.md#AbrechnungsRelevanzCS-J) (Ja (Die Leistung ist bei der Bepunktung zu berücksichtigen.))**sequence**: 1**procedure**: [Procedure Physiotherapie im Rahmen eines stationären Aufenthaltes (LE=je Aufenthalt)](Procedure-PJ2Procedure1.md)

> **procedure****Medizinische Leistung - Abrechnungsrelevanz**: [Abrechnungsrelevanz der medizinischen Leistung: J](CodeSystem-AbrechnungsRelevanzCS.md#AbrechnungsRelevanzCS-J) (Ja (Die Leistung ist bei der Bepunktung zu berücksichtigen.))**sequence**: 2**procedure**: [Procedure Polysomnographie im Schlaflabor (LE=je Behandlungstag)](Procedure-PJ2Procedure2.md)

### Insurances

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Sequence** | **Focal** | **Coverage** |
| * | 1 | true | [Coverage: identifier = urn:oid:1.2.40.0.10.1.4.3.9.1#FJK5MCDPMRCY; status = active; kind = insurance](Coverage-PJ2Coverage.md) |

> **item****sequence**: 1**category**: Punkte Belagsdauerausreißer nach unten – Leistungskomponente**quantity**: 0

> **item****sequence**: 2**category**: Punkte Belagsdauerausreißer nach unten – Tageskomponente**quantity**: 0

> **item****sequence**: 3**category**: Zusatzpunkte Belagsdauerausreißer nach oben**quantity**: 0

> **item****sequence**: 4**category**: Zusatzpunkte Intensiv**quantity**: 0

> **item****sequence**: 5**category**: Zusatzpunkte Mehrfachleistungen**quantity**: 0

> **item****sequence**: 6**category**: Punkte spezieller Bereiche (tageweise)**quantity**: 0

> **item****sequence**: 7**category**: Punkte total**quantity**: 1384

> **item****sequence**: 8**category**: Leistungskomponente/Leistungspunkte**quantity**: 62

> **item****sequence**: 9**category**: Tageskomponente/Kontaktpunktet**quantity**: 1322



## Resource Content

```json
{
  "resourceType" : "Claim",
  "id" : "PJ2LKFRequest1",
  "meta" : {
    "profile" : ["https://elga.moped.at/StructureDefinition/MopedLKFRequest"]
  },
  "extension" : [{
    "url" : "https://elga.moped.at/StructureDefinition/moped-ext-diagnoseKnoten",
    "valueCoding" : {
      "system" : "https://elga.moped.at/CodeSystem/LKFAbrechnungsKnotenCS",
      "code" : "C"
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
    "reference" : "Patient/PJ2Patient"
  },
  "created" : "2025-02-24",
  "insurer" : {
    "reference" : "Organization/SV14"
  },
  "provider" : {
    "reference" : "Organization/OrganizationKrankenhausRied"
  },
  "encounter" : [{
    "reference" : "Encounter/PJ2Encounter"
  },
  {
    "reference" : "Encounter/PJ2TransferEncounter5"
  }],
  "diagnosisRelatedGroup" : {
    "coding" : [{
      "system" : "https://elga.moped.at/CodeSystem/LKFHauptdiagnosegruppenCS",
      "code" : "HDG15.03"
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
    "valueString" : "1234"
  },
  {
    "sequence" : 2,
    "category" : {
      "coding" : [{
        "system" : "https://elga.moped.at/CodeSystem/ClaimSupportingInformationCategoryCS",
        "code" : "ENDG"
      }]
    },
    "valueBoolean" : false
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
      "reference" : "Condition/PJ2Condition1"
    },
    "onAdmission" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/ex-diagnosis-on-admission",
        "code" : "unknown"
      }]
    }
  },
  {
    "sequence" : 2,
    "diagnosisReference" : {
      "reference" : "Condition/PJ2Condition2"
    },
    "onAdmission" : {
      "coding" : [{
        "system" : "http://terminology.hl7.org/CodeSystem/ex-diagnosis-on-admission",
        "code" : "unknown"
      }]
    }
  }],
  "procedure" : [{
    "extension" : [{
      "url" : "https://elga.moped.at/StructureDefinition/moped-ext-AbrechnungsRelevanz",
      "valueCoding" : {
        "system" : "https://elga.moped.at/CodeSystem/AbrechnungsRelevanzCS",
        "code" : "J"
      }
    }],
    "sequence" : 1,
    "procedureReference" : {
      "reference" : "Procedure/PJ2Procedure1"
    }
  },
  {
    "extension" : [{
      "url" : "https://elga.moped.at/StructureDefinition/moped-ext-AbrechnungsRelevanz",
      "valueCoding" : {
        "system" : "https://elga.moped.at/CodeSystem/AbrechnungsRelevanzCS",
        "code" : "J"
      }
    }],
    "sequence" : 2,
    "procedureReference" : {
      "reference" : "Procedure/PJ2Procedure2"
    }
  }],
  "insurance" : [{
    "sequence" : 1,
    "focal" : true,
    "coverage" : {
      "reference" : "Coverage/PJ2Coverage"
    }
  }],
  "item" : [{
    "sequence" : 1,
    "category" : {
      "coding" : [{
        "system" : "https://elga.moped.at/CodeSystem/MopedClaimItemCategoryCS",
        "code" : "SCULK"
      }]
    },
    "quantity" : {
      "value" : 0
    }
  },
  {
    "sequence" : 2,
    "category" : {
      "coding" : [{
        "system" : "https://elga.moped.at/CodeSystem/MopedClaimItemCategoryCS",
        "code" : "SCUTK"
      }]
    },
    "quantity" : {
      "value" : 0
    }
  },
  {
    "sequence" : 3,
    "category" : {
      "coding" : [{
        "system" : "https://elga.moped.at/CodeSystem/MopedClaimItemCategoryCS",
        "code" : "BDZU"
      }]
    },
    "quantity" : {
      "value" : 0
    }
  },
  {
    "sequence" : 4,
    "category" : {
      "coding" : [{
        "system" : "https://elga.moped.at/CodeSystem/MopedClaimItemCategoryCS",
        "code" : "INTZU"
      }]
    },
    "quantity" : {
      "value" : 0
    }
  },
  {
    "sequence" : 5,
    "category" : {
      "coding" : [{
        "system" : "https://elga.moped.at/CodeSystem/MopedClaimItemCategoryCS",
        "code" : "MELZU"
      }]
    },
    "quantity" : {
      "value" : 0
    }
  },
  {
    "sequence" : 6,
    "category" : {
      "coding" : [{
        "system" : "https://elga.moped.at/CodeSystem/MopedClaimItemCategoryCS",
        "code" : "SCSPEZ"
      }]
    },
    "quantity" : {
      "value" : 0
    }
  },
  {
    "sequence" : 7,
    "category" : {
      "coding" : [{
        "system" : "https://elga.moped.at/CodeSystem/MopedClaimItemCategoryCS",
        "code" : "SCGES"
      }]
    },
    "quantity" : {
      "value" : 1384
    }
  },
  {
    "sequence" : 8,
    "category" : {
      "coding" : [{
        "system" : "https://elga.moped.at/CodeSystem/MopedClaimItemCategoryCS",
        "code" : "LDFPLK"
      }]
    },
    "quantity" : {
      "value" : 62
    }
  },
  {
    "sequence" : 9,
    "category" : {
      "coding" : [{
        "system" : "https://elga.moped.at/CodeSystem/MopedClaimItemCategoryCS",
        "code" : "LDFPTK"
      }]
    },
    "quantity" : {
      "value" : 1322
    }
  }]
}

```
