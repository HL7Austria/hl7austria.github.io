# ELGA.MOPED\MOPED TransferEncounter - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MOPED TransferEncounter**

## Resource Profile: MOPED TransferEncounter 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/MopedTransferEncounter | *Version*:0.1.0 | |
| Draft as of 2026-01-26 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MopedTransferEncounter |

 
MOPED Profil der Encounter Ressource für die Verlegung innerhalb oder zwischen Krankenanstalten 

**Usages:**

* Derived from this Profile: [MOPED TransferEncounter Ambulant](StructureDefinition-MopedTransferEncounterA.md) and [MOPED TransferEncounter Stationär](StructureDefinition-MopedTransferEncounterS.md)
* Use this Profile: [MOPED Input Bundle KH](StructureDefinition-MopedInputBundleKH.md)
* Refer to this Profile: [MOPED LKFRequest](StructureDefinition-MopedLKFRequest.md) and [MOPED VAERequest](StructureDefinition-MopedVAERequest.md)
* Examples for this Profile: [Encounter/PJ1TransferEncounter1](Encounter-PJ1TransferEncounter1.md), [Encounter/PJ1TransferEncounter1Aufnahme](Encounter-PJ1TransferEncounter1Aufnahme.md), [Encounter/PJ2TransferEncounter1](Encounter-PJ2TransferEncounter1.md), [Encounter/PJ2TransferEncounter2](Encounter-PJ2TransferEncounter2.md)... Show 5 more, [Encounter/PJ2TransferEncounter3](Encounter-PJ2TransferEncounter3.md), [Encounter/PJ2TransferEncounter4](Encounter-PJ2TransferEncounter4.md), [Encounter/PJ2TransferEncounter5](Encounter-PJ2TransferEncounter5.md), [Encounter/TransferEncounter42.1](Encounter-TransferEncounter42.1.md) and [Encounter/TransferEncounter42.2](Encounter-TransferEncounter42.2.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/MopedTransferEncounter)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MopedTransferEncounter.csv), [Excel](StructureDefinition-MopedTransferEncounter.xlsx), [Schematron](StructureDefinition-MopedTransferEncounter.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MopedTransferEncounter",
  "url" : "https://elga.moped.at/StructureDefinition/MopedTransferEncounter",
  "version" : "0.1.0",
  "name" : "MopedTransferEncounter",
  "title" : "MOPED TransferEncounter",
  "status" : "draft",
  "date" : "2026-01-26T07:03:23+00:00",
  "publisher" : "ELGA GmbH",
  "contact" : [
    {
      "name" : "ELGA GmbH",
      "telecom" : [
        {
          "system" : "url",
          "value" : "https://elga.gv.at"
        }
      ]
    }
  ],
  "description" : "MOPED Profil der Encounter Ressource für die Verlegung innerhalb oder zwischen Krankenanstalten",
  "fhirVersion" : "5.0.0",
  "mapping" : [
    {
      "identity" : "LKF",
      "uri" : "https://elga.moped.at/mapping/LKF",
      "name" : "LKF"
    },
    {
      "identity" : "KaOrg",
      "uri" : "https://elga.moped.at/mapping/KaOrg",
      "name" : "KaOrg"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Encounter",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/Encounter",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Encounter.status",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          },
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:handle"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedDeviceActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Encounter.status"
      },
      {
        "id" : "Encounter.type",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Encounter.type",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://elga.moped.at/CodeSystem/MopedEncounterTypesCS",
              "code" : "TENC"
            }
          ]
        }
      },
      {
        "id" : "Encounter.serviceType",
        "path" : "Encounter.serviceType",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "profile",
              "path" : "reference.resolve()"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Encounter.serviceType:MopedServiceType",
        "path" : "Encounter.serviceType",
        "sliceName" : "MopedServiceType",
        "short" : "LKF: Hauptkostenstelle – Funktionscode/Fachgebiet; KaOrg: Funktionscode der Abteilung lt. LKF; KaOrg: Funktionssubcode der Abteilung lt. LKF; KaOrg: Abteilung - Funktionscode der Ambulanz; KaOrg: Abteilung - Funktionssubcode der Ambulanz",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "CodeableReference",
            "targetProfile" : [
              "https://elga.moped.at/StructureDefinition/MopedKHOrganisationseinheit"
            ]
          }
        ]
      },
      {
        "id" : "Encounter.serviceType:MopedServiceType.reference",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Encounter.serviceType.reference",
        "mapping" : [
          {
            "identity" : "LKF",
            "map" : "Hauptkostenstelle – Funktionscode/Fachgebiet"
          },
          {
            "identity" : "KaOrg",
            "map" : "Funktionscode der Abteilung lt. LKF"
          },
          {
            "identity" : "KaOrg",
            "map" : "Funktionssubcode der Abteilung lt. LKF"
          },
          {
            "identity" : "KaOrg",
            "map" : "Abteilung - Funktionscode der Ambulanz"
          },
          {
            "identity" : "KaOrg",
            "map" : "Abteilung - Subcode"
          },
          {
            "identity" : "KaOrg",
            "map" : "Abteilung - Funktionssubcode der Ambulanz"
          }
        ]
      },
      {
        "id" : "Encounter.subject",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:handle"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedDeviceActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Encounter.subject",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["https://elga.moped.at/StructureDefinition/MopedPatient"]
          }
        ]
      },
      {
        "id" : "Encounter.subjectStatus",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Encounter.subjectStatus",
        "short" : "LKF: Physische Anwesenheit",
        "mapping" : [
          {
            "identity" : "LKF",
            "map" : "Physische Anwesenheit"
          }
        ]
      },
      {
        "id" : "Encounter.partOf",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:handle"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedDeviceActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Encounter.partOf",
        "min" : 1,
        "type" : [
          {
            "extension" : [
              {
                "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy",
                "valueBoolean" : true
              }
            ],
            "code" : "Reference",
            "targetProfile" : ["https://elga.moped.at/StructureDefinition/MopedEncounter"]
          }
        ]
      },
      {
        "id" : "Encounter.participant",
        "path" : "Encounter.participant",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "type"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "Encounter.participant:FachlichZustaendigeOrganisationseinheit",
        "path" : "Encounter.participant",
        "sliceName" : "FachlichZustaendigeOrganisationseinheit",
        "short" : "LKF: Hauptkostenstelle – Fachlicher Funktionscode",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Encounter.participant:FachlichZustaendigeOrganisationseinheit.type",
        "path" : "Encounter.participant.type",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://elga.moped.at/CodeSystem/MopedEncounterParticipantTypesCS",
              "code" : "fachlich"
            }
          ]
        }
      },
      {
        "id" : "Encounter.participant:FachlichZustaendigeOrganisationseinheit.actor",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Encounter.participant.actor",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://elga.moped.at/StructureDefinition/MopedKHOrganisationseinheit"
            ]
          }
        ],
        "mapping" : [
          {
            "identity" : "LKF",
            "map" : "Hauptkostenstelle – Fachlicher Funktionscode"
          }
        ]
      },
      {
        "id" : "Encounter.participant:PflegerischZustaendigeOrganisationseinheit",
        "path" : "Encounter.participant",
        "sliceName" : "PflegerischZustaendigeOrganisationseinheit",
        "short" : "LKF: Hauptkostenstelle – Pflegerischer Funktionscode",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Encounter.participant:PflegerischZustaendigeOrganisationseinheit.type",
        "path" : "Encounter.participant.type",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://elga.moped.at/CodeSystem/MopedEncounterParticipantTypesCS",
              "code" : "pflegerisch"
            }
          ]
        }
      },
      {
        "id" : "Encounter.participant:PflegerischZustaendigeOrganisationseinheit.actor",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Encounter.participant.actor",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "https://elga.moped.at/StructureDefinition/MopedKHOrganisationseinheit"
            ]
          }
        ],
        "mapping" : [
          {
            "identity" : "LKF",
            "map" : "Hauptkostenstelle – Pflegerischer Funktionscode"
          }
        ]
      },
      {
        "id" : "Encounter.actualPeriod",
        "path" : "Encounter.actualPeriod",
        "short" : "LKF: Zugangs- und Abgangsdatum"
      },
      {
        "id" : "Encounter.actualPeriod.start",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Encounter.actualPeriod.start",
        "short" : "LKF: Hauptkostenstelle/Fachgebiet – Zugangsdatum/Kontaktdatum; LKF: Hauptkostenstelle/Fachgebiet – Zugangsuhrzeit/Kontaktuhrzeit",
        "min" : 1,
        "mapping" : [
          {
            "identity" : "LKF",
            "map" : "Hauptkostenstelle/Fachgebiet – Zugangsdatum/Kontaktdatum"
          },
          {
            "identity" : "LKF",
            "map" : "Hauptkostenstelle/Fachgebiet – Zugangsuhrzeit/Kontaktuhrzeit"
          }
        ]
      },
      {
        "id" : "Encounter.actualPeriod.end",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Encounter.actualPeriod.end",
        "short" : "LKF: Hauptkostenstelle – Abgangsdatum; LKF: Hauptkostenstelle – Abgangsuhrzeit",
        "mapping" : [
          {
            "identity" : "LKF",
            "map" : "Hauptkostenstelle – Abgangsdatum"
          },
          {
            "identity" : "LKF",
            "map" : "Hauptkostenstelle – Abgangsuhrzeit"
          }
        ]
      },
      {
        "id" : "Encounter.admission.extension",
        "path" : "Encounter.admission.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Encounter.admission.extension:Altersgruppe",
        "path" : "Encounter.admission.extension",
        "sliceName" : "Altersgruppe",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://elga.moped.at/StructureDefinition/moped-ext-altersgruppe"
            ]
          }
        ],
        "mustSupport" : true
      },
      {
        "id" : "Encounter.admission.extension:Altersgruppe.extension",
        "path" : "Encounter.admission.extension.extension",
        "min" : 1
      },
      {
        "id" : "Encounter.admission.extension:Altersgruppe.extension:beiZugang",
        "path" : "Encounter.admission.extension.extension",
        "sliceName" : "beiZugang",
        "min" : 1
      },
      {
        "id" : "Encounter.admission.extension:Altersgruppe.extension:beiZugang.value[x]",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Encounter.admission.extension.extension.value[x]",
        "short" : "LKF: Altersgruppe bei Zugang/Kontakt",
        "min" : 1,
        "mapping" : [
          {
            "identity" : "LKF",
            "map" : "Altersgruppe bei Zugang/Kontakt"
          }
        ]
      },
      {
        "id" : "Encounter.admission.dischargeDisposition",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedKHActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "Encounter.admission.dischargeDisposition",
        "short" : "LKF: Hauptkostenstelle – Abgangsart",
        "mapping" : [
          {
            "identity" : "LKF",
            "map" : "Hauptkostenstelle – Abgangsart"
          }
        ]
      }
    ]
  }
}

```
