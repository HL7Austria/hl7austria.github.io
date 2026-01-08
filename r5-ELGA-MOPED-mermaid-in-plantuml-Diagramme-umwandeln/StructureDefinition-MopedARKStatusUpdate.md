# ELGA.MOPED\MOPED ARK Status Update - PaymentReconciliation - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MOPED ARK Status Update - PaymentReconciliation**

## Resource Profile: MOPED ARK Status Update - PaymentReconciliation 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/MopedARKStatusUpdate | *Version*:0.1.0 | |
| Draft as of 2025-12-19 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MopedARKStatusUpdate |

 
MOPED Profil für Statusupdates zur Ausländerverrechnung oder zum Regress 

**Usages:**

* Use this Profile: [MOPED Antworten Bundle SV](StructureDefinition-MopedAntwortenBundleSV.md)
* Refer to this Profile: [MOPED Composition](StructureDefinition-MopedComposition.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/MopedARKStatusUpdate)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MopedARKStatusUpdate.csv), [Excel](StructureDefinition-MopedARKStatusUpdate.xlsx), [Schematron](StructureDefinition-MopedARKStatusUpdate.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MopedARKStatusUpdate",
  "url" : "https://elga.moped.at/StructureDefinition/MopedARKStatusUpdate",
  "version" : "0.1.0",
  "name" : "MopedARKStatusUpdate",
  "title" : "MOPED ARK Status Update - PaymentReconciliation",
  "status" : "draft",
  "date" : "2025-12-19T13:11:40+00:00",
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
  "description" : "MOPED Profil für Statusupdates zur Ausländerverrechnung oder zum Regress",
  "fhirVersion" : "5.0.0",
  "kind" : "resource",
  "abstract" : false,
  "type" : "PaymentReconciliation",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/PaymentReconciliation",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "PaymentReconciliation",
        "path" : "PaymentReconciliation"
      },
      {
        "id" : "PaymentReconciliation.extension",
        "path" : "PaymentReconciliation.extension",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "url"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "PaymentReconciliation.extension:Zahlungsprozentsatz",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedSVActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "PaymentReconciliation.extension",
        "sliceName" : "Zahlungsprozentsatz",
        "short" : "KaOrg: Prozentsatz der Zahlung",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://elga.moped.at/StructureDefinition/moped-ext-PaymentPercentage"
            ]
          }
        ]
      },
      {
        "id" : "PaymentReconciliation.referenceNumber",
        "path" : "PaymentReconciliation.referenceNumber",
        "short" : "Zahlungsidentifikation"
      },
      {
        "id" : "PaymentReconciliation.amount.currency",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedSVActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "PaymentReconciliation.amount.currency",
        "patternCode" : "EUR"
      },
      {
        "id" : "PaymentReconciliation.allocation",
        "path" : "PaymentReconciliation.allocation",
        "min" : 1
      },
      {
        "id" : "PaymentReconciliation.allocation.extension",
        "path" : "PaymentReconciliation.allocation.extension",
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
        "id" : "PaymentReconciliation.allocation.extension:KeineZahlungGrund",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedSVActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "PaymentReconciliation.allocation.extension",
        "sliceName" : "KeineZahlungGrund",
        "short" : "KaOrg: Grund, warum keine Zahlung erfolgte",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://elga.moped.at/StructureDefinition/moped-ext-ReasonForNonPayment"
            ]
          }
        ]
      },
      {
        "id" : "PaymentReconciliation.allocation.extension:Zahlungskennzeichen",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedSVActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "PaymentReconciliation.allocation.extension",
        "sliceName" : "Zahlungskennzeichen",
        "short" : "KaOrg: Zahlungskennzeichen Regress",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://elga.moped.at/StructureDefinition/moped-ext-Zahlungskennzeichen"
            ]
          }
        ]
      },
      {
        "id" : "PaymentReconciliation.allocation.target",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedSVActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "PaymentReconciliation.allocation.target",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : ["https://elga.moped.at/StructureDefinition/MopedARKRequest"]
          }
        ]
      },
      {
        "id" : "PaymentReconciliation.allocation.type",
        "extension" : [
          {
            "extension" : [
              {
                "url" : "code",
                "valueCode" : "SHALL:populate"
              },
              {
                "url" : "actor",
                "valueCanonical" : "https://elga.moped.at/ActorDefinition/MopedSVActor"
              }
            ],
            "url" : "http://hl7.org/fhir/StructureDefinition/obligation"
          }
        ],
        "path" : "PaymentReconciliation.allocation.type",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://elga.moped.at/ValueSet/MopedPaymentTypesVS"
        }
      }
    ]
  }
}

```
