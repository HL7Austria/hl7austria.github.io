# ELGA.MOPED\MOPED Encounter - FHIR® v5.0.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **MOPED Encounter**

## Resource Profile: MOPED Encounter 

| | | |
| :--- | :--- | :--- |
| *Official URL*:https://elga.moped.at/StructureDefinition/MopedEncounter | *Version*:0.1.0 | |
| Draft as of 2025-10-15 | *Responsible:*[ELGA GmbH](https://elga.gv.at) | *Computable Name*:MopedEncounter |

 
MOPED Profil der Encounter Ressource für die Krankenanstaltenaufnahme und Entlassung 

**Usages:**

* Derived from this Profile: [MOPED Encounter Ambulant](StructureDefinition-MopedEncounterA.md), [MOPED Encounter Bund](StructureDefinition-MopedEncounterBund.md), [MOPED Encounter LGF](StructureDefinition-MopedEncounterLGF.md), [MOPED Encounter Stationär](StructureDefinition-MopedEncounterS.md) and [MOPED Encounter SV](StructureDefinition-MopedEncounterSV.md)
* Use this Profile: [MOPED Update Bundle KH](StructureDefinition-MopedUpdateBundleKH.md)
* Refer to this Profile: [MOPED ARKRequest](StructureDefinition-MopedARKRequest.md), [MOPED Condition](StructureDefinition-MopedCondition.md), [MOPED LKFRequest](StructureDefinition-MopedLKFRequest.md), [MOPED Procedure](StructureDefinition-MopedProcedure.md)...Show 3 more,[Moped QuestionnaireResponse](StructureDefinition-MopedQuestionnaireResponse.md),[MOPED TransferEncounter](StructureDefinition-MopedTransferEncounter.md)and[MOPED VAERequest](StructureDefinition-MopedVAERequest.md)
* Examples for this Profile: [Encounter/Encounter42](Encounter-Encounter42.md), [Encounter/PJ1Encounter](Encounter-PJ1Encounter.md), [Encounter/PJ1EncounterAufnahme](Encounter-PJ1EncounterAufnahme.md), [Encounter/PJ1EncounterBasis](Encounter-PJ1EncounterBasis.md)...Show 3 more,[Encounter/PJ1EncounterLGF](Encounter-PJ1EncounterLGF.md),[Encounter/PJ1EncounterSV](Encounter-PJ1EncounterSV.md)and[Encounter/PJ2Encounter](Encounter-PJ2Encounter.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/elga.moped|current/StructureDefinition/MopedEncounter)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-MopedEncounter.csv), [Excel](StructureDefinition-MopedEncounter.xlsx), [Schematron](StructureDefinition-MopedEncounter.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "MopedEncounter",
  "url" : "https://elga.moped.at/StructureDefinition/MopedEncounter",
  "version" : "0.1.0",
  "name" : "MopedEncounter",
  "title" : "MOPED Encounter",
  "status" : "draft",
  "date" : "2025-10-15T12:16:02+00:00",
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
  "description" : "MOPED Profil der Encounter Ressource für die Krankenanstaltenaufnahme und Entlassung",
  "fhirVersion" : "5.0.0",
  "mapping" : [
    {
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 V2 Mapping"
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
        "id" : "Encounter.extension",
        "path" : "Encounter.extension",
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
        "id" : "Encounter.extension:Unfalldatum",
        "path" : "Encounter.extension",
        "sliceName" : "Unfalldatum",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://elga.moped.at/StructureDefinition/moped-ext-unfalldatum"
            ]
          }
        ]
      },
      {
        "id" : "Encounter.extension:Altersgruppe",
        "path" : "Encounter.extension",
        "sliceName" : "Altersgruppe",
        "short" : "Altersgruppe bei Entlassung/Kontakt",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://elga.moped.at/StructureDefinition/moped-ext-altersgruppe"
            ]
          }
        ]
      },
      {
        "id" : "Encounter.identifier",
        "path" : "Encounter.identifier",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "type.coding.code"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "Encounter.identifier:Aufnahmezahl",
        "path" : "Encounter.identifier",
        "sliceName" : "Aufnahmezahl",
        "short" : "Aufnahmezahl",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Encounter.identifier:Aufnahmezahl.type",
        "path" : "Encounter.identifier.type",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://terminology.hl7.org/ValueSet/v2-0203"
        }
      },
      {
        "id" : "Encounter.identifier:Aufnahmezahl.type.coding.code",
        "path" : "Encounter.identifier.type.coding.code",
        "min" : 1,
        "fixedCode" : "VN"
      },
      {
        "id" : "Encounter.identifier:Aufnahmezahl.system",
        "path" : "Encounter.identifier.system",
        "min" : 1
      },
      {
        "id" : "Encounter.identifier:Aufnahmezahl.assigner",
        "path" : "Encounter.identifier.assigner",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-organization"
            ]
          }
        ]
      },
      {
        "id" : "Encounter.identifier:DatensatzID",
        "path" : "Encounter.identifier",
        "sliceName" : "DatensatzID",
        "short" : "Datensatz-ID: SHA-256 verschlüsselte Aufnahmezahl",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Encounter.identifier:DatensatzID.type",
        "path" : "Encounter.identifier.type",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://terminology.hl7.org/ValueSet/v2-0203"
        }
      },
      {
        "id" : "Encounter.identifier:DatensatzID.type.coding.code",
        "path" : "Encounter.identifier.type.coding.code",
        "min" : 1,
        "fixedCode" : "ANON"
      },
      {
        "id" : "Encounter.status",
        "path" : "Encounter.status",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://elga.moped.at/ValueSet/MopedEncounterStatusVS"
        }
      },
      {
        "id" : "Encounter.class",
        "path" : "Encounter.class",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "coding.system"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        },
        "min" : 1
      },
      {
        "id" : "Encounter.class:Behandlungsart",
        "path" : "Encounter.class",
        "sliceName" : "Behandlungsart",
        "short" : "Behandlungsart",
        "min" : 1,
        "max" : "1",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://elga.moped.at/ValueSet/BehandlungsartVS"
        }
      },
      {
        "id" : "Encounter.class:Behandlungsart.coding.system",
        "path" : "Encounter.class.coding.system",
        "min" : 1,
        "patternUri" : "https://elga.moped.at/CodeSystem/BehandlungsartCS"
      },
      {
        "id" : "Encounter.class:Aufnahmeart2",
        "path" : "Encounter.class",
        "sliceName" : "Aufnahmeart2",
        "short" : "Aufnahme-/Zugangsart 2",
        "min" : 0,
        "max" : "1",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://elga.moped.at/ValueSet/Aufnahmeart2VS"
        }
      },
      {
        "id" : "Encounter.class:Aufnahmeart2.coding.system",
        "path" : "Encounter.class.coding.system",
        "min" : 1,
        "patternUri" : "https://elga.moped.at/CodeSystem/Aufnahmeart2CS"
      },
      {
        "id" : "Encounter.type",
        "path" : "Encounter.type",
        "min" : 1,
        "patternCodeableConcept" : {
          "coding" : [
            {
              "system" : "https://elga.moped.at/CodeSystem/MopedEncounterTypesCS",
              "code" : "ENC"
            }
          ]
        }
      },
      {
        "id" : "Encounter.subject",
        "path" : "Encounter.subject",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-patient"
            ]
          }
        ]
      },
      {
        "id" : "Encounter.serviceProvider",
        "path" : "Encounter.serviceProvider",
        "min" : 1,
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://hl7.at/fhir/HL7ATCoreProfiles/5.0.0/StructureDefinition/at-core-organization"
            ]
          }
        ]
      },
      {
        "id" : "Encounter.actualPeriod",
        "path" : "Encounter.actualPeriod",
        "short" : "Aufnahme- und Entlassungsdatum",
        "min" : 1
      },
      {
        "id" : "Encounter.actualPeriod.start",
        "path" : "Encounter.actualPeriod.start",
        "short" : "Aufnahme-/Kontaktdatum und Uhrzeit",
        "min" : 1
      },
      {
        "id" : "Encounter.actualPeriod.end",
        "path" : "Encounter.actualPeriod.end",
        "short" : "Entlassungsdatum und Uhrzeit"
      },
      {
        "id" : "Encounter.reason",
        "path" : "Encounter.reason",
        "slicing" : {
          "discriminator" : [
            {
              "type" : "value",
              "path" : "use.coding.code"
            }
          ],
          "ordered" : false,
          "rules" : "open"
        }
      },
      {
        "id" : "Encounter.reason:Ursache",
        "path" : "Encounter.reason",
        "sliceName" : "Ursache",
        "short" : "Ursache für Behandlung",
        "min" : 0,
        "max" : "1"
      },
      {
        "id" : "Encounter.reason:Ursache.use",
        "path" : "Encounter.reason.use",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://hl7.org/fhir/ValueSet/encounter-reason-use"
        }
      },
      {
        "id" : "Encounter.reason:Ursache.use.coding.code",
        "path" : "Encounter.reason.use.coding.code",
        "min" : 1,
        "fixedCode" : "RV"
      },
      {
        "id" : "Encounter.reason:Ursache.value",
        "path" : "Encounter.reason.value",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://elga.moped.at/ValueSet/UrsacheVS"
        }
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
        }
      },
      {
        "id" : "Encounter.admission.extension:aufnahmeart",
        "path" : "Encounter.admission.extension",
        "sliceName" : "aufnahmeart",
        "short" : "Aufnahme-/Zugangsart 1",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "https://elga.moped.at/StructureDefinition/moped-ext-aufnahmeart"
            ]
          }
        ]
      },
      {
        "id" : "Encounter.admission.extension:Transportart",
        "path" : "Encounter.admission.extension",
        "sliceName" : "Transportart",
        "short" : "Transportart",
        "min" : 0,
        "max" : "1",
        "type" : [
          {
            "code" : "Extension",
            "profile" : [
              "http://hl7.org/fhir/StructureDefinition/encounter-modeOfArrival"
            ]
          }
        ]
      },
      {
        "id" : "Encounter.admission.extension:Transportart.value[x]",
        "path" : "Encounter.admission.extension.value[x]",
        "binding" : {
          "strength" : "required",
          "valueSet" : "https://elga.moped.at/ValueSet/TransportartVS"
        }
      },
      {
        "id" : "Encounter.admission.dischargeDisposition",
        "path" : "Encounter.admission.dischargeDisposition",
        "short" : "Entlassungs-/Abgangsart"
      }
    ]
  }
}

```
